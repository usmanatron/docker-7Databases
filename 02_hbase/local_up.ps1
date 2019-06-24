Write-Host -ForegroundColor Yellow "Starting HBase (local standalone)..."
docker-compose -f docker-hbase\docker-compose-standalone.yml up --detach

# Write-Host -ForegroundColor Yellow "Opening adminer (for visual representation)"
[Diagnostics.Process]::Start('http://localhost:16010')
