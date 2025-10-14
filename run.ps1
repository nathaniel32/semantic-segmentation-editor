$env:METEOR_SETTINGS = Get-Content ".\settings.json" -Raw
$env:SSE_IMAGES = ".\data"
docker-compose -f stack.yml up -d

# check annot in db
#docker exec -it v2-mongo-1 mongosh
#show dbs
#use meteor
#show collections
#db.SseSamples.find().limit(5).pretty()