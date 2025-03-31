# Fourier Hardware Open

This repository includes the following contents:

1. **README.md**: Basic introduction
2. **python** folder: Contains some simple Python scripts
3. **run_docker.bash**: Docker startup script
4. **tutorial_*.ipynb**: Basic usage and introduction
5. **update**: Upgrade packages for grxsot and Fourier hardware

## Table of Contents

- [Running Fourier Hardware with Docker](#running-fourier-hardware-with-docker)
  - [Pulling or Loading Docker Image](#pulling-or-loading-docker-image)
  - [Loading Docker Image](#loading-docker-image)
  - [Using Script to Start Container](#using-script-to-start-container)
- [Running Python Tutorial with Jupyter Notebook](#running-python-tutorial-with-jupyter-notebook)
- [Updating Image](#updating-image)
- [License](#license)

## Running Fourier Hardware with Docker

This tutorial introduces the basic usage of Fourier Hardware. Please use the latest Docker image for your experiments.

### Pulling or Loading Docker Image

You can use `docker pull` or `docker load` to load the specified image. The currently used image tag is **v2.2**.

To download the image externally, click [fourier_hardware.tar](https://pan.baidu.com/s/1kgBkNJhgA4OA3rPBYyqMvQ?pwd=vi5q).

#### Load Docker Image:

```sh
docker load -i fourier_hardware.tar
```

#### Using Script to Start Container:

```sh
bash run_docker.bash
```

## Running Python Tutorial with Jupyter Notebook

After starting the container, you can use Jupyter Notebook inside the container to view the `tutorial_gr2t2.ipynb`.

This tutorial uses **gr2t2** as an example to introduce the basic usage of Fourier Hardware.

```sh
jupyter notebook --allow-root
```

## Updating Image

To update the image using the upgrade package, navigate to the `update` folder and run the following command:

```sh
dpkg -i *.deb
```

After the update, you can save the latest image using `docker commit`.

## License

[MIT](LICENSE) © Fourier