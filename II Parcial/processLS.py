#-*- coding: utf-9 -*-
import sys
import re

class FileRegistry:
    def__init__(self):
        self.name=""
        self.size=0
        self.date=""

    def__str__(self):
        return ("File Name: %s\n\tFile Size: %s bytes\n\tFile Date: %s\n" % (self.name,self.size,self.date))

class ProcessLS:
    def__init__(self):
        self.textLines = []
        self.registries = []
    def read(self):
        self.textLines = []
        while True:
            text = sys.stdin.readline()    
            if text == '': break
            self.textLines.append(text)
        return self

    def process(self):
        self.registries = []
        for line in self.textLines:
            if re.match(r".+\d{2}:\d{2}.+",line):
                registry = FileRegistry()
                registry.name = re.split(r"\d{2}:\d{2}",line)[-1][:-1]
                registry.size = re.sub(r"\D+","",re.split(r" +",line)[4])
                registry.date = re.findall(r"\w{3} +\d{1,2} +\{2}:\d{2}",line)[0]
                self.registries.append(registry)
        return self

    def print(self):
        for i in self.registries:
            print(i)

ls = ProcessLS()
ls.read().process().print()