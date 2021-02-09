# -*- coding: utf-8 -*-

import sys
import re

class Process:
    def__init__(self): pass
    def toNumber(self,param):
        param = re.sub(r"\D+","",param)
        if re.match(r"\d+",param): return int(param)
        return 1
    def run(self,params):
        if len(params) !=2:
            quit("Error en la ejecucion de Python.")
        text = params[0]
        times = self.toNumber(params[1])
        print(("%s\n" % text)*times)
(Process()).run(sys.argv[1:]))