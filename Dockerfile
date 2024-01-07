# Gebruik de officiële Python-image van Docker als basis
FROM python:3

# Stel de werkdirectory in binnen de container
WORKDIR /usr/src/app

# Kopieer de inhoud van de huidige map naar de container in de werkdirectory
COPY requirements.txt ./

# Installeer de vereiste Python-pakketten
RUN pip install --no-cache-dir -r requirements.txt  

# Copy the rest of the application code
COPY . ./

# Voer het Python-script uit wanneer de container wordt gestart
CMD ["python", "main.py"]
