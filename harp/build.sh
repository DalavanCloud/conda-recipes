export CMAKE_LIBRARY_PATH=$PREFIX/lib

# This is needed to allow bison to find m4
export M4="$(command -v m4)"

cmake \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DHARP_BUILD_PYTHON=True \
  -DCODA_INCLUDE_DIR="$PREFIX/include" \
  -DHDF4_INCLUDE_DIR="$PREFIX/include" \
  -DHDF5_INCLUDE_DIR="$PREFIX/include"
make VERBOSE=1
make install
