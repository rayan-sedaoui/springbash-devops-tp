#!/bin/bash
echo "Nettoyage du port 8085..."
# Récupère tous les PIDs sur le port 8085
PIDS=$(netstat -ano | findstr :8085 | awk '{print $5}' | sort -u)

if [ -z "$PIDS" ]; then
  echo "✅ Le port 8085 est déjà libre."
else
  for PID in $PIDS; do
    echo "Arrêt du processus $PID..."
    # Utilisation de /F pour forcer et /PID pour l'identifiant
    taskkill //F //PID $PID 2>/dev/null
  done
  echo "✅ Port 8085 libéré."
fi
