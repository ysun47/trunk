isEmpty ( YADE_QMAKE_PATH ) {
error( "YADE_QMAKE_PATH internal qmake variable is not set, you should run for example qmake YADE_QMAKE_PATH=/usr/local, this will not work from inside kdevelop (when they will fix it?)" )
}


HEADERS += Threadable.hpp \
           ThreadSafe.hpp \
           ThreadSynchronizer.hpp \
           Threadable.tpp 
SOURCES += ThreadSafe.cpp \
           ThreadSynchronizer.cpp 
win32 {
TARGET = ../../../bin/yade-lib-threads
CONFIG += console
}
!win32 {
TARGET = ../../bin/yade-lib-threads
}

CONFIG += debug \
          thread \
warn_on \
dll
TEMPLATE = lib
INCLUDEPATH += $${YADE_QMAKE_PATH}/include

