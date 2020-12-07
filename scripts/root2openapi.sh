#!/bin/bash

if [ $# != 1 ]; then
  echo "Specify service name in the first argument."
  exit 1
fi

service_name=$1
root=${PWD}
src=${root}/src/services/${service_name}

if [ ! -e $src ]; then
  echo "$src not found. please check: ${src}"
  exit 1
fi

out=${root}/openapi/${service_name}
components=${root}/src/components

docker run --rm \
  -v "${src}:/local/src/" \
  -v "${out}:/local/dist/openapi" \
  -v "${components}:/local/src/components" \
  openapitools/openapi-generator-cli generate \
    -g openapi-yaml \
    -i /local/src/root.yaml \
    -o /local/dist

