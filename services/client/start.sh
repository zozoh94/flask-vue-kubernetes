#!/bin/sh

echo "Lancement du build du client VueJS, veuillez patienter avant de pouvoir y accéder."
ROOT_API=$ROOT_API npm run build

http-server dist
