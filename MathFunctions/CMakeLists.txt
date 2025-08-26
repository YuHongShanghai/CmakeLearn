include(MakeTable.cmake)

add_library(MathFunctions MathFunctions.cxx)

set_property(TARGET MathFunctions PROPERTY VERSION "1.0.0")
set_property(TARGET MathFunctions PROPERTY SOVERSION "1")

option(USE_MYMATH "Use tutorial provided math implementation" ON)

if (USE_MYMATH)
    target_compile_definitions(MathFunctions PRIVATE "USE_MYMATH")
    add_library(SqrtLibrary STATIC
              mysqrt.cxx
              ${CMAKE_CURRENT_BINARY_DIR}/Table.h
              )
    set_target_properties(SqrtLibrary PROPERTIES
            POSITION_INDEPENDENT_CODE ${BUILD_SHARED_LIBS}
            )
    target_include_directories(SqrtLibrary PRIVATE
                            ${CMAKE_CURRENT_BINARY_DIR}
                            )
    target_link_libraries(MathFunctions PRIVATE SqrtLibrary tutorial_compiler_flags)
endif()

# define the symbol stating we are using the declspec(dllexport) when
# building on windows
target_compile_definitions(MathFunctions PRIVATE "EXPORTING_MYMATH")

target_include_directories(MathFunctions
                           INTERFACE
                            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
                            $<INSTALL_INTERFACE:include>
                           )
target_link_libraries(MathFunctions PUBLIC tutorial_compiler_flags)

set(installable_libs MathFunctions tutorial_compiler_flags)
if(TARGET SqrtLibrary)
  list(APPEND installable_libs SqrtLibrary)
endif()
install(TARGETS ${installable_libs}
        EXPORT MathFunctionsTargets
        DESTINATION lib)
install(FILES MathFunctions.h DESTINATION include)

install(EXPORT MathFunctionsTargets
  FILE MathFunctionsTargets.cmake
  DESTINATION lib/cmake/MathFunctions
)
