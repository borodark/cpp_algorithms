# - MACRO_ENSURE_OUT_OF_SOURCE_BUILD(<errorMessage>)
# MACRO_ENSURE_OUT_OF_SOURCE_BUILD(<errorMessage>)
macro (MACRO_ENSURE_OUT_OF_SOURCE_BUILD _errorMessage)
   string(COMPARE EQUAL "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" _insource)
   if (_insource)
     message(SEND_ERROR "${_errorMessage}")
     message(FATAL_ERROR "Remove the file CMakeCache.txt in ${CMAKE_SOURCE_DIR} first.")
   endif (_insource)

endmacro (MACRO_ENSURE_OUT_OF_SOURCE_BUILD) 
