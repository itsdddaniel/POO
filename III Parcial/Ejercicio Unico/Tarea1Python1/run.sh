dynamicLocalHostPath="/home/moises/Documentos/URSS/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ROOT"
python3 "$1/main.py" "$1/$2" $3 $4
cp "$1/$2" "$dynamicLocalHostPath"