#!/bin/bash
echo "Arrêt de l'application Spring Boot..."

# On ajoute "head -n 1" pour ne garder qu'un seul numéro de processus
PID=$(netstat -ano | grep :8085 | grep LISTEN | awk '{print $NF}' | tr -d '\r' | head -n 1)

if [ -z "$PID" ]; then
  echo "Aucun processus trouvé sur le port 8085."
else
  # On passe par cmd.exe pour éviter les bugs de Git Bash
  cmd.exe /c "taskkill /F /PID $PID"
  echo "Processus $PID arrêté avec succès."
fi