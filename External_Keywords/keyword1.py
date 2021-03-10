import os


def create_folder(folder_name):
    os.mkdir("E:\\" + folder_name)


def add_values(val1, val2):
    val3 = val1 + " " + val2
    return val3

print( add_values("aman","saini"))