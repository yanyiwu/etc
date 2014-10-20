#!/usr/bin/env python

import sys
import json

fmt = '<img src="/weedfs/%s/%s/%s"></img>'

#instr = open(sys.argv[1], "r").read()
instr = sys.stdin.read()
#print instr
#exit(1)

jsn = json.loads(instr)

fid1, fid2 = jsn["fid"].split(',')

print fmt %(fid1, fid2, jsn["fileName"])

