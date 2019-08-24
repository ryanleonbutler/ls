import os


def my_ls(path):
    """
    Main function for ls
    """

    for root, dirs, files in os.walk(path):
        for file in files:
            print(file)


if __name__ == "__main__":

    dir_path = os.path.dirname(os.path.realpath(__file__))
    my_ls(dir_path)
