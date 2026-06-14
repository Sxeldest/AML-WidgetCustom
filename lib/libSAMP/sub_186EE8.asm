; =========================================================
; Game Engine Function: sub_186EE8
; Address            : 0x186EE8 - 0x186F1C
; =========================================================

186EE8:  PUSH            {R4,R6,R7,LR}
186EEA:  ADD             R7, SP, #8
186EEC:  LDR             R2, [R0,#4]
186EEE:  CMP             R2, R1
186EF0:  IT LS
186EF2:  POPLS           {R4,R6,R7,PC}
186EF4:  MOV             R4, R0
186EF6:  ADD.W           R3, R1, R1,LSL#1
186EFA:  LDR             R0, [R0]
186EFC:  MVNS            R1, R1
186EFE:  ADD             R1, R2
186F00:  ADD.W           R0, R0, R3,LSL#2; dest
186F04:  ADD.W           R1, R1, R1,LSL#1
186F08:  ADD.W           R3, R0, #0xC
186F0C:  LSLS            R2, R1, #2; n
186F0E:  MOV             R1, R3; src
186F10:  BLX             j_memmove
186F14:  LDR             R0, [R4,#4]
186F16:  SUBS            R0, #1
186F18:  STR             R0, [R4,#4]
186F1A:  POP             {R4,R6,R7,PC}
