# Manjaro Arkdep Variants

This repository contains Manjaro Immutable variant configuration for arkdep-build.

Variants are recipes used by arkdep-build to create installable images in Arkdep format.

## System requirements

- Have arkdep-build and dependencies installed.

```bash
sudo pacman -Sy arkdep
```

## Building a variant

First clone the repo and navigate to its root:

```bash
git clone git@github.com:manjaro/arkdep-variants.git
cd arkdep-variants
```

Variants are identified based on directory name. Pass the directory name of whichever variant you wish to build to arkdep-build to build it:

```bash
sudo arkdep-build test-manjaro-gnome
```

Once the image finished building, they will be deposited in `./target`.

## Deploying the images locally

Once you have build an image it can quickly be deployed locally on any Arkdep managed system.

```bash
cp ./target/{IMAGE_ID}.tar.zst /arkdep/cache
sudo arkdep deploy cache {IMAGE_ID}
```

## Depends explaination

These depends list what should exist for different deployment types:  

* `trev-base`: bare-metal, VMs, and containers
* `drivers`: base-metal, VMs
* `desktop`: bare-metal with a GPU and monitor

This is why I placed `firewalld` inside of `drivers`.  Containers don't need it but VMs might want it.  
The name `drivers` may change.
