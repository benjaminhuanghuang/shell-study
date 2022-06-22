#
#  MyComponent.vue -> MyComponent.spec.js
#
#!/bin/bash
for filename in ./subcomponents/*.vue; do
#   echo $filename;
#   extension="${filename##*.}"
    touch "${filename%.*}".spec.js
done
