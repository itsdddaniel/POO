#-*- coding: utf-8 -*-

import zeep,sys

class WebService:
    def __init__(self): self.url = None;
    def getParameters(self):
        params = sys.argv[1:]
        if len(params) !=2: quit("Error. No parameters.")
        self.data,self.width = params
        return self
    def call(self):
        wsdl = "http://localhost:8080/Tarea1JSP2/services/ImageDAO?wsdl"
        client = zeep.Client(wsdl=wsdl)
        self.url = client.service.create(self.data,self.width)
        return self

print((WebService()).getParameters().call().url)
