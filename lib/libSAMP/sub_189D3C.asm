; =========================================================
; Game Engine Function: sub_189D3C
; Address            : 0x189D3C - 0x189D64
; =========================================================

189D3C:  LDRD.W          R12, R1, [SP,#arg_0]
189D40:  STR.W           R2, [R0,#0x690]
189D44:  STR.W           R1, [R0,#0x69C]
189D48:  ADD             R1, R12
189D4A:  LDR.W           R2, [R0,#0x2D8]
189D4E:  STR.W           R3, [R0,#0x694]
189D52:  STR.W           R12, [R0,#0x698]
189D56:  CMP.W           R2, R1,LSL#1
189D5A:  ITT CC
189D5C:  LSLCC           R1, R1, #1
189D5E:  STRCC.W         R1, [R0,#0x2D8]
189D62:  BX              LR
