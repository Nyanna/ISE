#!/bin/bash

# Eingabedatei mit Begriffen
liste="terms.txt"

# Zähler initialisieren
counter=1

while IFS= read -r name; do
  # führende/abschließende Leerzeichen wegtrimmen
  name=$(echo "$name" | xargs)
  # überspringen, wenn Zeile leer ist
  [ -z "$name" ] && continue

  # Zähler zweistellig formatieren (01, 02, …)
  printf -v num "%02d" "$counter"

  # Datei erzeugen
  touch "${num}_${name}.md"

  # Zähler hochzählen
  ((counter++))
done < "$liste"
