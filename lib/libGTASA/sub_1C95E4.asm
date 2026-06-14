; =========================================================
; Game Engine Function: sub_1C95E4
; Address            : 0x1C95E4 - 0x1C95F2
; =========================================================

1C95E4:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C95EC)
1C95E6:  MOVS            R2, #0
1C95E8:  ADD             R1, PC; _rpSkinGlobals_ptr
1C95EA:  LDR             R1, [R1]; _rpSkinGlobals
1C95EC:  LDR             R1, [R1,#(dword_6B727C - 0x6B7274)]
1C95EE:  STR             R2, [R0,R1]
1C95F0:  BX              LR
