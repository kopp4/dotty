#!/usr/bin/env python3
import argparse
import os
import re

from multiprocessing import Pool
from pathlib import Path
from subprocess import run
from tqdm.contrib.concurrent import process_map


def convert(args):
    with open(os.devnull, 'w') as devnull:
        run(args, stdout=devnull, stderr=devnull)


def main(args):
    with open(args.input) as f_in, open(args.output, 'w') as f_out, open(os.devnull, 'w') as devnull:
        convert_args = []
        all_filenames = set()
        for line in f_in:
            parts = line.split('\t')
            for i, part in enumerate(parts):
                cur_filenames = []
                # format: [sound:filename.ogg]
                for m in re.finditer('sound:', part):
                    pos = m.start()
                    filename = part[pos + len('sound:') : part.find('.ogg', pos)]
                    cur_filenames.append(filename)
                if len(cur_filenames) == 0:  # not an audio field
                    continue
                for filename in cur_filenames:
                    if filename in all_filenames:
                        continue
                    all_filenames.add(filename)
                    filename_ogg = filename + '.ogg'
                    filename_mp3 = filename + '.mp3'
                    if (args.media_folder / filename_mp3).exists():
                        continue
                    convert_args.append([
                        'ffmpeg',
                        '-i',
                        args.media_folder / filename_ogg,
                        args.media_folder / filename_mp3,
                    ])
                parts[i] = ''.join(map(lambda x: f'[sound:{x}.mp3]', cur_filenames))
            f_out.write('\t'.join(parts))
    process_map(convert, convert_args, max_workers=args.processes, chunksize=1)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', type=Path, required=True, help='Path to the exported txt deck')
    parser.add_argument('-m', '--media-folder', type=Path, required=True, help='Path to collection.media')
    parser.add_argument('-o', '--output', type=Path, required=True, help='Where to store the result txt')
    parser.add_argument('-p', '--processes', type=int, default=4, help='How many processes to spawn')
    main(parser.parse_args())
