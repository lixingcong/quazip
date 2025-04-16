QT += testlib network
QT -= gui

TEMPLATE=app

lessThan(QT_MAJOR_VERSION, 5): QMAKE_CXXFLAGS += -std=c++17

unix:!macx: LIBS += -L$$OUT_PWD/../quazip/ -lquazip

INCLUDEPATH += $$PWD/../quazip
DEPENDPATH += $$PWD/../quazip

RESOURCES += \
	qztest.qrc

HEADERS += \
	qztest.h \
	testjlcompress.h \
	testjlcp_compress.h \
	testjlcp_extract.h \
	testquachecksum32.h \
	testquagzipfile.h \
	testquaziodevice.h \
	testquazip.h \
	testquazipdir.h \
	testquazipfile.h \
	testquazipfileinfo.h \
	testquazipnewinfo.h

SOURCES += \
	qztest.cpp \
	testjlcompress.cpp \
	testjlcp_compress.cpp \
	testjlcp_extract.cpp \
	testquachecksum32.cpp \
	testquagzipfile.cpp \
	testquaziodevice.cpp \
	testquazip.cpp \
	testquazipdir.cpp \
	testquazipfile.cpp \
	testquazipfileinfo.cpp \
	testquazipnewinfo.cpp


