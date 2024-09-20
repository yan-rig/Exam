# Utilise une image officielle de Python comme base
FROM python:3.9-slim

# Définis le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copie les fichiers requirements.txt (ou Pipfile si tu utilises pipenv)
COPY requirements.txt .

# Installe les dépendances nécessaires
RUN pip install --no-cache-dir -r requirements.txt

# Copie tout le contenu du projet dans le conteneur
COPY . .

# Expose le port 8000 pour l'application FastAPI
EXPOSE 8000

# Commande pour lancer l'application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
