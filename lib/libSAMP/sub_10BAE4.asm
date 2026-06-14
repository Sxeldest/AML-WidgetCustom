; =========================================================
; Game Engine Function: sub_10BAE4
; Address            : 0x10BAE4 - 0x10BB52
; =========================================================

10BAE4:  PUSH            {R4-R7,LR}
10BAE6:  ADD             R7, SP, #0xC
10BAE8:  PUSH.W          {R11}
10BAEC:  SUB             SP, SP, #8
10BAEE:  MOV             R5, R0
10BAF0:  CBZ             R1, loc_10BB3C
10BAF2:  LDR             R0, =(off_23496C - 0x10BAFC)
10BAF4:  MOVS            R2, #0
10BAF6:  MOV             R4, R1
10BAF8:  ADD             R0, PC; off_23496C
10BAFA:  LDR             R0, [R0]; dword_23DEF4
10BAFC:  LDR             R0, [R0]
10BAFE:  LDR.W           R0, [R0,#0x3B0]
10BB02:  LDR             R0, [R0]
10BB04:  BL              sub_148F74
10BB08:  MOVW            R1, #0xFFFF
10BB0C:  CMP             R0, R1
10BB0E:  STRH.W          R0, [R7,#var_12]
10BB12:  BEQ             loc_10BB42
10BB14:  ADD.W           R6, R5, #0x48 ; 'H'
10BB18:  SUB.W           R1, R7, #-var_12
10BB1C:  MOV             R0, R6
10BB1E:  BL              sub_10C464
10BB22:  CBZ             R0, loc_10BB2E
10BB24:  SUB.W           R1, R7, #-var_12
10BB28:  MOV             R0, R6
10BB2A:  BL              sub_10C6D8
10BB2E:  LDR             R1, [R5,#0x60]
10BB30:  MOV             R0, R4
10BB32:  BLX             R1
10BB34:  ADD             SP, SP, #8
10BB36:  POP.W           {R11}
10BB3A:  POP             {R4-R7,PC}
10BB3C:  LDR             R1, [R5,#0x60]
10BB3E:  MOVS            R0, #0
10BB40:  B               loc_10BB46
10BB42:  LDR             R1, [R5,#0x60]
10BB44:  MOV             R0, R4
10BB46:  ADD             SP, SP, #8
10BB48:  POP.W           {R11}
10BB4C:  POP.W           {R4-R7,LR}
10BB50:  BX              R1
