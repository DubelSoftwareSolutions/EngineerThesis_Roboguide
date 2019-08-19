/PROG  IRV_T_BASIC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 688;
CREATE		= DATE 17-11-08  TIME 19:14:46;
MODIFIED	= DATE 17-12-06  TIME 20:09:16;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 1152;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  UFRAME_NUM=9 ;
   2:  UTOOL_NUM=2 ;
   3:  !punkt robienia zdjecia ;
   4:J P[1] 100% FINE    ;
   5:  VISION RUN_FIND 'IRV_2D_PROCESS'    ;
   6:  VISION GET_OFFSET 'IRV_2D_PROCESS' VR[10] JMP LBL[1] ;
   7:  !punkt dojazdu ;
   8:J P[2] 100% FINE VOFFSET,VR[10]    ;
   9:  !jesli klocka brak ;
  10:  LBL[1] ;
/POS
P[1]{
   GP1:
	UF : 9, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    -4.591  mm,	Y =   -84.124  mm,	Z =   476.260  mm,
	W =   178.583 deg,	P =      .015 deg,	R =    90.872 deg
};
P[2]{
   GP1:
	UF : 9, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    -6.698  mm,	Y =     2.073  mm,	Z =    46.142  mm,
	W =   178.583 deg,	P =      .015 deg,	R =    90.870 deg
};
/END
