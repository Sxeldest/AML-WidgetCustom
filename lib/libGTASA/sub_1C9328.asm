; =========================================================
; Game Engine Function: sub_1C9328
; Address            : 0x1C9328 - 0x1C9336
; =========================================================

1C9328:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C9330)
1C932A:  MOVS            R2, #0
1C932C:  ADD             R1, PC; _rpSkinGlobals_ptr
1C932E:  LDR             R1, [R1]; _rpSkinGlobals
1C9330:  LDR             R1, [R1,#(dword_6B7278 - 0x6B7274)]
1C9332:  STR             R2, [R0,R1]
1C9334:  BX              LR
