include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO entn-at/openfst
    REF db92e0f1b47b0a6d166b5dd82e55723b51081834
    SHA512 87e2b0657d103b101d8fcc5928052c38b065c4084f27a2d670cb3ec27c31abb36f6a18c80d89fdbfa5275cef41858b2673b447f15b967d306d74b85d84c741ba
    HEAD_REF minimal_build
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_copy_pdbs()

file(INSTALL ${SOURCE_PATH}/COPYING DESTINATION ${CURRENT_PACKAGES_DIR}/share/openfst RENAME copyright)

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
