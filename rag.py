import csv
import random
from faker import Faker

# Inizializza il generatore di dati casuali
fake = Faker()

# Funzione per generare un numero di telefono
def generate_phone_number():
    if random.choice([True, False]):
        # Numero internazionale con prefisso "+"
        number_length = random.randint(11, 13)
        number = "+" + "".join([str(random.randint(0, 9)) for _ in range(number_length)])
        if len(number) > 10:
            # Aggiungi segni "-" per separare
            number = number[:4] + "-" + number[4:7] + "-" + number[7:]
        return number
    else:
        # Numero nazionale di 10 cifre
        number = "".join([str(random.randint(0, 9)) for _ in range(10)])
        if number.startswith("0"):
            # Aggiungi segni "-" dopo 4 cifre
            number = number[:4] + "-" + number[4:]
        else:
            # Aggiungi segni "-" dopo 3 cifre
            number = number[:3] + "-" + number[3:]
        return number

# Nome del file CSV da generare
output_file = 'demo_dataset.csv'

# Numero di righe da generare
num_rows = 100000

# Genera il file CSV
with open(output_file, 'w', newline='', encoding='utf-8') as csvfile:
    writer = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_ALL)
    
    # Scrive l'intestazione
    writer.writerow(['Cognome', 'Nome', 'Indirizzo', 'Citta', 'CAP', 'Numero di Telefono'])
    
    for i in range(num_rows):
        cognome = fake.last_name()
        nome = fake.first_name()
        indirizzo = fake.street_address()
        citta = fake.city()
        cap = fake.postcode()
        numero_telefono = generate_phone_number()
        
        # Scrive la riga con i campi correttamente racchiusi in doppi apici
        writer.writerow([cognome, nome, indirizzo, citta, cap, numero_telefono])
        
        # Mostra il progresso ogni 10000 righe
        if (i + 1) % 10000 == 0:
            print(f"{i + 1} righe generate")

print("Generazione completata.")
