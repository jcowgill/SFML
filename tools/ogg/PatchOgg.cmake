file(READ "${OGG_DIR}/CMakeLists.txt" OGG_CMAKELISTS_CONTENTS)
string(REPLACE "\n\nadd_library(ogg" "\nset(CMAKE_DEBUG_POSTFIX d)\nadd_library(ogg" OGG_CMAKELISTS_CONTENTS "${OGG_CMAKELISTS_CONTENTS}")
string(REPLACE "PUBLIC_HEADER \"\${OGG_HEADERS}\"" "" OGG_CMAKELISTS_CONTENTS "${OGG_CMAKELISTS_CONTENTS}")
file(WRITE "${OGG_DIR}/CMakeLists.txt" "${OGG_CMAKELISTS_CONTENTS}")