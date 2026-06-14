; =========================================================
; Game Engine Function: sub_10B594
; Address            : 0x10B594 - 0x10B5BE
; =========================================================

10B594:  SUB             SP, SP, #4
10B596:  PUSH            {R4,R6,R7,LR}
10B598:  ADD             R7, SP, #8
10B59A:  SUB             SP, SP, #0xC
10B59C:  LDR             R4, =(aD_0 - 0x10B5AA); "%d" ...
10B59E:  ADD.W           R1, R7, #8
10B5A2:  STR             R3, [R7,#var_s8]
10B5A4:  MOVS            R2, #0x80
10B5A6:  ADD             R4, PC; "%d"
10B5A8:  STR             R1, [SP,#0x14+var_C]
10B5AA:  STR             R1, [SP,#0x14+var_14]
10B5AC:  MOVS            R1, #0
10B5AE:  MOV             R3, R4
10B5B0:  BLX             __vsprintf_chk
10B5B4:  ADD             SP, SP, #0xC
10B5B6:  POP.W           {R4,R6,R7,LR}
10B5BA:  ADD             SP, SP, #4
10B5BC:  BX              LR
