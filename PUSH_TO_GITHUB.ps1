# Spartan Campus — GitHub Push Script
# Double-click this file to push everything to GitHub
# -------------------------------------------------------

$ErrorActionPreference = "Stop"
$repoPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $repoPath

Write-Host ""
Write-Host "======================================" -ForegroundColor Cyan
Write-Host "  SPARTAN CAMPUS — GitHub Push Tool  " -ForegroundColor Cyan
Write-Host "======================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check git is installed
try {
    $gitVersion = git --version
    Write-Host "Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed." -ForegroundColor Red
    Write-Host "Download it from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit
}

# Step 2: Open GitHub in browser so user can create the repo
Write-Host ""
Write-Host "STEP 1: Opening GitHub to create the repo..." -ForegroundColor Yellow
Write-Host "  -> Name it exactly:  spartan-campus" -ForegroundColor White
Write-Host "  -> Set to:           Public" -ForegroundColor White
Write-Host "  -> Do NOT add README, .gitignore, or license" -ForegroundColor White
Write-Host "  -> Click Create Repository" -ForegroundColor White
Write-Host ""
Start-Process "https://github.com/new"

Read-Host "Once you've created the repo on GitHub, press Enter to continue"

# Step 3: Initialize git if not already done
if (-not (Test-Path ".git")) {
    Write-Host ""
    Write-Host "Initializing git repo..." -ForegroundColor Cyan
    git init
    git branch -M main
} else {
    Write-Host ""
    Write-Host "Git repo already initialized." -ForegroundColor Green
}

# Step 4: Set remote
Write-Host "Setting up remote..." -ForegroundColor Cyan
$remoteExists = git remote | Select-String "origin"
if ($remoteExists) {
    git remote set-url origin https://github.com/Kashee12345/spartan-campus.git
} else {
    git remote add origin https://github.com/Kashee12345/spartan-campus.git
}
Write-Host "Remote set to: https://github.com/Kashee12345/spartan-campus.git" -ForegroundColor Green

# Step 5: Stage and commit everything
Write-Host ""
Write-Host "Staging all files..." -ForegroundColor Cyan
git add .
git status

Write-Host ""
Write-Host "Committing..." -ForegroundColor Cyan
git commit -m "Initial commit — Spartan Campus hub, 14 buildings, course catalog, K-12 games"

# Step 6: Push
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

Write-Host ""
Write-Host "======================================" -ForegroundColor Green
Write-Host "  SUCCESS! Repo is live on GitHub     " -ForegroundColor Green
Write-Host "======================================" -ForegroundColor Green
Write-Host ""
Write-Host "Now enable GitHub Pages:" -ForegroundColor Yellow
Write-Host "  1. Go to your repo -> Settings -> Pages" -ForegroundColor White
Write-Host "  2. Source: Deploy from branch" -ForegroundColor White
Write-Host "  3. Branch: main / folder: / (root)" -ForegroundColor White
Write-Host "  4. Save — site will be live in ~60 seconds at:" -ForegroundColor White
Write-Host "     https://kashee12345.github.io/spartan-campus" -ForegroundColor Cyan
Write-Host ""

# Open the repo and settings pages
Start-Process "https://github.com/Kashee12345/spartan-campus"
Start-Sleep -Seconds 3
Start-Process "https://github.com/Kashee12345/spartan-campus/settings/pages"

Read-Host "Press Enter to close"
