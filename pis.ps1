# Demarage du script

Write-Host `
    "    =======================================     
    |                                     |     
    |    Project Initialisation Script    |     
    |         Make dir and files          |     
    |                                     |     
    |            Cdc_429_laB              |     
    |                                     |     
    =======================================     " `
    -ForegroundColor Red -BackgroundColor Black

Write-Host `
    "

--- Placer le dossier a la racine du disque et executer. ---
----  Place folder on the disk root directory and run.  ----

"
`

# Variables
$htmlText = '<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Cdc_429_laB" />
    <title>Document</title>
    <link rel="stylesheet" href="public/css/main.css" />
    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
    <script src="javascript/index.js"></script>
  </head>
  <body>
    <header class="header"><h1 class="header__title">Titre</h1></header>
    <section></section>
    <footer class="footer"></footer>
  </body>
</html>
'
$jsText = '// const author = { name: "Cdc_429_laB" };

$(document).ready(function () {
  console.log("Tout commence ici");
});
'
$scssText = '// $author: "Cdc_429_laB";

@use "variables"as var;'


# Demander @ l'utilisateur les infos utils

$directoryName = Read-Host -Prompt "Nom de votre projet"
$directoryDestination = Read-Host -Prompt "Notez ou glissez la destination de votre nouveau dossier"
if ($directoryDestination.EndsWith("\")) {
    $directoryDestination = $directoryDestination.Substring(0, $directoryDestination.Length - 1)
}


# Creation du projet
New-Item -Path "$directoryDestination/$directoryName" -ItemType Directory
Set-Location "$directoryDestination/$directoryName"
mkdir javascript
mkdir public
mkdir sass

# Public directory
Set-Location "$directoryDestination/$directoryName/public"
mkdir css
mkdir img

# Sass directory
Set-Location "$directoryDestination/$directoryName"
Set-Location "$directoryDestination/$directoryName/sass"
mkdir base
mkdir utils
mkdir layout
mkdir composants
mkdir pages
mkdir themes
mkdir vendors

# Base
New-Item -Path "./base/_typography.scss" -ItemType File
Add-Content -Path "./base/typography.scss" $scssText
# Utils
New-Item -Path "./utils/_variables.scss" -ItemType File

New-Item -Path "./utils/_mixins.scss" -ItemType File
Add-Content -Path "./utils/_mixins.scss" $scssText
# Layout
# Composants
# Pages
# Themes
# Vendors

# Fichiers de base
New-Item -Path "$directoryDestination/$directoryName/index.html" -ItemType File
Add-Content -Path "$directoryDestination/$directoryName/index.html" $htmlText

New-Item "$directoryDestination/$directoryName/javascript/index.js" -ItemType File
Add-Content -Path "$directoryDestination/$directoryName/javascript/index.js" $jsText


New-Item "$directoryDestination/$directoryName/sass/main.scss" -ItemType File
Add-Content -Path "$directoryDestination/$directoryName/sass/main.scss" $scssText
Pause