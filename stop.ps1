$env:METEOR_SETTINGS = Get-Content ".\settings.json" -Raw
$env:SSE_IMAGES = ".\data"
docker-compose -f stack.yml down