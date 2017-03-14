#!/bin/bash
# CRoaring
mkdir -p lib/CRoaring/build
cd lib/CRoaring/build
cmake ..
make
cp libroaring.so ../../../src/CRoaring.Net/

# CRoaring.Net
cd ../../../src/CRoaring.Net
dotnet restore
dotnet build
