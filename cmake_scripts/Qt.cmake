# Qt base script (pretty much only for WIN32!)

if(WIN32)
	# On Windows, the install dir must be specified, as it's not standardized
	if(DEFINED QT_BASEDIR)
		# Add it to the prefix path so find_package can find it
		list(APPEND CMAKE_PREFIX_PATH ${QT_BASEDIR})
		set(QT_INCLUDE ${QT_BASEDIR}/include)
		# CMake has an odd policy that links a special link lib for Qt on newer versions of CMake. Enable it so we don't get spammed, and I get to write less
		cmake_policy(SET CMP0020 NEW)
	else()
		message(FATAL_ERROR "--!@ Please define your QT install dir with -DQT_BASEDIR=C:/your/qt6/here")
	endif()
	message("Using ${QT_INCLUDE} as our Qt include dir")
endif()	

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
