; =========================================================
; Game Engine Function: sub_17EACE
; Address            : 0x17EACE - 0x17EB16
; =========================================================

17EACE:  PUSH            {R4-R7,LR}
17EAD0:  ADD             R7, SP, #0xC
17EAD2:  PUSH.W          {R11}
17EAD6:  SUB             SP, SP, #0x18
17EAD8:  MOV             R12, #0xFFFFF970
17EAE0:  LDR.W           R12, [R0,R12]
17EAE4:  CMP.W           R12, #0
17EAE8:  BEQ             loc_17EB0C
17EAEA:  SUB.W           R0, R0, #0x9D0
17EAEE:  LDRD.W          R5, R4, [R12,#4]
17EAF2:  LDRD.W          R6, LR, [R7,#arg_0]
17EAF6:  MOV.W           R12, #0
17EAFA:  STRD.W          R6, LR, [SP,#0x28+var_28]
17EAFE:  STRD.W          R5, R4, [SP,#0x28+var_20]
17EB02:  STR.W           R12, [SP,#0x28+var_18]
17EB06:  BL              sub_1806C4
17EB0A:  B               loc_17EB0E
17EB0C:  MOVS            R0, #0
17EB0E:  ADD             SP, SP, #0x18
17EB10:  POP.W           {R11}
17EB14:  POP             {R4-R7,PC}
