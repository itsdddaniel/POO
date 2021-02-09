#Hacer el llamado del Python1 que crea la imagen a travez del WebService
data="$1"
width="$2"
python3 Tarea1Python2/pythonSOAPClient.py "$data" "$width" > Tarea1Python2/url.txt 
