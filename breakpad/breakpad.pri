#  Apache 2.0 License
#  copyright 2015 Speedovation, Yash Pal, yash@speedovation.com


INCLUDEPATH += $$PWD/
INCLUDEPATH += $$PWD/src

# Windows
win32{
    CONFIG(release, debug|release) {
        QMAKE_CXXFLAGS_RELEASE -= -O2
        QMAKE_CXXFLAGS_RELEASE += -O0
        QMAKE_CXXFLAGS_RELEASE += /Zi
        QMAKE_LFLAGS_RELEASE   += /DEBUG /OPT:REF /OPT:ICF
        # QMAKE_LFLAGS_RELEASE += $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO

        # QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
        # QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
    }
}
# Unix
unix{
    QMAKE_CXXFLAGS += -g
    QMAKE_CXXFLAGS += -std=c++0x
}


# Windows
win32{
   HEADERS += \
        $$PWD/src/common/windows/string_utils-inl.h                         \
        $$PWD/src/common/windows/guid_string.h                              \
        $$PWD/src/client/windows/handler/exception_handler.h                \
        $$PWD/src/client/windows/common/ipc_protocol.h                      \
        $$PWD/src/google_breakpad/common/minidump_format.h                  \
        $$PWD/src/google_breakpad/common/breakpad_types.h                   \
        $$PWD/src/client/windows/crash_generation/crash_generation_client.h \
        $$PWD/src/common/scoped_ptr.h


    SOURCES += \
        $$PWD/src/client/windows/handler/exception_handler.cc                \
        $$PWD/src/common/windows/string_utils.cc                             \
        $$PWD/src/common/windows/guid_string.cc                              \
        $$PWD/src/client/windows/crash_generation/crash_generation_client.cc

}
# Unix
unix{
    HEADERS += \
        $$PWD/src/client/minidump_file_writer-inl.h          \
        $$PWD/src/client/minidump_file_writer.h              \
        $$PWD/src/common/using_std_string.h                  \
        $$PWD/src/common/memory.h                            \
        $$PWD/src/common/basictypes.h                        \
        $$PWD/src/common/memory_range.h                      \
        $$PWD/src/common/string_conversion.h                 \
        $$PWD/src/common/convert_UTF.h                       \
        $$PWD/src/google_breakpad/common/minidump_format.h   \
        $$PWD/src/google_breakpad/common/minidump_size.h     \
        $$PWD/src/google_breakpad/common/breakpad_types.h    \
        $$PWD/src/common/scoped_ptr.h                        \
        $$PWD/src/common/md5.h

    SOURCES += \
        $$PWD/src/client/minidump_file_writer.cc              \
        $$PWD/src/common/string_conversion.cc                 \
        $$PWD/src/common/convert_UTF.c                        \
        $$PWD/src/common/md5.cc

    QMAKE_CXXFLAGS+=-g
}
#linux
linux{
    HEADERS += \
        $$PWD/src/client/linux/handler/exception_handler.h                \
        $$PWD/src/client/linux/minidump_writer/cpu_set.h                  \
        $$PWD/src/client/linux/minidump_writer/proc_cpuinfo_reader.h      \
        $$PWD/src/client/linux/crash_generation/crash_generation_client.h \
        $$PWD/src/client/linux/handler/minidump_descriptor.h              \
        $$PWD/src/client/linux/minidump_writer/minidump_writer.h          \
        $$PWD/src/client/linux/minidump_writer/line_reader.h              \
        $$PWD/src/client/linux/minidump_writer/linux_dumper.h             \
        $$PWD/src/client/linux/minidump_writer/linux_ptrace_dumper.h      \
        $$PWD/src/client/linux/minidump_writer/directory_reader.h         \
        $$PWD/src/client/linux/log/log.h                                  \
        $$PWD/src/common/linux/linux_libc_support.h                       \
        $$PWD/src/common/linux/eintr_wrapper.h                            \
        $$PWD/src/common/linux/ignore_ret.h                               \
        $$PWD/src/common/linux/file_id.h                                  \
        $$PWD/src/common/linux/memory_mapped_file.h                       \
        $$PWD/src/common/linux/safe_readlink.h                            \
        $$PWD/src/common/linux/guid_creator.h                             \
        $$PWD/src/common/linux/elfutils.h                                 \
        $$PWD/src/common/linux/elfutils-inl.h                             \
        $$PWD/src/common/linux/elf_gnu_compat.h                           \
        $$PWD/src/client/linux/dump_writer_common/thread_info.h           \
        $$PWD/src/client/linux/dump_writer_common/mapping_info.h          \
        $$PWD/src/client/linux/dump_writer_common/raw_context_cpu.h       \
        $$PWD/src/client/linux/microdump_writer/microdump_writer.h        \
        $$PWD/src/client/linux/minidump_writer/minidump_writer.h          \
        $$PWD/src/client/linux/dump_writer_common/ucontext_reader.h       \
        $$PWD/src/client/linux/dump_writer_common/seccomp_unwinder.h      \
        $$PWD/src/client/linux/dump_writer_common/thread_info.h           \
        $$PWD/src/third_party/lss/linux_syscall_support.h



    SOURCES +=  \
        $$PWD/src/client/linux/crash_generation/crash_generation_client.cc \
        $$PWD/src/client/linux/handler/exception_handler.cc                \
        $$PWD/src/client/linux/handler/minidump_descriptor.cc              \
        $$PWD/src/client/linux/minidump_writer/minidump_writer.cc          \
        $$PWD/src/client/linux/minidump_writer/linux_dumper.cc             \
        $$PWD/src/client/linux/minidump_writer/linux_ptrace_dumper.cc      \
        $$PWD/src/client/linux/microdump_writer/microdump_writer.cc        \
        $$PWD/src/client/linux/dump_writer_common/ucontext_reader.cc       \
        $$PWD/src/client/linux/dump_writer_common/seccomp_unwinder.cc      \
        $$PWD/src/client/linux/dump_writer_common/thread_info.cc           \
        $$PWD/src/client/linux/handler/exception_handler.h                 \
        $$PWD/src/client/linux/log/log.cc                                  \
        $$PWD/src/common/linux/linux_libc_support.cc                       \
        $$PWD/src/common/linux/file_id.cc                                  \
        $$PWD/src/common/linux/memory_mapped_file.cc                       \
        $$PWD/src/common/linux/safe_readlink.cc                            \
        $$PWD/src/common/linux/guid_creator.cc                             \
        $$PWD/src/common/linux/elfutils.cc

    #breakpad app need debug info inside binaries
}

