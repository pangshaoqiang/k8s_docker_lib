#!/bin/bash

images=`grep FROM -r */Dockerfile | grep gcr | awk -F '/' '{print $NF}'`

echo $images

\rm versions
touch versions
for imageName in ${images[@]} ; do
    echo $imageName >> versions
done
