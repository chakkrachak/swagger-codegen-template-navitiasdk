#!/bin/bash

rm -rf /Volumes/ramdisk/tmp/java_api_client/src

java -jar ../swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
  -i global_swagger.json -l java --config navitiaSDKJavaConfig.json
