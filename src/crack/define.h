/***
 * define.h
 * Part of the LibPST project
 * Written by David Smith
 *            dave.s@earthcorp.com
 */

//#define DEBUG_ALL
#ifndef __DEFINEH_H
#define __DEFINEH_H

#ifdef DEBUG_ALL
#define DEBUG_MODE_GEN
#define DEBUGPRINT
#define DEBUG_MODE_WARN
#define DEBUG_MODE_READ
#define DEBUG_MODE_EMAIL
#define DEBUG_MODE_MAIN
#define DEBUG_MODE_INDEX
#define DEBUG_MODE_CODE
#define DEBUG_MODE_INFO
#define DEBUG_MODE_HEXDUMP
#define DEBUG_MODE_FUNC
//#define DEBUG_MODE_DECRYPT
#endif

//number of items to save in memory between writes
#define DEBUG_MAX_ITEMS 0

#define DEBUG_FILE_NO  1
#define DEBUG_INDEX_NO 2
#define DEBUG_EMAIL_NO 3
#define DEBUG_WARN_NO  4
#define DEBUG_READ_NO  5
#define DEBUG_INFO_NO  6
#define DEBUG_MAIN_NO  7
#define DEBUG_DECRYPT_NO 8
#define DEBUG_FUNC_NO 10
#define DEBUG_HEXDUMP_NO 11

//variable number of arguments to this macro. will expand them into 
// ## args, then exit with status of 1
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

#ifdef __LINUX__
#include <netinet/in.h>
#include <unistd.h>
#endif


void _pst_debug(char *fmt, ...);
void _pst_debug_hexdump(FILE* out, unsigned char* buf, size_t size, int col);
void _pst_debug_hexprint(char *data, int size);

void _debug_init(char *fname);
void _debug_msg_info (int line, char *file, int type);
void _debug_hexdump(char *x, int y, int cols);
void _debug_func(char *function);
void _debug_func_ret();
void _debug_close(void);
void _debug_write();

void * xmalloc(size_t size);

#define LOGSTOP() {MESSAGESTOP();DEBUGSTOP();}

#ifdef DEBUGPRINT
#define DEBUG_PRINT(x) _pst_debug x;
#else
#define DEBUG_PRINT(x) {}
#endif

#define DIE(x) {}
#define DEBUG_RET(x) {}
#define WARN(x) {}
#define DEBUG_ENT(x) {}
#define DEBUG(x) {}
#define DEBUG_INDEX(x) {}
#define DEBUG_EMAIL(x) {}
#define DEBUG_EMAIL_HEXPRINT(x,y) {}
#define DEBUG_WARN(x) {}
#define DEBUG_READ(x) {}
#define DEBUG_INFO(x) {}
#define DEBUG_MAIN(x) {}
#define DEBUG_CODE(x) {}
#define DEBUG_DECRYPT(x) {}

#ifdef DEBUG_MODE_HEXDUMP
#define DEBUG_HEXDUMP(x, s)\
  {_debug_msg_info(__LINE__, __FILE__, DEBUG_HEXDUMP_NO);\
   _debug_hexdump(x, s, 0x10);}
#define DEBUG_HEXDUMPC(x, s, c)\
  {_debug_msg_info(__LINE__, __FILE__, DEBUG_HEXDUMP_NO);\
   _debug_hexdump(x, s, c);}
#else
#define DEBUG_HEXDUMP(x, s) {}
#define DEBUG_HEXDUMPC(x, s, c) {}
#endif

#ifdef DEBUG_MODE_FUNC
# define DEBUG_ENT(x) {}
# define DEBUG_RET() {}
#endif

#define DEBUG_INIT(fname) {_debug_init(fname);}
#define DEBUG_CLOSE() {_debug_close();}
#define DEBUG_REGISTER_CLOSE() {if(atexit(_debug_close)!=0) fprintf(stderr, "Error registering atexit function\n");}

#define RET_DERROR(res, ret_val, x)\
	if (res) { DIE(x);}

#define RET_ERROR(res, ret_val)\
	if (res) {return ret_val;}	

#define DEBUG_VERSION 1
struct _debug_file_rec_m {
  unsigned short int funcname;
  unsigned short int filename;
  unsigned short int text;
  unsigned short int end;
  unsigned int line;
  unsigned int type;
};

struct _debug_file_rec_l {
  unsigned int funcname;
  unsigned int filename;
  unsigned int text;
  unsigned int end;
  unsigned int line;
  unsigned int type;
};

#endif //DEFINEH_H
