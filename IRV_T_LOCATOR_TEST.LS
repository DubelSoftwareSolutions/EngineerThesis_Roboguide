/PROG  IRV_T_LOCATOR_TEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 812;
CREATE		= DATE 17-12-07  TIME 18:40:54;
MODIFIED	= DATE 17-12-07  TIME 18:40:54;
FILE_NAME	= IRV_T_PL;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 1264;
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
/APPL
/MN
   1:  UFRAME_NUM=8 ;
   2:  UTOOL_NUM=2 ;
   3:  !punkt robienia zdjecia ;
   4:J P[1] 100% FINE    ;
   5:  VISION RUN_FIND 'IRV_2D_PROCESS'    ;
   6:  VISION GET_OFFSET 'IRV_2D_PROCESS' VR[8] JMP LBL[1] ;
   7:  !obliczanie offset ;
   8:  PR[95]=VR[8].FOUND_POS[1] ;
   9:  PR[87:irv_mvoffset]=PR[95:irv_foundpos]-PR[96:irv_refposc]    ;
  10:  !dojazd do punktu ;
  11:J P[2] 100% FINE Offset,PR[87:irv_mvoffset]    ;
  12:J P[2] 100% FINE VOFFSET,VR[8]    ;
  13:  LBL[1] ;
/POS
P[1]{
   GP1:
	UF : 8, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    -4.591  mm,	Y =   -84.124  mm,	Z =   476.260  mm,
	W =   178.583 deg,	P =      .015 deg,	R =    90.872 deg
};
P[2]{
   GP1:
	UF : 8, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    -6.491  mm,	Y =     3.232  mm,	Z =    45.118  mm,
	W =  -179.723 deg,	P =     -.004 deg,	R =    90.864 deg
};
/END

