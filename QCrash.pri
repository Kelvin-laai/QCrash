#  Apache 2.0 License
#  copyright 2015 Speedovation, Yash Pal, yash@speedovation.com


INCLUDEPATH += $$PWD/include

HEADERS += $$PWD/include/QCrash.h

LIBS += -L"$$PWD/lib"
CONFIG(debug, debug|release) {
    LIBS += -l"QCrashd"
} else {
    LIBS += -l"QCrash"
} # CONFIG(debug, debug|release)
