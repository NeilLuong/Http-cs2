########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND boost_COMPONENT_NAMES Boost::diagnostic_definitions Boost::disable_autolinking Boost::dynamic_linking Boost::headers Boost::boost boost::_libboost Boost::atomic Boost::charconv Boost::container Boost::context Boost::date_time Boost::exception Boost::math Boost::program_options Boost::regex Boost::serialization Boost::system Boost::timer Boost::chrono Boost::cobalt Boost::coroutine Boost::filesystem Boost::json Boost::math_c99 Boost::math_c99f Boost::math_c99l Boost::math_tr1 Boost::math_tr1f Boost::math_tr1l Boost::random Boost::url Boost::wserialization Boost::iostreams Boost::nowide Boost::process Boost::thread Boost::contract Boost::locale Boost::log Boost::type_erasure Boost::log_setup)
list(REMOVE_DUPLICATES boost_COMPONENT_NAMES)
if(DEFINED boost_FIND_DEPENDENCY_NAMES)
  list(APPEND boost_FIND_DEPENDENCY_NAMES ZLIB BZip2 Iconv)
  list(REMOVE_DUPLICATES boost_FIND_DEPENDENCY_NAMES)
else()
  set(boost_FIND_DEPENDENCY_NAMES ZLIB BZip2 Iconv)
