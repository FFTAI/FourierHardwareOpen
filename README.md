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

This tutorial introduces the basic usage of Fourier Hardware. Please follow the instructions below to get started.

### Downloading Docker Image

The environment is built on the base image and updated via deb packages. The base image tag is **v2.2**.

To download the base image file, click [fourier_hardware.tar](https://pan.baidu.com/s/1kgBkNJhgA4OA3rPBYyqMvQ?pwd=vi5q).

### Loading Docker Image

```sh
docker load -i fourier_hardware.tar
```

### Using Script to Start Container:

After downloading the image, you can start the container using the following script which is located in the root directory of the repository:

```sh
bash run_docker.bash
```
This script will start a docker container with the default **fourier_hardware:v2.2** image.

> Note: After exiting the container, it will be removed automatically. If you want to keep the container after exiting it, please modify the script accordingly.

### Upgrading to Latest Version(Optional)

After entering the container, navigate to the **update** folder in the repository and run the following command to upgrade the packages:

```sh
dpkg -i *.deb
```

This command will install the latest version of the packages. After the update, you can save the latest changes using `docker commit` on a new terminal window to update the current image.

**Example:**

```sh
docker commit fourier_hardware fourier_hardware:latest
```
This command will create a new image with the latest changes.

The image name in the **run_docker.bash** script should then be updated to **fourier_hardware:latest** to use the latest version.

## Running Python Tutorial with Jupyter Notebook

After starting the container, you can use Jupyter Notebook inside the container to view the `tutorial_gr2t2.ipynb`.

This tutorial uses **gr2t2** as an example to introduce the basic usage of Fourier Hardware.

```sh
jupyter notebook --allow-root
```

## License

[MIT](LICENSE) © Fourier