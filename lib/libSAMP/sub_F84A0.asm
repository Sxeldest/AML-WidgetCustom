; =========================================================
; Game Engine Function: sub_F84A0
; Address            : 0xF84A0 - 0xF84CA
; =========================================================

F84A0:  LDR             R0, =(dword_2402E0 - 0xF84B0)
F84A2:  ADR             R1, dword_F84D0
F84A4:  VLD1.64         {D16-D17}, [R1]
F84A8:  MOVW            R1, #0xC000
F84AC:  ADD             R0, PC; dword_2402E0
F84AE:  MOVT            R1, #0x4479
F84B2:  LDR             R0, [R0]
F84B4:  STRD.W          R1, R1, [R0,#0x138]
F84B8:  ADD.W           R0, R0, #0x114
F84BC:  VST1.32         {D16-D17}, [R0]!
F84C0:  VST1.32         {D16-D17}, [R0]!
F84C4:  STR             R1, [R0]
F84C6:  B.W             sub_F83C8
