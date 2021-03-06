#-------------------------------------------------
#
# Project created by QtCreator 2017-03-24T09:46:55
#
#-------------------------------------------------
QT +=

#greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

DEFINES += LICENSE_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(../../library.pri)
CONFIG	-= warn_on thread
include(license-lib.pri)
#include(rapidxml-1.13/rapidxml.pri)

unix {
    target.path = /usr/lib
    INSTALLS += target
}

win32 {
DEFINES +=  WIN32 _WIN32 WAVELICENSE_DLL
LIBS	+= -lnetapi32
}

HAS_LOG{
DEFINES += LOG_LOG
}

DEFAULTCODEC    = GB2312
