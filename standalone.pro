QT += gui webchannel widgets websockets

CONFIG += warn_on

SOURCES += \
    main.cpp \
    dialog.cpp \
    shared/websockettransport.cpp \
    shared/websocketclientwrapper.cpp

HEADERS += \
    core.h \
    dialog.h \
    shared/websockettransport.h \
    shared/websocketclientwrapper.h

FORMS += \
    dialog.ui

DEFINES += "BUILD_DIR=\"\\\""$$OUT_PWD"\\\"\""
DEFINES += "PWD_DIR=\"\\\""$$PWD"\\\"\""

# DEFINES += QT_DEPRECATED_WARNINGS

exampleassets.files += \
    index.html
# exampleassets.path = $$[QT_INSTALL_EXAMPLES]/webchannel/standalone
exampleassets.path = standalone
include(exampleassets.pri)

target.path = standalone
# INSTALLS += target
