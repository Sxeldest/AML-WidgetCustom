; =========================================================
; Game Engine Function: sub_117044
; Address            : 0x117044 - 0x11706E
; =========================================================

117044:  SUB             SP, SP, #4
117046:  PUSH            {R4,R6,R7,LR}
117048:  ADD             R7, SP, #8
11704A:  SUB             SP, SP, #0xC
11704C:  LDR             R4, =(aD_0 - 0x11705A); "%d" ...
11704E:  ADD.W           R1, R7, #8
117052:  STR             R3, [R7,#var_s8]
117054:  MOVS            R2, #4
117056:  ADD             R4, PC; "%d"
117058:  STR             R1, [SP,#0x14+var_C]
11705A:  STR             R1, [SP,#0x14+var_14]
11705C:  MOVS            R1, #0
11705E:  MOV             R3, R4
117060:  BLX             __vsprintf_chk
117064:  ADD             SP, SP, #0xC
117066:  POP.W           {R4,R6,R7,LR}
11706A:  ADD             SP, SP, #4
11706C:  BX              LR
