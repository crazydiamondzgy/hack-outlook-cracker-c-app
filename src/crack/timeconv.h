#ifndef __TIMECONV_H
#define __TIMECONV_H

#ifndef _WIN32
  typedef unsigned int DWORD;
  typedef unsigned short int WORD;
  typedef unsigned char BYTE;
  typedef unsigned int UINT32;

# pragma pack (1)

# ifndef FILETIME_DEFINED
# define FILETIME_DEFINED
  /*Win32 Filetime struct - copied from WINE*/
  typedef struct {
	  unsigned int dwLowDateTime;
    unsigned int dwHighDateTime;
  } FILETIME;
# endif
#endif // _WIN32

#include <windows.h>
#include <time.h>

#ifdef __cplusplus
extern "C" {
#endif
  time_t fileTimeToUnixTime( const FILETIME *filetime, DWORD *remainder );

  char * fileTimeToAscii (const FILETIME *filetime);

  struct tm * fileTimeToStructTM (const FILETIME *filetime);
  
#ifdef __cplusplus
}
#endif

#endif
