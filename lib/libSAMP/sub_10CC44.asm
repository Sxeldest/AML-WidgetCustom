; =========================================================
; Game Engine Function: sub_10CC44
; Address            : 0x10CC44 - 0x10CC6C
; =========================================================

10CC44:  SUB             SP, SP, #4
10CC46:  PUSH            {R7,LR}
10CC48:  MOV             R7, SP
10CC4A:  SUB             SP, SP, #0xC
10CC4C:  ADD.W           R1, R7, #8
10CC50:  MOV             R12, R2
10CC52:  STR             R3, [R7,#8]
10CC54:  MOVS            R2, #0x20 ; ' '
10CC56:  STR             R1, [SP,#0x18+var_10]
10CC58:  MOV             R3, R12
10CC5A:  STR             R1, [SP,#0x18+var_18]
10CC5C:  MOVS            R1, #0
10CC5E:  BLX             __vsprintf_chk
10CC62:  ADD             SP, SP, #0xC
10CC64:  POP.W           {R7,LR}
10CC68:  ADD             SP, SP, #4
10CC6A:  BX              LR
