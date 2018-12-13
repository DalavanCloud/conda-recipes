export CMAKE_LIBRARY_PATH=$PREFIX/lib

# This is needed to allow bison to find m4
export M4="$(command -v m4)"

cmake \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCODA_BUILD_PYTHON=True \
  -DCODA_WITH_HDF4=True \
  -DCODA_WITH_HDF5=True \
  -DHDF4_INCLUDE_DIR="$PREFIX/include" \
  -DHDF5_INCLUDE_DIR="$PREFIX/include"

#./bootstrap

#if [ "$(uname)" == Darwin ]; then
#    export CFLAGS="-headerpad_max_install_names"
#fi

#./configure --prefix="$PREFIX" \
#            --with-hdf4 HDF4_LIB="$PREFIX/lib" HDF4_INCLUDE="$PREFIX/include"\
#            JPEG_LIB="$PREFIX/lib" ZLIB_LIB="$PREFIX/lib" \
#            --with-hdf5 HDF5_LIB="$PREFIX/lib" HDF5_INCLUDE="$PREFIX/include" \
#            --enable-python PYTHON="$PREFIX/bin/python"

make VERBOSE=1
make install
