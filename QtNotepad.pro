QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
# 打印机模块
qtHaveModule(printsupport): QT+=printsupport
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    mycodeeditor.cpp \
    myfilesystemmodel.cpp \
    myhighlighter.cpp \
    mytextedit.cpp \
    mytexteditbycode.cpp

HEADERS += \
    mainwindow.h \
    mycodeeditor.h \
    myfilesystemmodel.h \
    myhighlighter.h \
    mytextedit.h \
    mytexteditbycode.h

FORMS += \
    mainwindow.ui \
    mytextedit.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    code.qrc \
    icon.qrc
#打包后的图标
RC_ICONS =logo.ico
