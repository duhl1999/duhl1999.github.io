---
title: FHI-aims编译安装
tags: [FHI-aims,编译安装]
date: 2020-12-29 16:52:02
categories: FHI-aims
---

FHI-aims使用全电子的数值原子轨道和全势，进行分子、固体的从头电子结构模拟。

[软件官网https://aimsclub.fhi-berlin.mpg.de](https://aimsclub.fhi-berlin.mpg.de/)

在本文中将记录其如何进行安装
<!-- more -->

# 预备软件包
```
sudo apt install make
sudo apt install cmake
```

# 安装INTEL编译器

# 安装FHI-aims
解包文件后
```
mkdir build
cd build/
touch initial_cache.cmake
```
修改initial_cache.cmake如下：
```
set(CMAKE_Fortran_COMPILER "mpiifort" CACHE STRING "")
set(CMAKE_Fortran_FLAGS "-O3 -ip -fp-model precise" CACHE STRING "")
set(Fortran_MIN_FLAGS "-O0 -fp-model precise" CACHE STRING "")
set(CMAKE_C_COMPILER "mpiicc" CACHE STRING "")
set(CMAKE_C_FLAGS "-O3 -ip -fp-model precise" CACHE STRING "")
set(LIB_PATHS "/opt/intel/mkl/lib/intel64" CACHE STRING "")
set(LIBS "mkl_intel_lp64 mkl_sequential mkl_core mkl_blacs_intelmpi_lp64 mkl_scalapack_lp64" CACHE STRING "")
set(USE_MPI ON CACHE BOOL "")
set(USE_SCALAPACK ON CACHE BOOL "")
set(USE_C_FILES ON CACHE BOOL "")
set(USE_SPGLIB ON CACHE BOOL "")
set(USE_LIBXC ON CACHE BOOL "")
set(USE_HDF5 OFF CACHE BOOL "")
set(USE_RLSY ON CACHE BOOL "")
```
与官方文件主要差异是使用了并行版本的`ifort`和`icc`

然后进行预编译：
```
cmake -C initial_cache.cmake ../
```
在没有报错后可以正式进行编译，尽量避免多核编译避免麻烦
```
make
```

在编译完成后，会在`./bin/`文件夹中生成对应的软件，创建软链接
```
sudo ln -s ./bin/aims.xxxxxxx.scalapack.mpi.x /usr/bin/aims
```

执行命令：
```
ulimit -s unlimited
mpirun -n 12 aims | tee output.out
```
进行计算