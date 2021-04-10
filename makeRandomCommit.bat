echo off

FOR /F "tokens=* USEBACKQ" %%H IN (`git rev-parse HEAD`) DO (
	SET previousHash=%%H
)
echo %previousHash%

FOR /F "tokens=* USEBACKQ" %%M IN (`curl -s api.kanye.rest/^?format^=text`) DO (
	SET commitMessage=%%M
)
echo %commitMessage%

echo Random file content and previous hash %previousHash% > randomFile%previousHash%.txt
git add randomFile%previousHash%.txt
git commit -m "%commitMessage%"
