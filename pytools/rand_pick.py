#!/usr/bin/python

import sys
import random


if len(sys.argv) < 5:
    print "usage: %s file begin end picksum" %__file__
    exit(1)

filename = sys.argv[1]
begin = sys.argv[2]
end = sys.argv[3]
picksum = sys.argv[4]
print sorted(random.sample(range(begin,end,picksum)))
for i , line in enumerate(open(filename, "r")):
    if

