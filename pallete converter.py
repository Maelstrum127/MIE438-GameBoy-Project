import sys
file_to_conv = sys.argv
first_def = True
i = 0

with open(file_to_conv[1], "r") as f, \
    open("output.txt", "w") as out_file:
    out_file.truncate(0)
    out_file.write("const UWORD backgroundpalette[] = {\n   ")
    for line in f.readlines():
        words = line.split(" ")
        if words[0] == "#define":
            if first_def:
                first_def = False
            else:
                if words[1][-9:-6] == "CGB":
                    if i == 4:
                        out_file.write("\n")
                        i = 0
                        out_file.write("   ")
                    out_file.write(" " + words[1] + ",")
                    i += 1
    out_file.write("\n};")

