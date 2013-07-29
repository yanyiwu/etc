#!/usr/bin/python

import sys
import random


if len(sys.argv) < 5:
    print "usage: %s file begin end picksum" %__file__
    exit(1)

filename = sys.argv[1]
begin = int(sys.argv[2])
end = int(sys.argv[3])
picksum = int(sys.argv[4])
randlist = sorted(random.sample(range(begin,end), picksum))
for i , line in enumerate(open(filename, "r")):
    if randlist:
        if i == randlist[0]:
            print line.rstrip("\n")
            randlist.pop(0)
    else:
        break
