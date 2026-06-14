; =========================================================
; Game Engine Function: sub_10B348
; Address            : 0x10B348 - 0x10B3DC
; =========================================================

10B348:  PUSH            {R4,R5,R11,LR}
10B34C:  ADD             R11, SP, #8
10B350:  SUB             SP, SP, #0x10
10B354:  MOV             R4, R0
10B358:  LDR             R0, [R0]
10B35C:  MOV             R5, R1
10B360:  MOV             R1, #0xFFFFFFFF
10B364:  LDR             R2, [R0,#0xC]
10B368:  MOV             R0, R4
10B36C:  BLX             R2
10B370:  BIC             R0, R0, #1
10B374:  CMP             R0, #0
10B378:  BEQ             loc_10B3B0
10B37C:  SUB             R5, R0, R5
10B380:  MOV             R1, #0
10B384:  STR             R1, [SP,#0x18+var_C]
10B388:  ADD             R1, SP, #0x18+var_C
10B38C:  MOV             R0, R5
10B390:  BL              dl_unwind_find_exidx
10B394:  LDR             R1, [SP,#0x18+var_C]
10B398:  CMP             R0, #0
10B39C:  STR             R0, [SP,#0x18+var_14]
10B3A0:  MOV             R1, R1,LSL#3
10B3A4:  CMPNE           R1, #0
10B3A8:  STR             R1, [SP,#0x18+var_10]
10B3AC:  BNE             loc_10B3C0
10B3B0:  MOV             R0, #1
10B3B4:  STRB            R0, [R4,#0x180]
10B3B8:  SUB             SP, R11, #8
10B3BC:  POP             {R4,R5,R11,PC}
10B3C0:  ADD             R2, SP, #0x18+var_14
10B3C4:  MOV             R0, R4
10B3C8:  MOV             R1, R5
10B3CC:  BL              sub_10B3F0
10B3D0:  CMP             R0, #0
10B3D4:  BEQ             loc_10B3B0
10B3D8:  B               loc_10B3B8
