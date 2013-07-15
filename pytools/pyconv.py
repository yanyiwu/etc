#!/usr/bin/python

import sys
if len(sys.argv) != 5:
    print "usage: %s enc_from enc_to infile outfile" %__file__
    print "example: %s utf-8 gbk infile outfile" %__file__
    exit(1)


enc_from = sys.argv[1]
enc_to = sys.argv[2]
infile = open(sys.argv[3],"r")
outfile = open(sys.argv[4],"w")
for i, line in enumerate(infile, "r"):
    try:
        outfile.write(line.decode(enc_from).encode(enc_to))
    except Exception as err:
        print >> sys.stderr, "line[%d] err[%s]" %(i, err)

infile.close()
outfile.close()
