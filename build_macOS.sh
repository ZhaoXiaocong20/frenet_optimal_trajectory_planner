brew install qt5
echo "export CMAKE_PREFIX_PATH=/usr/local/Cellar/qt@5/5.15.2_2" >> ~/.zshrc

brew install cmake
brew install eigen
brew install llvm

if [ ! -d "build" ]; then
  mkdir build
fi
cd build

cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build . --target all -- -j 8
