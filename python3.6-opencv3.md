Minimal opencv3 + python3 single threaded build, with QT.

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
cmake -DBUILD_DOCS=0 -DBUILD_JAVA=0 -DBUILD_PERF_TESTS=0 -DWITH_CUDA=0 -DWITH_OPENCL=0 -DWITH_CUBLAS=0 -DWITH_CUFFT=0 -DBUILD_opencv_apps=0 -DBUILD_IPP_IW=0 -DBUILD_ITT=0 -DBUILD_PACKAGE=0 -DBUILD_PROTOBUF=0 -DBUILD_TESTS=0 -DBUILD_WITH_DEBUG_INFO=0 -DBUILD_opencv_cudaarithm=0 -DWITH_GTK=0 -DWITH_MATLAB=0 -DWITH_VTK=0 -DWITH_WEBP=0 -DWITH_V4L=0 -DWITH_PTHREADS_PF=0 -DWITH_OPENEXR=0 -DWITH_OPENCLAMDFFT=0 -DWITH_OPENCLAMDBLAS=0 -DWITH_NVCUVID=0 -DWITH_JASPER=0 -DWITH_IPP=0 -DWITH_ITT=0 -DWITH_FFMPEG=0 -DCV_TRACE=0 -DBUILD_opencv_cudabgsegm=0 -DBUILD_opencv_dnn=0 -DBUILD_opencv_cudacodec=0 -DBUILD_opencv_cudafeatures2d=0 -DBUILD_opencv_cudaimgproc=0 -DBUILD_opencv_cudaobjdetect=0 -DBUILD_opencv_objdetect=0 -DBUILD_opencv_cudafilters=0 -DBUILD_opencv_cudalegacy=0 -DBUILD_opencv_cudaoptflow=0 -DBUILD_opencv_cudastereo=0 -DBUILD_opencv_cudawarping=0 -DBUILD_opencv_cudev=0 -DBUILD_opencv_ml=0 -DBUILD_opencv_stitching=0 -DBUILD_opencv_video=0 -DBUILD_opencv_flann=0 -DBUILD_opencv_photo=0 -DBUILD_opencv_superres=0 -DBUILD_opencv_videoio=0 -DBUILD_opencv_videostab=0 -DENABLE_PYLINT=0 -DBUILD_opencv_ts=0 -DBUILD_opencv_shape=0 -DWITH_GPHOTO2=0 -DWITH_GSTREAMER=0 -DBUILD_opencv_features2d=0 -BUILD_opencv_calib3d=0 ..
make -j8
```
Copy `cv2.cpython-36m-x86_64-linux-gnu.so` to your Anaconda:
```
cp ./lib/python3/cv2.cpython-36m-x86_64-linux-gnu.so ~/anaconda3/lib/python3.6/site-packages/
```
