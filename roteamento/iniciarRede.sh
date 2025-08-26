#!/bin/bash

echo "--- Iniciando todos os 12 roteadores em background ---"

# Ativa o ambiente virtual
source venv/bin/activate

# Inicia cada roteador. O '&' no final faz com que ele rode em background.
# Usaremos o intervalo padrão de 10s do seu código.
python roteador.py -p 5001 -f R1.csv --network 10.0.1.0/24 &
python roteador.py -p 5002 -f R2.csv --network 10.0.2.0/24 &
python roteador.py -p 5003 -f R3.csv --network 10.0.3.0/24 &
python roteador.py -p 5004 -f R4.csv --network 10.0.4.0/24 &
python roteador.py -p 5005 -f R5.csv --network 10.0.5.0/24 &
python roteador.py -p 5006 -f R6.csv --network 10.0.6.0/24 &
python roteador.py -p 5007 -f R7.csv --network 10.0.7.0/24 &
python roteador.py -p 5008 -f R8.csv --network 10.0.8.0/24 &
python roteador.py -p 5009 -f R9.csv --network 10.0.9.0/24 &
python roteador.py -p 5010 -f R10.csv --network 10.0.10.0/24 &
python roteador.py -p 5011 -f R11.csv --network 10.0.11.0/24 &
python roteador.py -p 5012 -f R12.csv --network 10.0.12.0/24 &

echo "--- Rede iniciada. Rode o Wireshark agora e espere a convergência. ---"
echo "--- Use 'killall python' para parar todos os roteadores. ---"