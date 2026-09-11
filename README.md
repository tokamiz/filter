# Aufgabe - Filter implementieren
1. Die Datei „secrets.yml” wurde erstellt. Sie enthält Informationen zum Passwort aus der Datei „database.yml” und wird von Git nicht erfasst.
   „secrets.yml” wird auch in der Datei „.gitignore” eingetragen.
2. Die Datei „database.yml” wird ins Git-System ausgecheckt. Mit dem Code sed "s|password: .*|password: DB_PSW|g" in der Datei clean.sh wird der Passwortwert durch DB_PSW ersetzt.
3. In der Datei "smudge.sh" wird der Passwortwert umgekehrt aus der Datei "secrets.yml" ausgelesen und in die Datei "database.yml" wieder eingefügt.
4. Durch den Befehl „chmod +x clean.sh smudge.sh” werden die Skripte „clean.sh” und „smudge.sh” ausführbar.
5. Mit den Befehlen "git config filter.secrets.clean  './clean.sh'" und "git config filter.secrets.smudge './smudge.sh'" werden die Filter in der Git-Konfiguration registriert.
6. Mit dem Befehl "database.yml filter=secrets" in der Datei ".gitattributes" wird die Datei "database.yml" dem Filter zugewiesen.
7. Um den Filter zu testen, wurden die beiden Repositories „filter-a” und „filter-b” local erstellt. Diese kommunizieren über das Bare-Repository auf GitHub „https://github.com/tokamiz/filter.git” miteinander.
8. Um einen Commit zu erstellen und den Prozess gleichzeitig genauer nachvollziehen zu können, wurde der Wert „test: ...” in der Datei 'database.yml' eingetragen.
   Auf dem Bare-Repository ist das Passwort mit dem Platzhalter „DB_PSW” in der Datei „database.yml” gespeichert.
   In Git-Repositories behält die Datei den echten Wert "supersecret123" auch nach der Ausführung von „push” und „pull”.
