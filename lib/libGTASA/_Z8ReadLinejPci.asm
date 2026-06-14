; =========================================================
; Game Engine Function: _Z8ReadLinejPci
; Address            : 0x36F320 - 0x36F32A
; =========================================================

36F320:  PUSH            {R7,LR}
36F322:  MOV             R7, SP
36F324:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
36F328:  POP             {R7,PC}
