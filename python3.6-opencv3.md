Ubuntu 18.04, gcc 7
---
Download & install anaconda python 3.6

```
aria2c -x8 https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
chmod +x Anaconda3-4.2.0-Linux-x86_64.sh
./Anaconda3-4.2.0-Linux-x86_64.sh
```

Download latest OpenCV 3.* from [https://github.com/opencv/opencv/releases](https://github.com/opencv/opencv/releases)  
Install:
```
mkdir build
cd build
cmake -DBUILD_DOCS=0 -DBUILD_JAVA=0 -DBUILD_PERF_TESTS=0 -DWITH_CUDA=0 -DWITH_OPENCL=0 -DWITH_CUBLAS=0 -DWITH_CUFFT=0 -DBUILD_opencv_apps=0 ..
make -j8
```
Copy `cv2.cpython-36m-x86_64-linux-gnu.so` to your Anaconda:
```
cp ./lib/python3/cv2.cpython-36m-x86_64-linux-gnu.so ~/anaconda3/lib/python3.6/site-packages/
```
