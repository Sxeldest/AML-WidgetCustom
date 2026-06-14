; =========================================================
; Game Engine Function: sub_1C933C
; Address            : 0x1C933C - 0x1C9350
; =========================================================

1C933C:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C9342)
1C933E:  ADD             R1, PC; _rpSkinGlobals_ptr
1C9340:  LDR             R1, [R1]; _rpSkinGlobals
1C9342:  LDR             R1, [R1,#(dword_6B7278 - 0x6B7274)]
1C9344:  LDR             R2, [R0,R1]
1C9346:  CMP             R2, #0
1C9348:  ITT NE
1C934A:  MOVNE           R2, #0
1C934C:  STRNE           R2, [R0,R1]
1C934E:  BX              LR
