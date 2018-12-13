cmake ^
  -G"Visual Studio 14 2015 Win64" ^
  -DHARP_ENABLE_CONDA_INSTALL=True ^
  -DHARP_BUILD_PYTHON=True ^
  -DCODA_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DJPEG_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DHDF4_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DHDF5_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DCODA_LIBRARY_DIR="%CONDA_PREFIX%\Library\libs" ^
  -DJPEG_LIBRARY_DIR="%CONDA_PREFIX%\Library\libs" ^
  -DHDF4_LIBRARY_DIR="%CONDA_PREFIX%\Library\libs" ^
  -DHDF5_LIBRARY_DIR="%CONDA_PREFIX%\Library\libs" ^
  -DZLIB_LIBRARY_DIR="%CONDA_PREFIX%\Library\libs" ^
  -DCMAKE_INSTALL_PREFIX:PATH=%CONDA_PREFIX%
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
