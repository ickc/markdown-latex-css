#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"/css-source
find . -iname '*.scss' -exec cp '{}' "../_sass/" \;