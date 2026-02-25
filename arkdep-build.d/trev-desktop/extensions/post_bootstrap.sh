#!/bin/sh

set -e
set -x

sed -i 's/install --no-depmod/install --verbose --no-depmod/g' "${workdir}/usr/share/libalpm/scripts/dkms"
