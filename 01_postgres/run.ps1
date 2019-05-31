docker-compose up --detach

Write-Host -ForegroundColor Yellow "To connect to PostgreSQL: psql -U postgres -W"

docker exec -it 7dbs_postgres_postgres /bin/bash