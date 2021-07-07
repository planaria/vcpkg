vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL git@github.com:planaria/var.git
    REF 4f565a9752d404b26b240fd475518b19d968cccc
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include
                    ${CURRENT_PACKAGES_DIR}/debug/bin
                    ${CURRENT_PACKAGES_DIR}/debug/share
)
