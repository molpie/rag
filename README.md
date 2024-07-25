# RAG (Random Address Generator)

Il software in Pyton genera un un file  CSV di 1024000000 righe, che utilizza come separatore delle stringhe i doppi apici, composto da strighe casuali rappresentanti i campi cognome, nome, indirizzo, città, cap e numero di telefono. Il numero di telefono a volte può contenere il prefisso internazionale e a volte no.

Generare un file CSV di 1.024.000.000 righe con dati casuali richiede un'attenzione particolare alla gestione della memoria e alle prestazioni. Per generare dati casuali per i campi "cognome", "nome", "indirizzo", "città", "CAP" e "numero di telefono", possiamo usare librerie come `faker` per creare dati realistici e `csv` per scrivere i dati nel formato desiderato.
