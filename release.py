from pathlib import Path
import zipfile
import glob


class Writer:
    def __init__(self, zip_filename="package.zip"):
        self.zip_file = zipfile.ZipFile(Path("package.zip"), mode="w")

    def write_to_zip_file(self, entries):
        for p in entries:
            self.zip_file.write(p)


def zip_package(writer):
    # Get all files which should be included
    typst_files = glob.glob("./*.typ")
    typst_files.append("./typst.toml")
    typst_files.append("./LICENSE")
    typst_files.append("./README.md")
    writer.write_to_zip_file(typst_files)


if __name__ == "__main__":
    writer = Writer()
    zip_package(writer)
