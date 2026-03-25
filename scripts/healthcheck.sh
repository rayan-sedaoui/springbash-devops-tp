#!/bin/bash
echo "Test de disponibilité de l'application sur le port 8085..."
# Utilisation de curl pour récupérer le code HTTP
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8085)

if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "✅ Succès : L'application est UP et répond (HTTP 200)."
elif [ "$HTTP_STATUS" -eq 000 ]; then
  echo "❌ Erreur : Le serveur est éteint (Pas de réponse)."
else
  echo "⚠️ Attention : Le serveur répond mais avec le code HTTP $HTTP_STATUS."
fi
