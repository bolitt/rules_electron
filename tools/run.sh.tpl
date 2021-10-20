#!/bin/bash
# Template of running app.
set -ex

export TMPDIR=`mktemp -d`
trap 'rm -rf "$TMPDIR"' EXIT

tar -xf {{app}} -C $TMPDIR

echo "=== ls $TMPDIR/ ==="
ls -alh $TMPDIR/

chmod 755 $TMPDIR/{{name}}.app
open -W $TMPDIR/{{name}}.app
