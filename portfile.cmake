vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO CPPAlliance/json
  REF fc7b1c6fd229e884df09fd45c64c6102d2aa129b
  SHA512 59c4530e8338909a741cc5f8c2ddb7026ae1d444916b3866403ab8fc94e60dcdcfc85f47529ecf3a32e579e6309665402b4d32a6172c6b05b41152e378f0b94c
  HEAD_REF develop
)

set(BOOST_JSON_STANDALONE ON)
if(boost IN_LIST FEATURES)
  set(BOOST_JSON_STANDALONE OFF)
endif()

vcpkg_configure_cmake(
  SOURCE_PATH ${SOURCE_PATH}
  PREFER_NINJA
  OPTIONS
    -DBOOST_JSON_STANDALONE=${BOOST_JSON_STANDALONE}
    -DBOOST_JSON_BUILD_TESTS=OFF
    -DBOOST_JSON_BUILD_EXAMPLES=OFF
    -DBOOST_JSON_BUILD_BENCHMARKS=OFF
)

vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/boost_json)
vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL ${SOURCE_PATH}/LICENSE_1_0.txt
  DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT}
  RENAME copyright)
