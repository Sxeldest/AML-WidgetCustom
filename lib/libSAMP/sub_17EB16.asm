; =========================================================
; Game Engine Function: sub_17EB16
; Address            : 0x17EB16 - 0x17EB46
; =========================================================

17EB16:  PUSH            {R4,R5,R7,LR}
17EB18:  ADD             R7, SP, #8
17EB1A:  SUB             SP, SP, #0x10
17EB1C:  LDR.W           R12, [R0,#0x340]
17EB20:  CMP.W           R12, #0
17EB24:  BEQ             loc_17EB40
17EB26:  LDRD.W          R4, R12, [R12,#4]
17EB2A:  MOVS            R5, #0
17EB2C:  LDR.W           LR, [R7,#arg_0]
17EB30:  STRD.W          R12, R5, [SP,#0x18+var_10]
17EB34:  STRD.W          LR, R4, [SP,#0x18+var_18]
17EB38:  BL              sub_180874
17EB3C:  ADD             SP, SP, #0x10
17EB3E:  POP             {R4,R5,R7,PC}
17EB40:  MOVS            R0, #0
17EB42:  ADD             SP, SP, #0x10
17EB44:  POP             {R4,R5,R7,PC}
