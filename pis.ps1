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
    Pause

# Creation du projet
mkdir new_project
Set-Location "./new_project"
mkdir javascript
mkdir public
mkdir sass

# Public directory
Set-Location "./public"
mkdir css
mkdir img

# Sass directory
Set-Location "/PIS/new_project"
Set-Location "./sass"
mkdir base
mkdir utils
mkdir layout
mkdir composants
mkdir pages
mkdir themes
mkdir vendors

# Base
New-Item -Path "./base/_typography.scss" -ItemType File
# Utils
New-Item -Path "./utils/_variables.scss" -ItemType File
New-Item -Path "./utils/_mixins.scss" -ItemType File
# Layout
# Composants
# Pages
# Themes
# Vendors

# Source files copy
Set-Location "/PIS"
Copy-Item "./src_files/index.html" -Destination "./new_project"
Copy-Item "./src_files/index.js" -Destination "./new_project/javascript"
Copy-Item "./src_files/main.scss" -Destination "./new_project/sass"
Pause