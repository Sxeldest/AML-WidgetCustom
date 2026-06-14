; =========================================================
; Game Engine Function: sub_134888
; Address            : 0x134888 - 0x13489A
; =========================================================

134888:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_6 - 0x134892); type descriptor name
13488A:  LDR             R3, [R1,#4]
13488C:  MOVS            R1, #0
13488E:  ADD             R2, PC; type descriptor name
134890:  CMP             R3, R2
134892:  IT EQ
134894:  ADDEQ           R1, R0, #4
134896:  MOV             R0, R1
134898:  BX              LR
