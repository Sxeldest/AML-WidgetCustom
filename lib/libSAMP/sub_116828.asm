; =========================================================
; Game Engine Function: sub_116828
; Address            : 0x116828 - 0x116850
; =========================================================

116828:  SUB             SP, SP, #4
11682A:  PUSH            {R7,LR}
11682C:  MOV             R7, SP
11682E:  SUB             SP, SP, #0xC
116830:  ADD.W           R1, R7, #8
116834:  MOV             R12, R2
116836:  STR             R3, [R7,#8]
116838:  MOVS            R2, #0x10
11683A:  STR             R1, [SP,#0x18+var_10]
11683C:  MOV             R3, R12
11683E:  STR             R1, [SP,#0x18+var_18]
116840:  MOVS            R1, #0
116842:  BLX             __vsprintf_chk
116846:  ADD             SP, SP, #0xC
116848:  POP.W           {R7,LR}
11684C:  ADD             SP, SP, #4
11684E:  BX              LR
