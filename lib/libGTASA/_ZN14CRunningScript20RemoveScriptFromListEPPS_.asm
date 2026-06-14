; =========================================================
; Game Engine Function: _ZN14CRunningScript20RemoveScriptFromListEPPS_
; Address            : 0x32ACB4 - 0x32ACCC
; =========================================================

32ACB4:  LDRD.W          R2, R3, [R0]
32ACB8:  CMP             R3, #0
32ACBA:  IT NE
32ACBC:  MOVNE           R1, R3
32ACBE:  STR             R2, [R1]
32ACC0:  LDR             R1, [R0]
32ACC2:  CMP             R1, #0
32ACC4:  ITT NE
32ACC6:  LDRNE           R0, [R0,#4]
32ACC8:  STRNE           R0, [R1,#4]
32ACCA:  BX              LR
