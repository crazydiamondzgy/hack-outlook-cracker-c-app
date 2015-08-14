# Microsoft Developer Studio Project File - Name="crack_outlook" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=crack_outlook - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "crack_outlook.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "crack_outlook.mak" CFG="crack_outlook - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "crack_outlook - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "crack_outlook - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/MD5", FVAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "crack_outlook - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "MODE_OUTLOOK" /FD /c
# SUBTRACT CPP /Fr /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386 /out:"../../bin/matrix-outlook-crack.exe" /fixed:no /OPT:NOWIN98
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "crack_outlook - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "MODE_OUTLOOK" /FD /GZ /c
# SUBTRACT CPP /Fr /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:windows /incremental:no /debug /machine:I386 /out:"../../bin/matrix-outlook-crack.exe" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "crack_outlook - Win32 Release"
# Name "crack_outlook - Win32 Debug"
# Begin Group "outlook"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\crack\debug.c
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\define.h
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\libpst.c
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\libpst.h
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\libstrfunc.c
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\libstrfunc.h
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\lspst.c
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\lzfu.c
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\lzfu.h
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\outlook.c
# End Source File
# Begin Source File

SOURCE=..\..\src\crack\timeconv.h
# End Source File
# End Group
# Begin Group "res"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\res\crack.ico
# End Source File
# Begin Source File

SOURCE=.\crack.rc
# End Source File
# Begin Source File

SOURCE=.\res\crack.rc2
# End Source File
# Begin Source File

SOURCE=..\..\src\resource.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\src\Crack.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\CrackDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\CrackDlg.h
# End Source File
# Begin Source File

SOURCE=..\..\src\utils.c
# End Source File
# Begin Source File

SOURCE=..\..\src\utils.h
# End Source File
# End Target
# End Project
