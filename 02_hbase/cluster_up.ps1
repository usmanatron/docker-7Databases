Write-Host -ForegroundColor Yellow "Starting HBase (local cluster)..."
docker-compose -f docker-hbase\docker-compose-distributed-local.yml up --detach

# Write-Host -ForegroundColor Yellow "Opening adminer (for visual representation)"
[Diagnostics.Process]::Start('http://localhost:16010')

# Connect to HBase shell
docker exec -it hbase /opt/hbase-1.2.6/bin/hbase shell