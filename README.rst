Conda recipies for Anaconda stcorp channel
==========================================

This is a repository of `Conda <http://conda.pydata.org/>`_ recipies for items that are made available via the `stcorp Anaconda channel <https://anaconda.org/stcorp/>`_.

Using stcorp packages
---------------------

To use the Conda packages just install Anaconda or Miniconda and run ``conda install -c stcorp <pkgname>``.


Building packages
-----------------

To build a packages install Anaconda or Miniconda and install the following components:

.. code-block:: bash

    $ conda install conda-build anaconda-client

The `anaconda-client` is only needed of you use Miniconda and don't want the full Anaconda environment. The Anaconda client is needed to upload packages to anaconda.org.

Make sure you add both the `conda-forge` and `stcorp` channels before building:

.. code-block:: bash

    $ conda config --add channels stcorp
    $ conda config --add channels conda-forge

Also, make sure that your local conda installation is up-to-date before each build:

.. code-block:: bash

    $ conda upgrade conda
    $ conda upgrade conda-build anaconda-client

Then goto the subdirectory with the recipe of the required package and run:

.. code-block:: bash

    $ conda build .

This will generate a binary package that can be uploaded to anaconda.org.

To upload this package use:

.. code-block:: bash

    $ anaconda login
    $ anaconda upload <root>conda-bld/<arch>/<pkgname>.tar.bz2
