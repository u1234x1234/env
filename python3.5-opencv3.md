Download & install anaconda python 3.5

```
aria2c -x8 https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
chmod +x Anaconda3-4.2.0-Linux-x86_64.sh
./Anaconda3-4.2.0-Linux-x86_64.sh
```
Install additional packages:

```
~/anaconda3/bin/conda install -c asmeurer pango
~/anaconda3/bin/conda install -c salford_systems libgcc-6
```

Download latest OpenCV 3.* from [https://github.com/opencv/opencv/releases](https://github.com/opencv/opencv/releases)  
Install:
```
mkdir build
cd build
cmake ..
make -j4
```
Copy `cv2.cpython-35m-x86_64-linux-gnu.so` to your Anaconda:
```
cp ./lib/python3/cv2.cpython-35m-x86_64-linux-gnu.so ~/anaconda3/lib/python3.5/site-packages/
```
