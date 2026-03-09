from . from box_vm import BoxedVM as bxvm

vm = bxvm()

parser = argparse.ArgumentParser(description="boxedLANG interpreter")
parser.add_argument("file", help="path to the boxedLANG source file to run")
args = parser.parse_args()

def main():
    CODE = str(file.Path(os.path.expanduser(args.file)).read_text())
    vm.start(CODE, args.file)