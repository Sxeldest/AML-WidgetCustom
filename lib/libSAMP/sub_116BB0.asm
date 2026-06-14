; =========================================================
; Game Engine Function: sub_116BB0
; Address            : 0x116BB0 - 0x116BFE
; =========================================================

116BB0:  PUSH            {R4,R5,R7,LR}
116BB2:  ADD             R7, SP, #8
116BB4:  SUB             SP, SP, #0x10
116BB6:  LDR             R1, =(aArzhudBgNew - 0x116BC0); "arzhud_bg_new" ...
116BB8:  ADD             R5, SP, #0x18+var_14
116BBA:  MOV             R4, R0
116BBC:  ADD             R1, PC; "arzhud_bg_new"
116BBE:  MOV             R0, R5; int
116BC0:  BL              sub_DC6DC
116BC4:  MOV             R0, R4
116BC6:  MOV             R1, R5
116BC8:  BL              sub_11754C
116BCC:  LDRB.W          R0, [SP,#0x18+var_14]
116BD0:  LSLS            R0, R0, #0x1F
116BD2:  ITT NE
116BD4:  LDRNE           R0, [SP,#0x18+var_C]; void *
116BD6:  BLXNE           j__ZdlPv; operator delete(void *)
116BDA:  LDR             R0, =(_ZTV15CTransparentHud - 0x116BE6); `vtable for'CTransparentHud ...
116BDC:  VMOV.I32        Q8, #0
116BE0:  MOVS            R1, #0
116BE2:  ADD             R0, PC; `vtable for'CTransparentHud
116BE4:  STR             R1, [R4,#0x58]
116BE6:  ADDS            R0, #8
116BE8:  STR             R0, [R4]
116BEA:  ADD.W           R0, R4, #0x24 ; '$'
116BEE:  VST1.32         {D16-D17}, [R0]!
116BF2:  VST1.32         {D16-D17}, [R0]!
116BF6:  STR             R1, [R0]
116BF8:  MOV             R0, R4
116BFA:  ADD             SP, SP, #0x10
116BFC:  POP             {R4,R5,R7,PC}
