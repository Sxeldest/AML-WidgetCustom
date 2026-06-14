; =========================================================
; Game Engine Function: _Z22ConvertPedNode2BoneTagi
; Address            : 0x38FD14 - 0x38FD2A
; =========================================================

38FD14:  SUBS            R0, #1
38FD16:  CMP             R0, #0x11
38FD18:  ITT HI
38FD1A:  MOVHI.W         R0, #0xFFFFFFFF
38FD1E:  BXHI            LR
38FD20:  LDR             R1, =(unk_6129C0 - 0x38FD26)
38FD22:  ADD             R1, PC; unk_6129C0
38FD24:  LDR.W           R0, [R1,R0,LSL#2]
38FD28:  BX              LR
