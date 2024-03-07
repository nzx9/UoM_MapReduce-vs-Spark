from executer import execute
import sys
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--times-file', help="File to save execution time")
    args = parser.parse_args()
    
    result = execute("SecurityDelay",args.times_file)
    sys.exit(result)