; =========================================================
; Game Engine Function: sub_16308C
; Address            : 0x16308C - 0x1630A2
; =========================================================

16308C:  LDR             R1, =(off_23494C - 0x16309C)
16308E:  MOVW            R2, #:lower16:unk_36E1E1
163092:  LDR             R0, [R0]
163094:  MOVT            R2, #:upper16:unk_36E1E1
163098:  ADD             R1, PC; off_23494C
16309A:  LDR             R1, [R1]; dword_23DF24
16309C:  LDR             R1, [R1]
16309E:  ADD             R1, R2
1630A0:  BX              R1
