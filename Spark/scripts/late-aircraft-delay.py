from executer import execute
import sys

import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--times-file', help="File to save execution time")
    parser.add_argument(
        '--run-for', help="How many times to run", default=1)
    args = parser.parse_args()
    
    result = execute("LateAircraftDelay", args.times_file, args.run_for)
    sys.exit(result)