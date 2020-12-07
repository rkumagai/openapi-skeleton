#!/bin/bash

if [ $# != 1 ]; then
  echo "Specify service name in the first argument."
  exit 1
fi

service_name=$1
root=${PWD}
openapi=${root}/openapi/${service_name}/

if [ ! -e $openapi ]; then
  echo "$openapi not found. please check: ${openapi}"
  exit 1
fi

docker run \
  -p 80:8080 \
  -e SWAGGER_JSON=/src/openapi.yaml \
  -v `pwd`/openapi/${service_name}:/src swaggerapi/swagger-ui
