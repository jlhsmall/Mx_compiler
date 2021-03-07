set -e
cd "$(dirname "$0")"
export CCHK="java -classpath ./lib/antlr-4.9.1-complete.jar:./bin Main"
cat > code.txt
$CCHK
