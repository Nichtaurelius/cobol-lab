#!/bin/bash
mkdir -p build
cobc -x src/dwz.cob -o build/dwz && echo "✅ Build erfolgreich"
