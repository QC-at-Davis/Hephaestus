# Hephaestus

The Official Quantum Computing at Davis (QCaD) workshop environment

## Purpose

Hephaestus is a docker image capable of generating a container with all the necessary dependencies and frameworks for QCaD workshops.

## Architecture

Hephaestus is heavily based off the [continuumio/miniconda3](https://hub.docker.com/r/continuumio/miniconda3) image but modified through the following changes:
* `build-essential` is installed so `gcc` is available to build certain python packages
* `conda-forge` is added as a channel for obtaining packages
* Workshop-required tools (listed below) are installed:
  * `qutip`
  * `qiskit`
  * `matplotlib`
  *  `jupyter`
* Launching the container immediately launches an instance of a `jupyter notebook` pointed towards the `home` folder which is mapped to the host directory the container was launched from. 

## Usage

Ensure that Docker is installed on your machine and running in the background.

`git clone` and navigate to the directory where you cloned the repo.

Run the following:

```
docker-compose up
```