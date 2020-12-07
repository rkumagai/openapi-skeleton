#!/bin/bash

if [ $# != 1 ]; then
  echo "Specify service name in the first argument."
  exit 1
fi

service_name=$1
root=${PWD}
src=${root}/openapi/${service_name}/openapi.yaml

if [ ! -e $openapi ]; then
  echo "$openapi not found. please check: ${openapi}"
  exit 1
fi

out=${root}/dist/openapi2generator-ruby

docker run --rm \
  -v "${src}:/local/openapi.yaml" \
  -v "${out}:/local/dist/openapi2generator-ruby" \
  openapitools/openapi-generator-cli generate \
    -g ruby \
    -i /local/openapi.yaml \
    -o /local/dist/openapi2generator-ruby

