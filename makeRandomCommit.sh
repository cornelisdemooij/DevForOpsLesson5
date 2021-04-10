previousHash=$(git rev-parse HEAD)
echo "Random file content and previous hash ${previousHash}" > randomFile${previousHash}.txt
git add randomFile${previousHash}.txt
git commit -m "$(curl -s api.kanye.rest/?format=text)"
