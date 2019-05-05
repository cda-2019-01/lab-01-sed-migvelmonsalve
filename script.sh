# Escriba su código aquí
sed 's/\//-/g' data.csv > out.1
sed 's/\;N/\;\\N/g' out.1 > out.2
sed 's/.*/\U&/g' out.2 > out.3
sed 's/\;\;/\;\\N\;/g' out.3 > out.4
sed 's/\;$/\;\\N/g' out.4 > out.5
sed 's/\,/\./g' out.5 > out.6
sed 's/\;/\,/g' out.6 > out.7
sed '/\\N/ d' out.7
