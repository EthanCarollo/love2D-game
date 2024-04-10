set -o allexport
source .env
set +o allexport
mkdir dist
ZIP_FILENAME="dist/${GAME_NAME}_mac.love"
zip -9 -r "$ZIP_FILENAME" .