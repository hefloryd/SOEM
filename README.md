# Simple Open EtherCAT Master Library
[![Build Status](https://github.com/OpenEtherCATsociety/SOEM/workflows/build/badge.svg?branch=master)](https://github.com/OpenEtherCATsociety/SOEM/actions?workflow=build)
[![Build status](https://ci.appveyor.com/api/projects/status/bqgirjsxog9k1odf?svg=true)](https://ci.appveyor.com/project/hefloryd/soem-5kq8b)

BUILDING
========


Prerequisites for all platforms
-------------------------------

 * CMake 2.8.0 or later


Windows (Visual Studio)
-----------------------

 * Start a Visual Studio command prompt then:
   * `mkdir build`
   * `cd build`
   * `cmake .. -G "NMake Makefiles"`
   * `nmake`

Linux & macOS
--------------

   * `mkdir build`
   * `cd build`
   * `cmake ..`
   * `make`

rt-kernel
---------

   * `mkdir build`
   * `cd build`
   * `export COMPILERS=/opt/rt-tools/compilers`
   * `export RTK=/path/to/rt-kernel`
   * `export BSP=<bsp>`
   * `cmake .. -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain/rt-kernel-<arch>.cmake -G "Unix Makefiles"`
   * `make`

ERIKA Enterprise RTOS
---------------------

 * Refer to http://www.erika-enterprise.com/wiki/index.php?title=EtherCAT_Master

Documentation
-------------

See https://openethercatsociety.github.io/doc/soem/


Want to contribute to SOEM or SOES?
-----------------------------------

If you want to contribute to SOEM or SOES you will need to sign a Contributor
License Agreement and send it to us either by e-mail or by physical mail. More
information is available in the [PDF](http://openethercatsociety.github.io/cla/cla_soem_soes.pdf).
