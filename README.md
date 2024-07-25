# RAG (Random Address Generator)

Il software in Pyton genera un un file  CSV di 1000 righe, che utilizza come separatore delle stringhe i doppi apici, composto da strighe casuali rappresentanti i campi cognome, nome, indirizzo, città, cap e numero di telefono. Il numero di telefono a volte può contenere il prefisso internazionale e a volte no.

pip freeze > requirements.txt per salvare le librerie necessarie.

Gli script bash si occupano di accodare più volte il CSV di esempio e poi di effettuare le modifiche richieste: sostituire i doppi apici con apici singoli e trovare i numeri di telefono internazionali, salvandoli su altro file CSV.
