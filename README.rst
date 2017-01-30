Build VirtualBox ova
--------------------
::

    cd ova
    make
    cd ..

Build all images
----------------
::

    packer build --force infra.json

Build vagrant box
-----------------

This will produce a vagrant box `var/packer.box`.

::

    packer build --force --only=virtualbox-ovf infra.json

Debug vagrant box
-----------------
::

    cd var
    vagrant up
