echo '\n\n requesting all heroes'
curl localhost:3001/heroes

echo '\n\n requesting flash'
curl localhost:3001/heroes/1

echo '\n\n requesting'
curl --silent -X POST \
    --data-binary '{"invalid": "data"}' \
    localhost:3001/heroes

echo '\n\n creating spider man'
CREATE=$(curl --silent -X POST \
    --data-binary '{"name": "Peter", "age": 25, "power": "Spider Power"}' \
    localhost:3001/heroes)

echo $CREATE