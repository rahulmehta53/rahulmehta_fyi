# One-click deployment script to update rahulmehta.fyi on Cloudflare Pages
$ErrorActionPreference = "Stop"

Write-Host "1. Syncing latest resume.html into rahulmehta_fyi..." -ForegroundColor Cyan
Copy-Item -Path "..\resume\resume.html" -Destination "index.html" -Force

Write-Host "2. Committing and pushing to GitHub (rahulmehta53/rahulmehta_fyi)..." -ForegroundColor Cyan
git add index.html
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "feat(resume): update live portfolio at $timestamp"
git push origin main

Write-Host "`n🚀 Deployed! Cloudflare will update https://rahulmehta.fyi in ~10 seconds." -ForegroundColor Green

