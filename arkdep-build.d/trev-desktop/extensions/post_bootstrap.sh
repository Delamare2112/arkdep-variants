#!/bin/sh

set -e
set -x

sed -i 's/install --no-depmod/install --verbose --no-depmod/g' "${workdir}/usr/share/libalpm/scripts/dkms"

cd ${workdir}
for GSP in $(find "usr/lib/firmware/nvidia" -type f -name 'gsp_*.bin'); do
    echo "install_items+=\" /${GSP}" >> etc/dracut.conf.d/ensure-gsp.conf
done
