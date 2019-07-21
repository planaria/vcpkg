include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO planaria/sobx
    REF 50004a062b1674820ebb9e2fc895b15b925fd28b
    SHA512 2d477f9af2c69b7e11daa8913d55a0b8f8972e3c6f6ba3bf7a6ca8c696d9966be874537945d74fa67c563fc679d0eecdbf778fdc64fa42279cf63149ded49a77
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/sobx RENAME copyright)

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug)
