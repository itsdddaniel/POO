#-*- coding: utf-8 -*-
import rep
number = input("")
number = re.sub(r"\D+","",number)
if len(number)==0: number=1
else: number = int(number)
print("Hola Mundo\n"*number)