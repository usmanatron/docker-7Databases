Write-Host -ForegroundColor Yellow "Starting MongoDB..."
docker-compose up --detach

Write-Host -ForegroundColor Yellow "Opening mongo-express (for visual representation)"
[Diagnostics.Process]::Start('http://localhost:8083')

Write-Host -ForegroundColor Yellow "Connecting to the CLI..."
Start-Sleep -Seconds 3
docker exec -it 7dbs_mongo_db mongo