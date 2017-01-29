Build VirtualBox ova
--------------------
::
    cd ova
    make
    cd ..
    packer build --force --only=virtualbox-ovf infra.json
