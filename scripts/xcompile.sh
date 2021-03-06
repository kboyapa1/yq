#!/bin/bash

# This assumes that gonative and gox is installed as per the 'one time setup' instructions
# at https://github.com/inconshreveable/gonative

gox -ldflags "${LDFLAGS}" -output="build/{{.Dir}}_{{.OS}}_{{.Arch}}"
# include non-default linux builds too
gox -ldflags "${LDFLAGS}" -os=linux  -output="build/{{.Dir}}_{{.OS}}_{{.Arch}}"

