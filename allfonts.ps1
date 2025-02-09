# Set the directory where the fonts will be downloaded
$fontDirectory = "D:\utils\appsFiles\ALLfonts"

# Check if the directory exists, if not, create it
if (-Not (Test-Path -Path $fontDirectory)) {
    New-Item -Path $fontDirectory -ItemType Directory
}

# URL to the latest Nerd Fonts release on GitHub
$nerdFontReleaseUrl = "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/nerd-fonts.zip"

# Download the latest Nerd Fonts zip file
$zipFile = "$fontDirectory\nerd-fonts.zip"
Write-Host "Downloading Nerd Fonts from $nerdFontReleaseUrl..."
Invoke-WebRequest -Uri $nerdFontReleaseUrl -OutFile $zipFile

# Extract the downloaded zip file
Write-Host "Extracting Nerd Fonts..."
Expand-Archive -Path $zipFile -DestinationPath $fontDirectory -Force

# Define the fonts folder after extraction
$fontsFolder = "$fontDirectory\patched-fonts"

# Install the fonts
Write-Host "Installing fonts..."
$fonts = Get-ChildItem -Path $fontsFolder -Recurse -Filter "*.ttf"

foreach ($font in $fonts) {
    $fontDestination = "$env:windir\Fonts\$($font.Name)"
    Copy-Item -Path $font.FullName -Destination $fontDestination -Force
    Write-Host "Installed: $($font.Name)"
}

# Clean up the downloaded zip file
Remove-Item -Path $zipFile -Force

Write-Host "Font installation complete. Please restart your terminal to use the new fonts."
