# Fourier Hardware Open

This repository contains the following content:

1. **README.md**: Basic introduction
2. **python** folder: Contains simple Python scripts
3. **run_docker.bash**: Docker startup script
4. **tutorial_gr1t2.ipynb**, **tutorial_gr2t2.ipynb**, **tutorial_grmini_t1.ipynb**: Basic function usage and introduction

## Table of Contents

- [Run Fourier Hardware Using Docker](#run-fourier-hardware-using-docker)
  - [Pull or Load Docker Image](#pull-or-load-docker-image)
  - [Load Docker Image](#load-docker-image)
  - [Start the Container Using a Script](#start-the-container-using-a-script)
- [Run Python Tutorials Using Jupyter Notebook](#run-python-tutorials-using-jupyter-notebook)
- [License](#license)

## Run Fourier Hardware Using Docker

This tutorial introduces the basic usage of Fourier Hardware. Please use the latest Docker image for experiments.

### Pull or Load Docker Image

You can use `docker pull` or `docker load` to load the specified image. The current image tag is **v2.2**.

For **external developers**, please refer to [fourier_hardware.tar](https://pan.baidu.com/s/1kgBkNJhgA4OA3rPBYyqMvQ?pwd=vi5q).

#### Load Docker Image:

```sh
docker load -i fourier_hardware.tar
```

#### Start the Container Using a Script:

```sh
bash run_docker.bash
```

## Run Python Tutorials Using Jupyter Notebook

After starting the container, you can use Jupyter Notebook inside to view `tutorial_gr2t2.ipynb`.

This tutorial uses **gr2t2** as an example to introduce the basic usage of Fourier Hardware.

```sh
jupyter notebook --allow-root
```

## License

[MIT](LICENSE) © Fourier
