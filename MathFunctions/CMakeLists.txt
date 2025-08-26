include(MakeTable.cmake)

add_library(MathFunctions MathFunctions.cxx)

option(USE_MYMATH "Use tutorial provided math implementation" ON)

if (USE_MYMATH)
    target_compile_definitions(MathFunctions PRIVATE "USE_MYMATH")
    add_library(SqrtLibrary STATIC
              mysqrt.cxx
              ${CMAKE_CURRENT_BINARY_DIR}/Table.h
              )
    target_include_directories(SqrtLibrary PRIVATE
                            ${CMAKE_CURRENT_BINARY_DIR}
                            )
    target_link_libraries(MathFunctions PRIVATE SqrtLibrary tutorial_compiler_flags)
endif()
target_include_directories(MathFunctions
                        INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
                        )
target_link_libraries(MathFunctions PUBLIC tutorial_compiler_flags)

set(installable_libs MathFunctions tutorial_compiler_flags)
if(TARGET SqrtLibrary)
  list(APPEND installable_libs SqrtLibrary)
endif()
install(TARGETS ${installable_libs} DESTINATION lib)
install(FILES MathFunctions.h DESTINATION include)
