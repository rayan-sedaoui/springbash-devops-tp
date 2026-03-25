
#!/bin/bash

mkdir -p logs/archives

DATE=$(date +%Y%m%d_%H%M%S)

ARCHIVE_NAME="logs/archives/app_logs_$DATE.tar.gz"

echo "Archivage des logs dans $ARCHIVE_NAME..."

tar -czf $ARCHIVE_NAME logs/*.log 2>/dev/null

if [ $? -eq 0 ]; then

  echo "✅ Archive créée avec succès dans logs/archives/"

else

  echo "⚠️ Erreur : Aucun fichier log trouvé."

fi

