#!/bin/bash

for filename in ./html/*; do
  NAME="$(basename $filename .html)"
  JSNAME="${NAME}.js"
  ESCAPED="$(sed 's/\\/\\\\/g;s/^.*$/&\\/g;s/'\''/\\'\''/g' $filename)"
  cat <<EOF > ./js/$JSNAME
  document.write('$ESCAPED
  ')
EOF
done
