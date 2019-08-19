/PROG  IRV_SWEEP_KLOCKI
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 740;
CREATE		= DATE 17-10-19  TIME 21:46:16;
MODIFIED	= DATE 17-11-29  TIME 20:34:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1216;
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
   2:  UFRAME_NUM=2 ;
   3:  !zerowanie rejestrow ;
   4:  CALL IRV_CLEAR_REGS    ;
   5:  LBL[1] ;
   6:  !szukanie klockow ;
   7:  CALL IRV_FIND_KLOCKI    ;
   8:  IF (R[180:irv_klocek_nfoud]=0) THEN ;
   9:  !zwieksz X ;
  10:  CALL IRV_X_INCREMENT    ;
  11:  !zwieksz Y ;
  12:  CALL IRV_Y_INCREMENT    ;
  13:  ELSE ;
  14:  IF (R[180:irv_klocek_nfoud]>0) THEN ;
  15:  !obliczanie offsetu ;
  16:  CALL IRV_GETOFFSET    ;
  17:  !test jakosci ;
  18:  CALL IRV_QUALITY_TEST    ;
  19:  CALL IRV_FIND_AFTERKLOCKI    ;
  20:  CALL IRV_GET_AFTEROFFSET    ;
  21:  !podniesienie klocka ;
  22:  CALL IRV_GET_KLOCEK    ;
  23:  !polozenie klocka ;
  24:  CALL IRV_PUT_KLOCEK    ;
  25:  ENDIF ;
  26:  ENDIF ;
  27:  JMP LBL[1] ;
/POS
/END