mac{

    HEADERS += \
        $$PWD/src/client/mac/handler/exception_handler.h                 \
        $$PWD/src/client/mac/handler/minidump_generator.h                \
        $$PWD/src/client/mac/handler/dynamic_images.h                    \
        $$PWD/src/client/mac/handler/breakpad_nlist_64.h                 \
        $$PWD/src/client/mac/crash_generation/crash_generation_client.h  \
        $$PWD/src/common/mac/bootstrap_compat.h                          \
        $$PWD/src/common/mac/macho_utilities.h                           \
        $$PWD/src/common/mac/scoped_task_suspend-inl.h                   \
        $$PWD/src/common/mac/file_id.h                                   \
        $$PWD/src/common/mac/macho_id.h                                  \
        $$PWD/src/common/mac/macho_id.h                                  \
        $$PWD/src/common/mac/macho_walker.h                              \
        $$PWD/src/common/mac/string_utilities.h                          \
        $$PWD/src/google_breakpad/common/minidump_exception_mac.h

    SOURCES += \
        $$PWD/src/client/mac/handler/exception_handler.cc                \
        $$PWD/src/client/mac/handler/minidump_generator.cc               \
        $$PWD/src/client/mac/handler/dynamic_images.cc                   \
        $$PWD/src/client/mac/crash_generation/crash_generation_client.cc \
        $$PWD/src/client/mac/handler/breakpad_nlist_64.cc                \
        $$PWD/src/common/mac/file_id.cc                                  \
        $$PWD/src/common/mac/macho_utilities.cc                          \
        $$PWD/src/common/mac/macho_id.cc                                 \
        $$PWD/src/common/mac/macho_reader.cc                             \
        $$PWD/src/common/mac/string_utilities.cc                         \
        $$PWD/src/common/mac/bootstrap_compat.cc                         \
        $$PWD/src/common/mac/macho_walker.cc


    OBJECTIVE_HEADERS += \
        $$PWD/src/common/mac/MachIPC.h

    OBJECTIVE_SOURCES += \
        $$PWD/src/common/mac/MachIPC.mm

}


