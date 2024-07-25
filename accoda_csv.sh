#!/bin/bash

# Nome del file CSV di origine
input_file="demo_dataset.csv"
input_rows=$(cat $input_file | wc -l)
input_rows=$((input_rows - 1))

# Nome del file CSV di destinazione
output_file="large_dataset.csv"

# Numero di volte da accodare il file a se stesso
num_appends=130

# Crea (o svuota) il file di destinazione
> "$output_file"

# Copia l'intestazione nel file di destinazione
head -n 1 "$input_file" >> "$output_file"

# Copia il contenuto senza intestazione nel file di destinazione
tail -n +2 "$input_file" >> "$output_file"

num_appends=$((num_appends - 1))
# Accoda il file a se stesso il numero di volte specificato
for i in $(seq 1 $num_appends); do
    # Aggiungi i dati senza intestazione
    tail -n +2 "$input_file" >> "$output_file"
    
    # Mostra il progresso ogni 100 iterazioni
    if [ $((i % 100)) -eq 0 ]; then
        echo "$((i * input_rows)) righe accodate"
    fi
done

echo "Accodamento completato. File salvato in '$output_file'."
