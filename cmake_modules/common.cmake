SET(CMAKE_BUILD_TYPE Release) # | Debug
SET(CMAKE_VERBOSE_MAKEFILE 1)
SET(CMAKE_OSX_ARCHITECTURES i386 x86_64)

FIND_PACKAGE(OpenCV REQUIRED
  HINTS
  "/usr/local/share/opencv"
  "/opt/opencv/share/opencv"
  "c:/OpenCV2.1"
  "c:/OpenCV2.2"
)

IF( NOT OpenCV_FOUND )
  MESSAGE( SEND_ERROR "Sikuli requires OpenCV" )
ENDIF()

IF( ( ${OpenCV_VERSION_MAJOR} LESS 2 ) OR
    ( ${OpenCV_VERSION_MAJOR} EQUAL 2 ) AND ( ${OpenCV_VERSION_MINOR} LESS 1
) )
  MESSAGE( SEND_ERROR "Siklui requires a recent version of OpenCV >= 2.1" )
ENDIF()

FIND_PATH(TESSERACT_DATA_DIR confsets
   "/opt/local/share/tessdata"
   "/usr/local/share/tessdata"
   "/usr/share/tesseract-ocr/tessdata"
   "/usr/share/tessdata"
   "c:/tesseract-2.04/tessdata"
)

IF(WIN32)
   FIND_PATH(TESSERACT_SRC_DIR ccmain
      "c:/tesseract-2.04"
   )

ENDIF()

message("Tesseract-OCR Data Path: ${TESSERACT_DATA_DIR}")

IF(UNIX AND NOT APPLE)
   SET(LINUX 1)
ENDIF()
