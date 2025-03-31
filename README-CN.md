# Fourier Hardware Open

本仓库包含以下内容：

1. **README.md**：基本介绍
2. **python** 文件夹：包含一些简单的 Python 脚本
3. **run_docker.bash**：Docker 启动脚本
4. **tutorial_\*.ipynb**：基本功能使用和介绍
5. **update**：grxsot 和 fourier hardware的升级包

## 目录

- [使用 Docker 运行 Fourier Hardware](#使用-docker-运行-fourier-hardware)
  - [拉取或加载 Docker 镜像](#拉取或加载-docker-镜像)
  - [加载 Docker 镜像](#加载-docker-镜像)
  - [使用脚本启动容器](#使用脚本启动容器)
- [使用 Jupyter Notebook 运行 Python 教程](#使用-jupyter-notebook-运行-python-教程)
- [更新镜像](#更新镜像)
- [许可](#许可)


## 使用 Docker 运行 Fourier Hardware

本教程介绍了 Fourier Hardware 的基本使用方法。请使用最新的 Docker 镜像进行实验。

### 拉取或加载 Docker 镜像

可以使用 `docker pull` 或 `docker load` 加载指定的镜像。当前使用的镜像 tag 为 **v2.2**。

外部下载地址请点击[fourier_hardware.tar](https://pan.baidu.com/s/1kgBkNJhgA4OA3rPBYyqMvQ?pwd=vi5q)。

#### 加载 Docker 镜像：

```sh
docker load -i fourier_hardware.tar
```

#### 使用脚本启动容器：

```sh
bash run_docker.bash
```

## 使用 Jupyter Notebook 运行 Python 教程

启动容器后，可以在容器内部使用 Jupyter Notebook 查看 `tutorial_gr2t2.ipynb`。

该教程以 **gr2t2** 为例，介绍了 Fourier Hardware 的基本使用方法。

```sh
jupyter notebook --allow-root
```

## 更新镜像

通过使用升级包更新镜像，cd 到update文件夹，执行下面命令：
```sh
dpkg -i *.deb
```
升级完之后可以使用docker commit 保存最新的镜像。

## 许可

[MIT](LICENSE) © Fourier
