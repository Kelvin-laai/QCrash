/****************************************************************************
**
** Copyright (C) 2007-2015 Speedovation
** Contact: Speedovation Lab (info@speedovation.com)
**
** KineticWing IDE CrashHandler
** http:// kineticwing.com
** This file is part of the core classes of the KiWi Editor (IDE)
**
** Author: Yash Bhardwaj
** License : Apache License 2.0
**
** All rights are reserved.  CrashDump
*/


#ifndef QCRASH_H
#define QCRASH_H

#include <QtCore/QString>

#include <QtGlobal>

// Define QCRASH_STATIC in you applikation if you want to link against the
// static version of QCRASH

#ifdef QCRASH_STATIC
#   define QCRASH_EXPORT
#else
#  if defined(QCRASH_LIBRARY)
#    define QCRASH_EXPORT Q_DECL_EXPORT
#  else
#    define QCRASH_EXPORT Q_DECL_IMPORT
#  endif
#endif

class QCrashPrivate;
class QCRASH_EXPORT QCrash
{
public:
    static QCrash* Instance();
    void setReportPath(const QString&  reportPath);
    void setReporter(const QString& reporter);
    void setReportCrashesToSystem(bool report);

    bool writeMinidump();

    static const char* version();
    static int major();
    static int minor();
    static int patch();
    #if defined(Q_OS_WIN)
    static int build();
    #endif

private:
    QCrash();
    ~QCrash();
    Q_DISABLE_COPY(QCrash)
    QCrashPrivate* d;
};



#endif	// QCRASH_H
