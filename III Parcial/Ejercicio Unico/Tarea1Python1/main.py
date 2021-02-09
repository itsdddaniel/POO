import re, sys
from PIL import Image

class ImageManager:
    def __init__(self): pass
    def toByte(self,pixel):
        if re.match(r"1",str(pixel)) : return [0,0,0]
        return [255,255,255]
    
    def create(self,pixels,width):
        if not pixels or not width: quit("Nothing to process.")
        imgBytes,width = [], int(width)
        for i in pixels: imgBytes += self.toByte(i)
        return Image.frombytes("RGB",(width,width), bytes(imgBytes))

filename, width, pixels = sys.argv[1:] if len(sys.argv[1:]) == 3 else [None,None,None]
(ImageManager()).create(pixels,width).save(filename)