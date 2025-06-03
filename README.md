# Fourier Hardware Open

This repository includes the following contents:

1. **README.md**: Basic introduction
2. **python** folder: Contains some simple Python scripts
3. **run_docker.bash**: Docker startup script
4. **tutorial_*.ipynb**: Basic usage and introduction

## Table of Contents

- [Running Fourier Hardware with Docker](#running-fourier-hardware-with-docker)
  - [Downloading Docker Image](#downloading-docker-image)
  - [Loading Docker Image](#loading-docker-image)
  - [Using Script to Start Container](#using-script-to-start-container)
- [Running Python Tutorial with Jupyter Notebook](#running-python-tutorial-with-jupyter-notebook)
- [License](#license)

## Running Fourier Hardware with Docker

This tutorial introduces the basic usage of Fourier Hardware v1.1.0 with Docker. Please follow the instructions below to get started.

### Downloading Docker Image

To download the image file, click [fourier_hardware_v1.1.0.zip](https://pan.baidu.com/s/1KydwkliVGnZ1ZF27wpMkqA?pwd=6a9j).

For video tutorials, please refer to [fourier_hardware_guidance](https://pan.baidu.com/s/1CCJDuOeM5Bt_iUD5rgwsxw?pwd=9kig).

### Loading Docker Image

After downloading the image file, you can extract the contents and load it using the following command:

```sh
(sudo) docker load -i fourier_hardware:v1.1.0.tar
```

### Using Script to Start Container:

After downloading the image, you can start the container using the following script which is located in the root directory of the repository:

```sh
(sudo) bash run_docker.bash
```
This script will start a docker container with the **fourier_hardware:v1.1.0** image.

> Note: After exiting the container, it will be removed automatically. If you want to keep the container after exiting it, please modify the script `--rm` option accordingly.

## Running Python Tutorial with Jupyter Notebook

After starting the container, you can use Jupyter Notebook inside the container to view the `tutorial_gr2t2.ipynb`.

This tutorial uses **gr2t2** as an example to introduce the basic usage of Fourier Hardware.

```sh
jupyter notebook --allow-root
```

## License

[MIT](LICENSE) © Fourier