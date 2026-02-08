TEMPLATE = subdirs

SUBDIRS += QCrash
SUBDIRS += test


QCrash.subdir = $$PWD/src
test.subdir   = $$PWD/test


QCrash.depends +=
test.depends   +=