endif()
set(ZLIB_FIND_MODE "NO_MODULE")
set(BZip2_FIND_MODE "NO_MODULE")
set(Iconv_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(boost_PACKAGE_FOLDER_DEBUG "/Users/neilluong/.conan2/p/b/boost1f0a135f60a4d/p")
set(boost_BUILD_MODULES_PATHS_DEBUG )


set(boost_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_RES_DIRS_DEBUG )
set(boost_DEFINITIONS_DEBUG )
set(boost_SHARED_LINK_FLAGS_DEBUG )
set(boost_EXE_LINK_FLAGS_DEBUG )
set(boost_OBJECTS_DEBUG )
set(boost_COMPILE_DEFINITIONS_DEBUG )
set(boost_COMPILE_OPTIONS_C_DEBUG )
set(boost_COMPILE_OPTIONS_CXX_DEBUG )
set(boost_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_BIN_DIRS_DEBUG )
set(boost_LIBRARY_TYPE_DEBUG STATIC)
set(boost_IS_HOST_WINDOWS_DEBUG 0)
set(boost_LIBS_DEBUG boost_log_setup boost_type_erasure boost_log boost_locale boost_contract boost_thread boost_process boost_nowide boost_iostreams boost_wserialization boost_url boost_random boost_math_tr1l boost_math_tr1f boost_math_tr1 boost_math_c99l boost_math_c99f boost_math_c99 boost_json boost_filesystem boost_coroutine boost_cobalt boost_chrono boost_timer boost_serialization boost_regex boost_program_options boost_exception boost_date_time boost_context boost_container boost_charconv boost_atomic)
set(boost_SYSTEM_LIBS_DEBUG )
set(boost_FRAMEWORK_DIRS_DEBUG )
set(boost_FRAMEWORKS_DEBUG )
set(boost_BUILD_DIRS_DEBUG )
set(boost_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(boost_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_COMPILE_OPTIONS_C_DEBUG}>")
set(boost_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_EXE_LINK_FLAGS_DEBUG}>")


set(boost_COMPONENTS_DEBUG Boost::diagnostic_definitions Boost::disable_autolinking Boost::dynamic_linking Boost::headers Boost::boost boost::_libboost Boost::atomic Boost::charconv Boost::container Boost::context Boost::date_time Boost::exception Boost::math Boost::program_options Boost::regex Boost::serialization Boost::system Boost::timer Boost::chrono Boost::cobalt Boost::coroutine Boost::filesystem Boost::json Boost::math_c99 Boost::math_c99f Boost::math_c99l Boost::math_tr1 Boost::math_tr1f Boost::math_tr1l Boost::random Boost::url Boost::wserialization Boost::iostreams Boost::nowide Boost::process Boost::thread Boost::contract Boost::locale Boost::log Boost::type_erasure Boost::log_setup)
########### COMPONENT Boost::log_setup VARIABLES ############################################

set(boost_Boost_log_setup_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_log_setup_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_log_setup_BIN_DIRS_DEBUG )
set(boost_Boost_log_setup_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_log_setup_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_log_setup_RES_DIRS_DEBUG )
set(boost_Boost_log_setup_DEFINITIONS_DEBUG )
set(boost_Boost_log_setup_OBJECTS_DEBUG )
set(boost_Boost_log_setup_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_log_setup_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_log_setup_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_log_setup_LIBS_DEBUG boost_log_setup)
set(boost_Boost_log_setup_SYSTEM_LIBS_DEBUG )
set(boost_Boost_log_setup_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_log_setup_FRAMEWORKS_DEBUG )
set(boost_Boost_log_setup_DEPENDENCIES_DEBUG Boost::log boost::_libboost)
set(boost_Boost_log_setup_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_log_setup_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_log_setup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_log_setup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_log_setup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_log_setup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_log_setup_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_log_setup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_log_setup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_log_setup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::type_erasure VARIABLES ############################################

set(boost_Boost_type_erasure_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_type_erasure_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_type_erasure_BIN_DIRS_DEBUG )
set(boost_Boost_type_erasure_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_type_erasure_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_type_erasure_RES_DIRS_DEBUG )
set(boost_Boost_type_erasure_DEFINITIONS_DEBUG )
set(boost_Boost_type_erasure_OBJECTS_DEBUG )
set(boost_Boost_type_erasure_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_type_erasure_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_type_erasure_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_type_erasure_LIBS_DEBUG boost_type_erasure)
set(boost_Boost_type_erasure_SYSTEM_LIBS_DEBUG )
set(boost_Boost_type_erasure_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_type_erasure_FRAMEWORKS_DEBUG )
set(boost_Boost_type_erasure_DEPENDENCIES_DEBUG Boost::thread boost::_libboost)
set(boost_Boost_type_erasure_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_type_erasure_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_type_erasure_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_type_erasure_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_type_erasure_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_type_erasure_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_type_erasure_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_type_erasure_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_type_erasure_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_type_erasure_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::log VARIABLES ############################################

set(boost_Boost_log_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_log_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_log_BIN_DIRS_DEBUG )
set(boost_Boost_log_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_log_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_log_RES_DIRS_DEBUG )
set(boost_Boost_log_DEFINITIONS_DEBUG )
set(boost_Boost_log_OBJECTS_DEBUG )
set(boost_Boost_log_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_log_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_log_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_log_LIBS_DEBUG boost_log)
set(boost_Boost_log_SYSTEM_LIBS_DEBUG )
set(boost_Boost_log_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_log_FRAMEWORKS_DEBUG )
set(boost_Boost_log_DEPENDENCIES_DEBUG Boost::atomic Boost::date_time Boost::exception Boost::filesystem Boost::random Boost::regex Boost::system Boost::thread boost::_libboost)
set(boost_Boost_log_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_log_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_log_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_log_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_log_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_log_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_log_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_log_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_log_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_log_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::locale VARIABLES ############################################

set(boost_Boost_locale_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_locale_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_locale_BIN_DIRS_DEBUG )
set(boost_Boost_locale_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_locale_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_locale_RES_DIRS_DEBUG )
set(boost_Boost_locale_DEFINITIONS_DEBUG )
set(boost_Boost_locale_OBJECTS_DEBUG )
set(boost_Boost_locale_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_locale_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_locale_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_locale_LIBS_DEBUG boost_locale)
set(boost_Boost_locale_SYSTEM_LIBS_DEBUG )
set(boost_Boost_locale_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_locale_FRAMEWORKS_DEBUG )
set(boost_Boost_locale_DEPENDENCIES_DEBUG Boost::thread boost::_libboost Iconv::Iconv)
set(boost_Boost_locale_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_locale_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_locale_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_locale_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_locale_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_locale_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_locale_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_locale_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_locale_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_locale_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::contract VARIABLES ############################################

set(boost_Boost_contract_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_contract_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_contract_BIN_DIRS_DEBUG )
set(boost_Boost_contract_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_contract_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_contract_RES_DIRS_DEBUG )
set(boost_Boost_contract_DEFINITIONS_DEBUG )
set(boost_Boost_contract_OBJECTS_DEBUG )
set(boost_Boost_contract_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_contract_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_contract_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_contract_LIBS_DEBUG boost_contract)
set(boost_Boost_contract_SYSTEM_LIBS_DEBUG )
set(boost_Boost_contract_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_contract_FRAMEWORKS_DEBUG )
set(boost_Boost_contract_DEPENDENCIES_DEBUG Boost::exception Boost::thread boost::_libboost)
set(boost_Boost_contract_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_contract_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_contract_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_contract_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_contract_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_contract_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_contract_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_contract_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_contract_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_contract_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::thread VARIABLES ############################################

set(boost_Boost_thread_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_thread_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_thread_BIN_DIRS_DEBUG )
set(boost_Boost_thread_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_thread_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_thread_RES_DIRS_DEBUG )
set(boost_Boost_thread_DEFINITIONS_DEBUG )
set(boost_Boost_thread_OBJECTS_DEBUG )
set(boost_Boost_thread_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_thread_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_thread_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_thread_LIBS_DEBUG boost_thread)
set(boost_Boost_thread_SYSTEM_LIBS_DEBUG )
set(boost_Boost_thread_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_thread_FRAMEWORKS_DEBUG )
set(boost_Boost_thread_DEPENDENCIES_DEBUG Boost::atomic Boost::chrono Boost::container Boost::date_time Boost::exception Boost::system boost::_libboost)
set(boost_Boost_thread_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_thread_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_thread_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_thread_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_thread_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_thread_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_thread_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_thread_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_thread_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_thread_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::process VARIABLES ############################################

set(boost_Boost_process_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_process_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_process_BIN_DIRS_DEBUG )
set(boost_Boost_process_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_process_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_process_RES_DIRS_DEBUG )
set(boost_Boost_process_DEFINITIONS_DEBUG )
set(boost_Boost_process_OBJECTS_DEBUG )
set(boost_Boost_process_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_process_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_process_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_process_LIBS_DEBUG boost_process)
set(boost_Boost_process_SYSTEM_LIBS_DEBUG )
set(boost_Boost_process_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_process_FRAMEWORKS_DEBUG )
set(boost_Boost_process_DEPENDENCIES_DEBUG Boost::filesystem Boost::system boost::_libboost)
set(boost_Boost_process_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_process_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_process_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_process_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_process_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_process_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_process_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_process_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_process_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_process_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::nowide VARIABLES ############################################

set(boost_Boost_nowide_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_nowide_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_nowide_BIN_DIRS_DEBUG )
set(boost_Boost_nowide_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_nowide_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_nowide_RES_DIRS_DEBUG )
set(boost_Boost_nowide_DEFINITIONS_DEBUG )
set(boost_Boost_nowide_OBJECTS_DEBUG )
set(boost_Boost_nowide_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_nowide_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_nowide_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_nowide_LIBS_DEBUG boost_nowide)
set(boost_Boost_nowide_SYSTEM_LIBS_DEBUG )
set(boost_Boost_nowide_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_nowide_FRAMEWORKS_DEBUG )
set(boost_Boost_nowide_DEPENDENCIES_DEBUG Boost::filesystem boost::_libboost)
set(boost_Boost_nowide_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_nowide_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_nowide_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_nowide_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_nowide_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_nowide_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_nowide_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_nowide_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_nowide_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_nowide_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::iostreams VARIABLES ############################################

set(boost_Boost_iostreams_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_iostreams_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_iostreams_BIN_DIRS_DEBUG )
set(boost_Boost_iostreams_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_iostreams_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_iostreams_RES_DIRS_DEBUG )
set(boost_Boost_iostreams_DEFINITIONS_DEBUG )
set(boost_Boost_iostreams_OBJECTS_DEBUG )
set(boost_Boost_iostreams_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_iostreams_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_iostreams_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_iostreams_LIBS_DEBUG boost_iostreams)
set(boost_Boost_iostreams_SYSTEM_LIBS_DEBUG )
set(boost_Boost_iostreams_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_iostreams_FRAMEWORKS_DEBUG )
set(boost_Boost_iostreams_DEPENDENCIES_DEBUG Boost::random Boost::regex boost::_libboost BZip2::BZip2 ZLIB::ZLIB)
set(boost_Boost_iostreams_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_iostreams_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_iostreams_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_iostreams_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_iostreams_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_iostreams_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_iostreams_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_iostreams_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_iostreams_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_iostreams_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::wserialization VARIABLES ############################################

set(boost_Boost_wserialization_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_wserialization_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_wserialization_BIN_DIRS_DEBUG )
set(boost_Boost_wserialization_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_wserialization_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_wserialization_RES_DIRS_DEBUG )
set(boost_Boost_wserialization_DEFINITIONS_DEBUG )
set(boost_Boost_wserialization_OBJECTS_DEBUG )
set(boost_Boost_wserialization_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_wserialization_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_wserialization_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_wserialization_LIBS_DEBUG boost_wserialization)
set(boost_Boost_wserialization_SYSTEM_LIBS_DEBUG )
set(boost_Boost_wserialization_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_wserialization_FRAMEWORKS_DEBUG )
set(boost_Boost_wserialization_DEPENDENCIES_DEBUG Boost::serialization boost::_libboost)
set(boost_Boost_wserialization_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_wserialization_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_wserialization_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_wserialization_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_wserialization_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_wserialization_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_wserialization_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_wserialization_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_wserialization_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_wserialization_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::url VARIABLES ############################################

set(boost_Boost_url_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_url_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_url_BIN_DIRS_DEBUG )
set(boost_Boost_url_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_url_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_url_RES_DIRS_DEBUG )
set(boost_Boost_url_DEFINITIONS_DEBUG )
set(boost_Boost_url_OBJECTS_DEBUG )
set(boost_Boost_url_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_url_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_url_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_url_LIBS_DEBUG boost_url)
set(boost_Boost_url_SYSTEM_LIBS_DEBUG )
set(boost_Boost_url_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_url_FRAMEWORKS_DEBUG )
set(boost_Boost_url_DEPENDENCIES_DEBUG Boost::system boost::_libboost)
set(boost_Boost_url_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_url_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_url_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_url_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_url_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_url_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_url_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_url_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_url_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_url_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::random VARIABLES ############################################

set(boost_Boost_random_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_random_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_random_BIN_DIRS_DEBUG )
set(boost_Boost_random_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_random_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_random_RES_DIRS_DEBUG )
set(boost_Boost_random_DEFINITIONS_DEBUG )
set(boost_Boost_random_OBJECTS_DEBUG )
set(boost_Boost_random_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_random_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_random_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_random_LIBS_DEBUG boost_random)
set(boost_Boost_random_SYSTEM_LIBS_DEBUG )
set(boost_Boost_random_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_random_FRAMEWORKS_DEBUG )
set(boost_Boost_random_DEPENDENCIES_DEBUG Boost::system boost::_libboost)
set(boost_Boost_random_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_random_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_random_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_random_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_random_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_random_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_random_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_random_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_random_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_random_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::math_tr1l VARIABLES ############################################

set(boost_Boost_math_tr1l_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_math_tr1l_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_math_tr1l_BIN_DIRS_DEBUG )
set(boost_Boost_math_tr1l_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_math_tr1l_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_math_tr1l_RES_DIRS_DEBUG )
set(boost_Boost_math_tr1l_DEFINITIONS_DEBUG )
set(boost_Boost_math_tr1l_OBJECTS_DEBUG )
set(boost_Boost_math_tr1l_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_math_tr1l_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_math_tr1l_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_math_tr1l_LIBS_DEBUG boost_math_tr1l)
set(boost_Boost_math_tr1l_SYSTEM_LIBS_DEBUG )
set(boost_Boost_math_tr1l_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_math_tr1l_FRAMEWORKS_DEBUG )
set(boost_Boost_math_tr1l_DEPENDENCIES_DEBUG Boost::math boost::_libboost)
set(boost_Boost_math_tr1l_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_math_tr1l_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_math_tr1l_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_tr1l_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_tr1l_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_tr1l_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_tr1l_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_math_tr1l_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_tr1l_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_tr1l_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::math_tr1f VARIABLES ############################################

set(boost_Boost_math_tr1f_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_math_tr1f_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_math_tr1f_BIN_DIRS_DEBUG )
set(boost_Boost_math_tr1f_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_math_tr1f_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_math_tr1f_RES_DIRS_DEBUG )
set(boost_Boost_math_tr1f_DEFINITIONS_DEBUG )
set(boost_Boost_math_tr1f_OBJECTS_DEBUG )
set(boost_Boost_math_tr1f_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_math_tr1f_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_math_tr1f_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_math_tr1f_LIBS_DEBUG boost_math_tr1f)
set(boost_Boost_math_tr1f_SYSTEM_LIBS_DEBUG )
set(boost_Boost_math_tr1f_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_math_tr1f_FRAMEWORKS_DEBUG )
set(boost_Boost_math_tr1f_DEPENDENCIES_DEBUG Boost::math boost::_libboost)
set(boost_Boost_math_tr1f_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_math_tr1f_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_math_tr1f_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_tr1f_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_tr1f_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_tr1f_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_tr1f_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_math_tr1f_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_tr1f_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_tr1f_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::math_tr1 VARIABLES ############################################

set(boost_Boost_math_tr1_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_math_tr1_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_math_tr1_BIN_DIRS_DEBUG )
set(boost_Boost_math_tr1_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_math_tr1_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_math_tr1_RES_DIRS_DEBUG )
set(boost_Boost_math_tr1_DEFINITIONS_DEBUG )
set(boost_Boost_math_tr1_OBJECTS_DEBUG )
set(boost_Boost_math_tr1_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_math_tr1_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_math_tr1_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_math_tr1_LIBS_DEBUG boost_math_tr1)
set(boost_Boost_math_tr1_SYSTEM_LIBS_DEBUG )
set(boost_Boost_math_tr1_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_math_tr1_FRAMEWORKS_DEBUG )
set(boost_Boost_math_tr1_DEPENDENCIES_DEBUG Boost::math boost::_libboost)
set(boost_Boost_math_tr1_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_math_tr1_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_math_tr1_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_tr1_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_tr1_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_tr1_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_tr1_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_math_tr1_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_tr1_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_tr1_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::math_c99l VARIABLES ############################################

set(boost_Boost_math_c99l_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_math_c99l_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_math_c99l_BIN_DIRS_DEBUG )
set(boost_Boost_math_c99l_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_math_c99l_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_math_c99l_RES_DIRS_DEBUG )
set(boost_Boost_math_c99l_DEFINITIONS_DEBUG )
set(boost_Boost_math_c99l_OBJECTS_DEBUG )
set(boost_Boost_math_c99l_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_math_c99l_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_math_c99l_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_math_c99l_LIBS_DEBUG boost_math_c99l)
set(boost_Boost_math_c99l_SYSTEM_LIBS_DEBUG )
set(boost_Boost_math_c99l_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_math_c99l_FRAMEWORKS_DEBUG )
set(boost_Boost_math_c99l_DEPENDENCIES_DEBUG Boost::math boost::_libboost)
set(boost_Boost_math_c99l_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_math_c99l_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_math_c99l_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_c99l_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_c99l_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_c99l_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_c99l_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_math_c99l_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_c99l_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_c99l_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::math_c99f VARIABLES ############################################

set(boost_Boost_math_c99f_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_math_c99f_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_math_c99f_BIN_DIRS_DEBUG )
set(boost_Boost_math_c99f_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_math_c99f_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_math_c99f_RES_DIRS_DEBUG )
set(boost_Boost_math_c99f_DEFINITIONS_DEBUG )
set(boost_Boost_math_c99f_OBJECTS_DEBUG )
set(boost_Boost_math_c99f_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_math_c99f_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_math_c99f_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_math_c99f_LIBS_DEBUG boost_math_c99f)
set(boost_Boost_math_c99f_SYSTEM_LIBS_DEBUG )
set(boost_Boost_math_c99f_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_math_c99f_FRAMEWORKS_DEBUG )
set(boost_Boost_math_c99f_DEPENDENCIES_DEBUG Boost::math boost::_libboost)
set(boost_Boost_math_c99f_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_math_c99f_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_math_c99f_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_c99f_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_c99f_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_c99f_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_c99f_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_math_c99f_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_c99f_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_c99f_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::math_c99 VARIABLES ############################################

set(boost_Boost_math_c99_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_math_c99_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_math_c99_BIN_DIRS_DEBUG )
set(boost_Boost_math_c99_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_math_c99_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_math_c99_RES_DIRS_DEBUG )
set(boost_Boost_math_c99_DEFINITIONS_DEBUG )
set(boost_Boost_math_c99_OBJECTS_DEBUG )
set(boost_Boost_math_c99_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_math_c99_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_math_c99_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_math_c99_LIBS_DEBUG boost_math_c99)
set(boost_Boost_math_c99_SYSTEM_LIBS_DEBUG )
set(boost_Boost_math_c99_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_math_c99_FRAMEWORKS_DEBUG )
set(boost_Boost_math_c99_DEPENDENCIES_DEBUG Boost::math boost::_libboost)
set(boost_Boost_math_c99_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_math_c99_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_math_c99_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_c99_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_c99_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_c99_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_c99_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_math_c99_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_c99_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_c99_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::json VARIABLES ############################################

set(boost_Boost_json_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_json_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_json_BIN_DIRS_DEBUG )
set(boost_Boost_json_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_json_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_json_RES_DIRS_DEBUG )
set(boost_Boost_json_DEFINITIONS_DEBUG )
set(boost_Boost_json_OBJECTS_DEBUG )
set(boost_Boost_json_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_json_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_json_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_json_LIBS_DEBUG boost_json)
set(boost_Boost_json_SYSTEM_LIBS_DEBUG )
set(boost_Boost_json_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_json_FRAMEWORKS_DEBUG )
set(boost_Boost_json_DEPENDENCIES_DEBUG Boost::container Boost::system boost::_libboost)
set(boost_Boost_json_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_json_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_json_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_json_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_json_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_json_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_json_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_json_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_json_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_json_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::filesystem VARIABLES ############################################

set(boost_Boost_filesystem_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_filesystem_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_filesystem_BIN_DIRS_DEBUG )
set(boost_Boost_filesystem_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_filesystem_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_filesystem_RES_DIRS_DEBUG )
set(boost_Boost_filesystem_DEFINITIONS_DEBUG )
set(boost_Boost_filesystem_OBJECTS_DEBUG )
set(boost_Boost_filesystem_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_filesystem_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_filesystem_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_filesystem_LIBS_DEBUG boost_filesystem)
set(boost_Boost_filesystem_SYSTEM_LIBS_DEBUG )
set(boost_Boost_filesystem_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_filesystem_FRAMEWORKS_DEBUG )
set(boost_Boost_filesystem_DEPENDENCIES_DEBUG Boost::atomic Boost::system boost::_libboost)
set(boost_Boost_filesystem_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_filesystem_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_filesystem_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_filesystem_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_filesystem_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_filesystem_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_filesystem_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_filesystem_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_filesystem_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_filesystem_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::coroutine VARIABLES ############################################

set(boost_Boost_coroutine_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_coroutine_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_coroutine_BIN_DIRS_DEBUG )
set(boost_Boost_coroutine_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_coroutine_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_coroutine_RES_DIRS_DEBUG )
set(boost_Boost_coroutine_DEFINITIONS_DEBUG )
set(boost_Boost_coroutine_OBJECTS_DEBUG )
set(boost_Boost_coroutine_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_coroutine_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_coroutine_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_coroutine_LIBS_DEBUG boost_coroutine)
set(boost_Boost_coroutine_SYSTEM_LIBS_DEBUG )
set(boost_Boost_coroutine_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_coroutine_FRAMEWORKS_DEBUG )
set(boost_Boost_coroutine_DEPENDENCIES_DEBUG Boost::context Boost::exception Boost::system boost::_libboost)
set(boost_Boost_coroutine_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_coroutine_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_coroutine_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_coroutine_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_coroutine_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_coroutine_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_coroutine_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_coroutine_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_coroutine_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_coroutine_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::cobalt VARIABLES ############################################

set(boost_Boost_cobalt_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_cobalt_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_cobalt_BIN_DIRS_DEBUG )
set(boost_Boost_cobalt_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_cobalt_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_cobalt_RES_DIRS_DEBUG )
set(boost_Boost_cobalt_DEFINITIONS_DEBUG )
set(boost_Boost_cobalt_OBJECTS_DEBUG )
set(boost_Boost_cobalt_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_cobalt_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_cobalt_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_cobalt_LIBS_DEBUG boost_cobalt)
set(boost_Boost_cobalt_SYSTEM_LIBS_DEBUG )
set(boost_Boost_cobalt_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_cobalt_FRAMEWORKS_DEBUG )
set(boost_Boost_cobalt_DEPENDENCIES_DEBUG Boost::container Boost::context Boost::system boost::_libboost)
set(boost_Boost_cobalt_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_cobalt_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_cobalt_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_cobalt_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_cobalt_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_cobalt_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_cobalt_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_cobalt_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_cobalt_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_cobalt_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::chrono VARIABLES ############################################

set(boost_Boost_chrono_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_chrono_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_chrono_BIN_DIRS_DEBUG )
set(boost_Boost_chrono_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_chrono_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_chrono_RES_DIRS_DEBUG )
set(boost_Boost_chrono_DEFINITIONS_DEBUG )
set(boost_Boost_chrono_OBJECTS_DEBUG )
set(boost_Boost_chrono_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_chrono_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_chrono_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_chrono_LIBS_DEBUG boost_chrono)
set(boost_Boost_chrono_SYSTEM_LIBS_DEBUG )
set(boost_Boost_chrono_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_chrono_FRAMEWORKS_DEBUG )
set(boost_Boost_chrono_DEPENDENCIES_DEBUG Boost::system boost::_libboost)
set(boost_Boost_chrono_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_chrono_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_chrono_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_chrono_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_chrono_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_chrono_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_chrono_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_chrono_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_chrono_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_chrono_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::timer VARIABLES ############################################

set(boost_Boost_timer_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_timer_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_timer_BIN_DIRS_DEBUG )
set(boost_Boost_timer_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_timer_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_timer_RES_DIRS_DEBUG )
set(boost_Boost_timer_DEFINITIONS_DEBUG )
set(boost_Boost_timer_OBJECTS_DEBUG )
set(boost_Boost_timer_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_timer_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_timer_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_timer_LIBS_DEBUG boost_timer)
set(boost_Boost_timer_SYSTEM_LIBS_DEBUG )
set(boost_Boost_timer_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_timer_FRAMEWORKS_DEBUG )
set(boost_Boost_timer_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_timer_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_timer_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_timer_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_timer_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_timer_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_timer_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_timer_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_timer_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_timer_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_timer_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::system VARIABLES ############################################

set(boost_Boost_system_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_system_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_system_BIN_DIRS_DEBUG )
set(boost_Boost_system_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_system_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_system_RES_DIRS_DEBUG )
set(boost_Boost_system_DEFINITIONS_DEBUG )
set(boost_Boost_system_OBJECTS_DEBUG )
set(boost_Boost_system_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_system_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_system_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_system_LIBS_DEBUG )
set(boost_Boost_system_SYSTEM_LIBS_DEBUG )
set(boost_Boost_system_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_system_FRAMEWORKS_DEBUG )
set(boost_Boost_system_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_system_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_system_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_system_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_system_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_system_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_system_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_system_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_system_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_system_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_system_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::serialization VARIABLES ############################################

set(boost_Boost_serialization_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_serialization_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_serialization_BIN_DIRS_DEBUG )
set(boost_Boost_serialization_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_serialization_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_serialization_RES_DIRS_DEBUG )
set(boost_Boost_serialization_DEFINITIONS_DEBUG )
set(boost_Boost_serialization_OBJECTS_DEBUG )
set(boost_Boost_serialization_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_serialization_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_serialization_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_serialization_LIBS_DEBUG boost_serialization)
set(boost_Boost_serialization_SYSTEM_LIBS_DEBUG )
set(boost_Boost_serialization_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_serialization_FRAMEWORKS_DEBUG )
set(boost_Boost_serialization_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_serialization_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_serialization_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_serialization_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_serialization_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_serialization_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_serialization_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_serialization_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_serialization_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_serialization_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_serialization_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::regex VARIABLES ############################################

set(boost_Boost_regex_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_regex_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_regex_BIN_DIRS_DEBUG )
set(boost_Boost_regex_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_regex_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_regex_RES_DIRS_DEBUG )
set(boost_Boost_regex_DEFINITIONS_DEBUG )
set(boost_Boost_regex_OBJECTS_DEBUG )
set(boost_Boost_regex_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_regex_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_regex_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_regex_LIBS_DEBUG boost_regex)
set(boost_Boost_regex_SYSTEM_LIBS_DEBUG )
set(boost_Boost_regex_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_regex_FRAMEWORKS_DEBUG )
set(boost_Boost_regex_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_regex_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_regex_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_regex_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_regex_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_regex_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_regex_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_regex_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_regex_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_regex_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_regex_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::program_options VARIABLES ############################################

set(boost_Boost_program_options_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_program_options_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_program_options_BIN_DIRS_DEBUG )
set(boost_Boost_program_options_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_program_options_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_program_options_RES_DIRS_DEBUG )
set(boost_Boost_program_options_DEFINITIONS_DEBUG )
set(boost_Boost_program_options_OBJECTS_DEBUG )
set(boost_Boost_program_options_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_program_options_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_program_options_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_program_options_LIBS_DEBUG boost_program_options)
set(boost_Boost_program_options_SYSTEM_LIBS_DEBUG )
set(boost_Boost_program_options_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_program_options_FRAMEWORKS_DEBUG )
set(boost_Boost_program_options_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_program_options_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_program_options_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_program_options_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_program_options_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_program_options_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_program_options_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_program_options_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_program_options_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_program_options_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_program_options_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::math VARIABLES ############################################

set(boost_Boost_math_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_math_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_math_BIN_DIRS_DEBUG )
set(boost_Boost_math_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_math_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_math_RES_DIRS_DEBUG )
set(boost_Boost_math_DEFINITIONS_DEBUG )
set(boost_Boost_math_OBJECTS_DEBUG )
set(boost_Boost_math_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_math_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_math_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_math_LIBS_DEBUG )
set(boost_Boost_math_SYSTEM_LIBS_DEBUG )
set(boost_Boost_math_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_math_FRAMEWORKS_DEBUG )
set(boost_Boost_math_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_math_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_math_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_math_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_math_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::exception VARIABLES ############################################

set(boost_Boost_exception_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_exception_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_exception_BIN_DIRS_DEBUG )
set(boost_Boost_exception_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_exception_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_exception_RES_DIRS_DEBUG )
set(boost_Boost_exception_DEFINITIONS_DEBUG )
set(boost_Boost_exception_OBJECTS_DEBUG )
set(boost_Boost_exception_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_exception_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_exception_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_exception_LIBS_DEBUG boost_exception)
set(boost_Boost_exception_SYSTEM_LIBS_DEBUG )
set(boost_Boost_exception_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_exception_FRAMEWORKS_DEBUG )
set(boost_Boost_exception_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_exception_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_exception_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_exception_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_exception_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_exception_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_exception_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_exception_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_exception_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_exception_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_exception_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::date_time VARIABLES ############################################

set(boost_Boost_date_time_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_date_time_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_date_time_BIN_DIRS_DEBUG )
set(boost_Boost_date_time_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_date_time_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_date_time_RES_DIRS_DEBUG )
set(boost_Boost_date_time_DEFINITIONS_DEBUG )
set(boost_Boost_date_time_OBJECTS_DEBUG )
set(boost_Boost_date_time_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_date_time_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_date_time_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_date_time_LIBS_DEBUG boost_date_time)
set(boost_Boost_date_time_SYSTEM_LIBS_DEBUG )
set(boost_Boost_date_time_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_date_time_FRAMEWORKS_DEBUG )
set(boost_Boost_date_time_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_date_time_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_date_time_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_date_time_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_date_time_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_date_time_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_date_time_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_date_time_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_date_time_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_date_time_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_date_time_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::context VARIABLES ############################################

set(boost_Boost_context_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_context_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_context_BIN_DIRS_DEBUG )
set(boost_Boost_context_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_context_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_context_RES_DIRS_DEBUG )
set(boost_Boost_context_DEFINITIONS_DEBUG )
set(boost_Boost_context_OBJECTS_DEBUG )
set(boost_Boost_context_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_context_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_context_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_context_LIBS_DEBUG boost_context)
set(boost_Boost_context_SYSTEM_LIBS_DEBUG )
set(boost_Boost_context_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_context_FRAMEWORKS_DEBUG )
set(boost_Boost_context_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_context_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_context_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_context_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_context_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_context_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_context_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_context_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_context_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_context_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_context_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::container VARIABLES ############################################

set(boost_Boost_container_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_container_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_container_BIN_DIRS_DEBUG )
set(boost_Boost_container_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_container_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_container_RES_DIRS_DEBUG )
set(boost_Boost_container_DEFINITIONS_DEBUG )
set(boost_Boost_container_OBJECTS_DEBUG )
set(boost_Boost_container_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_container_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_container_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_container_LIBS_DEBUG boost_container)
set(boost_Boost_container_SYSTEM_LIBS_DEBUG )
set(boost_Boost_container_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_container_FRAMEWORKS_DEBUG )
set(boost_Boost_container_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_container_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_container_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_container_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_container_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_container_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_container_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_container_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_container_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_container_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_container_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::charconv VARIABLES ############################################

set(boost_Boost_charconv_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_charconv_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_charconv_BIN_DIRS_DEBUG )
set(boost_Boost_charconv_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_charconv_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_charconv_RES_DIRS_DEBUG )
set(boost_Boost_charconv_DEFINITIONS_DEBUG )
set(boost_Boost_charconv_OBJECTS_DEBUG )
set(boost_Boost_charconv_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_charconv_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_charconv_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_charconv_LIBS_DEBUG boost_charconv)
set(boost_Boost_charconv_SYSTEM_LIBS_DEBUG )
set(boost_Boost_charconv_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_charconv_FRAMEWORKS_DEBUG )
set(boost_Boost_charconv_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_charconv_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_charconv_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_charconv_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_charconv_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_charconv_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_charconv_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_charconv_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_charconv_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_charconv_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_charconv_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::atomic VARIABLES ############################################

set(boost_Boost_atomic_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_atomic_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_atomic_BIN_DIRS_DEBUG )
set(boost_Boost_atomic_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_atomic_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_atomic_RES_DIRS_DEBUG )
set(boost_Boost_atomic_DEFINITIONS_DEBUG )
set(boost_Boost_atomic_OBJECTS_DEBUG )
set(boost_Boost_atomic_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_atomic_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_atomic_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_atomic_LIBS_DEBUG boost_atomic)
set(boost_Boost_atomic_SYSTEM_LIBS_DEBUG )
set(boost_Boost_atomic_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_atomic_FRAMEWORKS_DEBUG )
set(boost_Boost_atomic_DEPENDENCIES_DEBUG boost::_libboost)
set(boost_Boost_atomic_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_atomic_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_atomic_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_atomic_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_atomic_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_atomic_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_atomic_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_atomic_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_atomic_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_atomic_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT boost::_libboost VARIABLES ############################################

set(boost_boost__libboost_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_boost__libboost_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_boost__libboost_BIN_DIRS_DEBUG )
set(boost_boost__libboost_LIBRARY_TYPE_DEBUG STATIC)
set(boost_boost__libboost_IS_HOST_WINDOWS_DEBUG 0)
set(boost_boost__libboost_RES_DIRS_DEBUG )
set(boost_boost__libboost_DEFINITIONS_DEBUG )
set(boost_boost__libboost_OBJECTS_DEBUG )
set(boost_boost__libboost_COMPILE_DEFINITIONS_DEBUG )
set(boost_boost__libboost_COMPILE_OPTIONS_C_DEBUG "")
set(boost_boost__libboost_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_boost__libboost_LIBS_DEBUG )
set(boost_boost__libboost_SYSTEM_LIBS_DEBUG )
set(boost_boost__libboost_FRAMEWORK_DIRS_DEBUG )
set(boost_boost__libboost_FRAMEWORKS_DEBUG )
set(boost_boost__libboost_DEPENDENCIES_DEBUG Boost::headers)
set(boost_boost__libboost_SHARED_LINK_FLAGS_DEBUG )
set(boost_boost__libboost_EXE_LINK_FLAGS_DEBUG )
set(boost_boost__libboost_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_boost__libboost_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_boost__libboost_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_boost__libboost_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_boost__libboost_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_boost__libboost_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_boost__libboost_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_boost__libboost_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::boost VARIABLES ############################################

set(boost_Boost_boost_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_boost_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_boost_BIN_DIRS_DEBUG )
set(boost_Boost_boost_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_boost_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_boost_RES_DIRS_DEBUG )
set(boost_Boost_boost_DEFINITIONS_DEBUG )
set(boost_Boost_boost_OBJECTS_DEBUG )
set(boost_Boost_boost_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_boost_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_boost_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_boost_LIBS_DEBUG )
set(boost_Boost_boost_SYSTEM_LIBS_DEBUG )
set(boost_Boost_boost_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_boost_FRAMEWORKS_DEBUG )
set(boost_Boost_boost_DEPENDENCIES_DEBUG Boost::headers)
set(boost_Boost_boost_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_boost_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_boost_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_boost_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_boost_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_boost_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_boost_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_boost_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_boost_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_boost_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::headers VARIABLES ############################################

set(boost_Boost_headers_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_headers_LIB_DIRS_DEBUG )
set(boost_Boost_headers_BIN_DIRS_DEBUG )
set(boost_Boost_headers_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_headers_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_headers_RES_DIRS_DEBUG )
set(boost_Boost_headers_DEFINITIONS_DEBUG )
set(boost_Boost_headers_OBJECTS_DEBUG )
set(boost_Boost_headers_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_headers_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_headers_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_headers_LIBS_DEBUG )
set(boost_Boost_headers_SYSTEM_LIBS_DEBUG )
set(boost_Boost_headers_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_headers_FRAMEWORKS_DEBUG )
set(boost_Boost_headers_DEPENDENCIES_DEBUG Boost::diagnostic_definitions Boost::disable_autolinking Boost::dynamic_linking)
set(boost_Boost_headers_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_headers_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_headers_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_headers_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_headers_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_headers_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_headers_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_headers_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_headers_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_headers_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::dynamic_linking VARIABLES ############################################

set(boost_Boost_dynamic_linking_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_dynamic_linking_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_dynamic_linking_BIN_DIRS_DEBUG )
set(boost_Boost_dynamic_linking_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_dynamic_linking_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_dynamic_linking_RES_DIRS_DEBUG )
set(boost_Boost_dynamic_linking_DEFINITIONS_DEBUG )
set(boost_Boost_dynamic_linking_OBJECTS_DEBUG )
set(boost_Boost_dynamic_linking_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_dynamic_linking_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_dynamic_linking_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_dynamic_linking_LIBS_DEBUG )
set(boost_Boost_dynamic_linking_SYSTEM_LIBS_DEBUG )
set(boost_Boost_dynamic_linking_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_dynamic_linking_FRAMEWORKS_DEBUG )
set(boost_Boost_dynamic_linking_DEPENDENCIES_DEBUG )
set(boost_Boost_dynamic_linking_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_dynamic_linking_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_dynamic_linking_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_dynamic_linking_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_dynamic_linking_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_dynamic_linking_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_dynamic_linking_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_dynamic_linking_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_dynamic_linking_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_dynamic_linking_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::disable_autolinking VARIABLES ############################################

set(boost_Boost_disable_autolinking_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_disable_autolinking_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_disable_autolinking_BIN_DIRS_DEBUG )
set(boost_Boost_disable_autolinking_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_disable_autolinking_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_disable_autolinking_RES_DIRS_DEBUG )
set(boost_Boost_disable_autolinking_DEFINITIONS_DEBUG )
set(boost_Boost_disable_autolinking_OBJECTS_DEBUG )
set(boost_Boost_disable_autolinking_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_disable_autolinking_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_disable_autolinking_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_disable_autolinking_LIBS_DEBUG )
set(boost_Boost_disable_autolinking_SYSTEM_LIBS_DEBUG )
set(boost_Boost_disable_autolinking_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_disable_autolinking_FRAMEWORKS_DEBUG )
set(boost_Boost_disable_autolinking_DEPENDENCIES_DEBUG )
set(boost_Boost_disable_autolinking_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_disable_autolinking_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_disable_autolinking_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_disable_autolinking_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_disable_autolinking_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_disable_autolinking_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_disable_autolinking_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_disable_autolinking_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_disable_autolinking_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_disable_autolinking_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Boost::diagnostic_definitions VARIABLES ############################################

set(boost_Boost_diagnostic_definitions_INCLUDE_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/include")
set(boost_Boost_diagnostic_definitions_LIB_DIRS_DEBUG "${boost_PACKAGE_FOLDER_DEBUG}/lib")
set(boost_Boost_diagnostic_definitions_BIN_DIRS_DEBUG )
set(boost_Boost_diagnostic_definitions_LIBRARY_TYPE_DEBUG STATIC)
set(boost_Boost_diagnostic_definitions_IS_HOST_WINDOWS_DEBUG 0)
set(boost_Boost_diagnostic_definitions_RES_DIRS_DEBUG )
set(boost_Boost_diagnostic_definitions_DEFINITIONS_DEBUG )
set(boost_Boost_diagnostic_definitions_OBJECTS_DEBUG )
set(boost_Boost_diagnostic_definitions_COMPILE_DEFINITIONS_DEBUG )
set(boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_C_DEBUG "")
set(boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_CXX_DEBUG "")
set(boost_Boost_diagnostic_definitions_LIBS_DEBUG )
set(boost_Boost_diagnostic_definitions_SYSTEM_LIBS_DEBUG )
set(boost_Boost_diagnostic_definitions_FRAMEWORK_DIRS_DEBUG )
set(boost_Boost_diagnostic_definitions_FRAMEWORKS_DEBUG )
set(boost_Boost_diagnostic_definitions_DEPENDENCIES_DEBUG )
set(boost_Boost_diagnostic_definitions_SHARED_LINK_FLAGS_DEBUG )
set(boost_Boost_diagnostic_definitions_EXE_LINK_FLAGS_DEBUG )
set(boost_Boost_diagnostic_definitions_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(boost_Boost_diagnostic_definitions_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_diagnostic_definitions_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_diagnostic_definitions_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_diagnostic_definitions_EXE_LINK_FLAGS_DEBUG}>
)
set(boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_C_DEBUG}>")