#!/bin/bash

rm -rf /Volumes/ramdisk/tmp/java_api_client/src

java -jar ../swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
  --input-spec ./global_swagger.json \
  --template-dir ./Java \
  --lang java --library=okhttp-gson \
  --output /Volumes/ramdisk/tmp/java_api_client/ \
  --api-package org.kisio.NavitiaSDK.apis \
  --invoker-package org.kisio.NavitiaSDK.invokers \
  --model-package org.kisio.NavitiaSDK.models \
  --artifact-id navitia-sdk \
  --group-id org.kisio.sdk \
  --git-repo-id NavitiaSDK_android
