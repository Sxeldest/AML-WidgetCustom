; =========================================================
; Game Engine Function: sub_616A0
; Address            : 0x616A0 - 0x616BE
; =========================================================

616A0:  PUSH            {R4,R6,R7,LR}
616A2:  ADD             R7, SP, #8
616A4:  LDR             R4, =(off_117658 - 0x616B2)
616A6:  ORR.W           R2, R2, #0x340
616AA:  VLDR            D16, [R7,#arg_0]
616AE:  ADD             R4, PC; off_117658
616B0:  VSTR            D16, [R7,#arg_0]
616B4:  LDR.W           R12, [R4]
616B8:  POP.W           {R4,R6,R7,LR}
616BC:  BX              R12
