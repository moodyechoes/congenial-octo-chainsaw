# This script locates the SFML Library (Simple and Fast Multimedia Library)
# and generates CMake variables for the found libraries and include directories.
# -------------------------------------------------------------------------------------------------------------
# 
# Usage
#
# Specify the modules you want to utilize such as (system, window, graphics, network, audio, main).
# The script will search for libraries with the same version as specified in the SFML_FIND_VERSION variable.
# If no version is specified, the version won't be checked (i.e. any version will be accepted).
# 
# -------------------------------------------------------------------------------------------------------------
# 
# Notes
#
# If no SFML modules are specified, the SFML_LIBRARIES variable will stay empty and you'll end up linking to nothing.

