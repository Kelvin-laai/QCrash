#  Apache 2.0 License
#  copyright 2015 Speedovation, Yash Pal, yash@speedovation.com

TEMPLATE = lib
CONFIG  += dll
TARGET   = QCrash
QT      -= gui

# DEFINES + QCRASH_STATIC

DESTDIR  = $$PWD/../lib/

#############################
# Compiler / Linker Options #
#############################

CONFIG(debug, debug|release) {
  TARGET = QxOrmd
} else {
  TARGET = QxOrm
} # CONFIG(debug, debug|release)


contains(DEFINES, QCRASH_STATIC) {
    CONFIG -= dll
    CONFIG += staticlib
    SOURCES += $$PWD/src/QCrash.cpp
    include($$PWD/breakpad/breakpad.pri)
} # contains(DEFINES, _QX_STATIC_BUILD)


include(version.pri)

INCLUDEPATH += $$PWD/../
INCLUDEPATH += $$PWD/../include

HEADERS += $$PWD/../include/QCrash.h

SOURCES += \
    $$PWD/QCrash.cpp

include($$PWD/../breakpad/breakpad.pri)

DISTFILES += \
    $$PWD/../README.md

