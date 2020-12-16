vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO planaria/sobx
    REF bead8d0d44dd92a5337e9ea91cbd79b313e22be1
    SHA512 6017eedd7b19d0fe7f325da95a7be1d3faa2b822160b0f56454bcc05250260590dd8e51f266ae4aa7219ec6d1381ec6e5d5d9c9599eb5b4f731613a24f4f0a4b
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/sobx RENAME copyright)

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug)
