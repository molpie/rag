#!/bin/bash

# Nome del file di input
input_file="large_dataset_accumulated.csv"

# Nome del file di output per i dati modificati
modified_file="modified_dataset.csv"

# Nome del file di output per i numeri di telefono internazionali
phones_file="international_phones.txt"

# Controlla se il file di input esiste
if [ ! -f "$input_file" ]; then
  echo "Il file di input '$input_file' non esiste."
  exit 1
fi

# Sostituisci i doppi apici con apici singoli e salva il risultato in un file temporaneo
sed "s/\"/'/g" "$input_file" > "$modified_file"

# Estrai numeri di telefono con prefissi internazionali, gestendo i separatori "-"
grep -E '\+[0-9]{1,3}(-[0-9]+)*' "$modified_file" > "$phones_file"

echo "Operazione completata."
echo "File modificato salvato in '$modified_file'."
echo "Numeri di telefono internazionali salvati in '$phones_file'."
