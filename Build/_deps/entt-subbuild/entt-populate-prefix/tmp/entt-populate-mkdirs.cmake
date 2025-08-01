# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-src")
  file(MAKE_DIRECTORY "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-src")
endif()
file(MAKE_DIRECTORY
  "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-build"
  "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-subbuild/entt-populate-prefix"
  "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-subbuild/entt-populate-prefix/tmp"
  "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-subbuild/entt-populate-prefix/src/entt-populate-stamp"
  "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-subbuild/entt-populate-prefix/src"
  "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-subbuild/entt-populate-prefix/src/entt-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-subbuild/entt-populate-prefix/src/entt-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/altun/Documents/eduEngine/Build/_deps/entt-subbuild/entt-populate-prefix/src/entt-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
