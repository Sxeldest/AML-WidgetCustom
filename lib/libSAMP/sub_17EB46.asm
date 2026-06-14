; =========================================================
; Game Engine Function: sub_17EB46
; Address            : 0x17EB46 - 0x17EB82
; =========================================================

17EB46:  PUSH            {R4,R5,R7,LR}
17EB48:  ADD             R7, SP, #8
17EB4A:  SUB             SP, SP, #0x10
17EB4C:  MOV             R12, #0xFFFFF970
17EB54:  LDR.W           R12, [R0,R12]
17EB58:  CMP.W           R12, #0
17EB5C:  BEQ             loc_17EB7C
17EB5E:  LDRD.W          R4, R12, [R12,#4]
17EB62:  SUB.W           R0, R0, #0x9D0
17EB66:  LDR.W           LR, [R7,#arg_0]
17EB6A:  MOVS            R5, #0
17EB6C:  STRD.W          R12, R5, [SP,#0x18+var_10]
17EB70:  STRD.W          LR, R4, [SP,#0x18+var_18]
17EB74:  BL              sub_180874
17EB78:  ADD             SP, SP, #0x10
17EB7A:  POP             {R4,R5,R7,PC}
17EB7C:  MOVS            R0, #0
17EB7E:  ADD             SP, SP, #0x10
17EB80:  POP             {R4,R5,R7,PC}
