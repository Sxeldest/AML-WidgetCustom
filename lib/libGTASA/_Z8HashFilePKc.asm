; =========================================================
; Game Engine Function: _Z8HashFilePKc
; Address            : 0x1E7338 - 0x1E7396
; =========================================================

1E7338:  PUSH            {R4-R7,LR}
1E733A:  ADD             R7, SP, #0xC
1E733C:  PUSH.W          {R11}
1E7340:  SUB             SP, SP, #8
1E7342:  ADD             R1, SP, #0x18+var_14
1E7344:  MOV             R2, R0
1E7346:  MOVS            R0, #0
1E7348:  MOVS            R3, #0
1E734A:  MOVS            R6, #0
1E734C:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
1E7350:  LDR             R0, [SP,#0x18+var_14]; this
1E7352:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
1E7356:  MOV             R5, R0
1E7358:  BLX             malloc
1E735C:  MOV             R4, R0
1E735E:  LDR             R0, [SP,#0x18+var_14]; this
1E7360:  MOV             R1, R4; ptr
1E7362:  MOV             R2, R5; n
1E7364:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E7368:  LDR             R0, [SP,#0x18+var_14]; this
1E736A:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
1E736E:  CBZ             R5, loc_1E7384
1E7370:  MOVS            R6, #0
1E7372:  MOV             R0, R4
1E7374:  LDRB.W          R1, [R0],#1
1E7378:  ADD.W           R2, R6, R6,LSL#5
1E737C:  SUBS            R5, #1
1E737E:  ADD.W           R6, R2, R1
1E7382:  BNE             loc_1E7374
1E7384:  MOV             R0, R4; p
1E7386:  BLX             free
1E738A:  ADD.W           R0, R6, R6,LSR#5
1E738E:  ADD             SP, SP, #8
1E7390:  POP.W           {R11}
1E7394:  POP             {R4-R7,PC}
