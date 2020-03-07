# Hephaestus

The Official Quantum Computing at Davis (QCaD) workshop environment

## Purpose

Hephaestus is a docker image with all the necessary dependencies and frameworks for [QCaD workshops](https://github.com/Quantum-Computing-at-Davis/Workshops)

## Architecture

Hephaestus uses the [frolvlad/alpine-miniconda3](https://hub.docker.com/r/frolvlad/alpine-miniconda3/) image as its base, a modified version of Alpine Linux with miniconda built into it with the following modifications:

* `matplotlib`, `jupyter`, and `qutip` are installed
* `gcc`, `musl-dev`, and `linux-headers` are added (then removed from the image) as build dependencies
  * This allows for the proper installation of `qiskit`

## Standalone Usage (No Workshops Included)

Ensure that Docker is installed on your machine and running in the background.

`git clone` and navigate to the directory where you cloned the repo.

Run the following:

```
docker-compose up
```

## Workshop Usage

Refer to the [QCaD workshops](https://github.com/Quantum-Computing-at-Davis/Workshops) repository for more details.
