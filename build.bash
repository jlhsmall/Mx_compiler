set ff=UNIX
set -e
mkdir -p bin
find ./src -name *.java | javac -d bin -cp lib/antlr-4.9-complete.jar @/dev/stdin