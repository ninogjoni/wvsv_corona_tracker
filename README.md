# Corona Tracker App

During the wirvsvirushackathon.org challenge, we collaborate on Discord to create a COVID-19 tracking app.

Planned features include:

- Self-report health status (diagnosed/cured)
- Upload your close contacts (anonymized, of course!) 
- Get notified immediately if one of your 1st/2nd/3rd grade contacts gets diagnosed or cured
- View infected areas on a map (anonymized)

## Frontend

## Backend
### Grundlegende Bestimmungen
- Codestyle gem. https://github.com/google/styleguide
### Systemvoraussetzungen
#### Software (Development)
- Git
- OpenJDK in der Version 8, aktuellstes Update -> https://openjdk.java.net/install/
- Maven (3.6.3)
- Lombok Plugins in der jeweiligen IDE
- Docker zum Erstellen des Docker Images
- pgAdmin zum Administrieren von PostgreSQL-Datenbanken ("Klicki-Bunti")

### Vorbereitungen (Development)
1. Im Root-Verzeichnis folgenden Befehl ausführen: `mvn clean install` -> **Wichtig**: Dies muss mit der richtigen JDK-Version ausgeführt werden, andernfalls meckert er.
2. Gegebenenfalls in der IDE den Ordner aktualisieren.

## Contributing

Recommended GitHub workflow:

### Repository setup

Open https://github.com/beat-virus/corona_tracker in your browser.

Click the "Fork" button to clone the repository to your own GitHub account.

```bash
# Clone your fork to localhost (replace USERNAME with your GitHub username):
git clone git@github.com:USERNAME/corona_tracker.git

# Change to newly created directory
cd corona_tracker

# Add the original repository as "upstream"
git remote add upstream git@github.com:beat-virus/corona_tracker.git
git remote set-url --push upstream no_push
```

### Work on a feature

Get the newest code from the original repository:

```bash
cd corona_tracker
git fetch upstream
git checkout master
git rebase upstream/master
```

Create a new branch for your feature:

```bash
git checkout -b myfeature
```

When you're done, commit changes and push branch:

```
git add <files>
git commit
git push origin myfeature
```

Create a pull request (PR):

Open https://github.com/USERNAME/corona_tracker in your browser (replace USERNAME with your GitHub username).

Click the "Compare & Pull Request" button.

## Links

- Devpost: https://devpost.com/software/1_008_a_corona_tracking_coronatracking
