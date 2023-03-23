#!/bin/bash
read -p "Nom du commit" NOM
git add .
git commit -m "$NOM"
git push origin main
