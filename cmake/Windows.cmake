# Licensed under the GNU General Public License version 2 with exceptions. See
# LICENSE file in the project root for full license information

target_sources(soem PRIVATE
  osal/win32/osal.c
  osal/win32/osal_defs.h
  oshw/win32/oshw.c
  oshw/win32/oshw.h
  oshw/win32/nicdrv.c
  oshw/win32/nicdrv.h
  )

target_include_directories(soem PUBLIC
  $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/osal/win32>
  $<INSTALL_INTERFACE:include/soem>
  )

target_include_directories(soem PUBLIC
  $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/oshw/win32>
  $<INSTALL_INTERFACE:include/soem>
  )

target_include_directories(soem PUBLIC
  $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/oshw/win32/wpcap/Include>
  $<INSTALL_INTERFACE:include/soem>
  )

add_definitions(/D _CRT_SECURE_NO_WARNINGS /WX)

if(CMAKE_SIZEOF_VOID_P EQUAL 8)
  set(WPCAP_LIB_PATH ${CMAKE_SOURCE_DIR}/oshw/win32/wpcap/Lib/x64)
elseif(CMAKE_SIZEOF_VOID_P EQUAL 4)
  set(WPCAP_LIB_PATH ${CMAKE_SOURCE_DIR}/oshw/win32/wpcap/Lib)
endif()

target_link_libraries(soem PUBLIC
  ${WPCAP_LIB_PATH}/wpcap.lib
  ${WPCAP_LIB_PATH}/Packet.lib
  Ws2_32.lib
  Winmm.lib
  )

install(FILES
  osal/win32/osal_defs.h
  DESTINATION include/soem
  )
