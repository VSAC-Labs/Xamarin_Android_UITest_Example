#!/usr/bin/env bash

echo "The Post Build Script START - updated"

if [ -z "$AppCenterTokenForTest" ]
then 
    echo "This script only runs within the context of App Center builds"
    exit
fi

echo "CURRENT FOLDER"
pwd

git clone https://github.com/VSAC-Labs/AppCenter_Generated_UITest_Base.git

echo "$APPPATH"
echo "$BUILDDIR"
echo "$BUILDSCRIPT"
echo "$MANIFEST"
echo "$BRANCHNAME"
echo "$TESTSERIES"
echo "$DEVICESET"

appcenter login --token $AppCenterTokenForTest

cd AppCenter_Generated_UITest_Base
pwd

dotnet restore AppCenter.UITest.Android.sln

cd ..
pwd

appcenter test prepare uitest --artifacts-dir /Users/runner/work/1/a/Artifacts --app-path $APPPATH --build-dir $BUILDDIR --debug --quiet

appcenter test run manifest --manifest-path $MANIFEST --app-path $APPPATH --app AppCenterSupportDocs/ManualTestOnDevice --devices $DEVICESET --test-series $TESTSERIES --locale en_US -p msft/test-run-origin=Build/Launch --debug --quiet --token $AppCenterTokenForTest

echo "The Post Build Script END"
