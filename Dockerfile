# Gebruik de officiële Python-image van Docker als basis
FROM python:3.8

# Stel de werkdirectory in binnen de container
WORKDIR /app

# Kopieer de inhoud van de huidige map naar de container in de werkdirectory
COPY . /app

# Installeer de vereiste Python-pakketten
RUN pip install -r requirements.txt  # Als je een requirements.txt hebt, anders weglaten

# Voer het Python-script uit wanneer de container wordt gestart
CMD ["python", "main.py"]
