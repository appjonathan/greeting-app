# Wählen Sie das Basis-Image
FROM node:14

# Setzen Sie das Arbeitsverzeichnis in Ihrem Docker-Container
WORKDIR /app

# Kopieren Sie die package.json und package-lock.json (wenn vorhanden) in das Arbeitsverzeichnis
COPY package*.json ./

# Installieren Sie die Abhängigkeiten
RUN npm install

# Kopieren Sie den Rest des Anwendungscodes in das Arbeitsverzeichnis
COPY . .

# Exponieren Sie den Port, auf dem Ihre Anwendung läuft (z.B. 3000, wenn Ihre Anwendung auf Port 3000 läuft)
EXPOSE 3000

# Starten Sie die Anwendung
CMD [ "node", "server.js" ]