#!/bin/bash

# Créer le dossier d'archive s'il n'existe pas
mkdir -p logs/archives

# Générer un nom de fichier avec la date
DATE=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="logs/archives/app_logs_$DATE.tar.gz"

echo "Archivage des logs dans $ARCHIVE_NAME..."

# Compresser les fichiers .log
tar -czf $ARCHIVE_NAME logs/*.log 2>/dev/null

if [ $? -eq 0 ]; then
  echo "✅ Archive créée avec succès dans le dossier logs/archives/"
else
  echo "⚠️ Erreur : Aucun fichier log trouvé ou échec de la compression."
fi