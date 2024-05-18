IF(LMMS_BUILD_LINUX)
	if(LMMS_HOST_X86_64)
		set(CXX_FLAGS -m64)
	endif()
	ExternalProject_Add(NativeLinuxRemoteVstPlugin64
		"${EXTERNALPROJECT_ARGS}"
		CMAKE_ARGS
			"${EXTERNALPROJECT_CMAKE_ARGS}"
			"-DCMAKE_CXX_FLAGS=${CXX_FLAGS} -DNATIVE_LINUX_VST"
			"-DCMAKE_C_FLAGS=-DNATIVE_LINUX_VST"
	)
	INSTALL(PROGRAMS "${CMAKE_CURRENT_BINARY_DIR}/../NativeLinuxRemoteVstPlugin64" DESTINATION "${PLUGIN_DIR}")
ENDIF()