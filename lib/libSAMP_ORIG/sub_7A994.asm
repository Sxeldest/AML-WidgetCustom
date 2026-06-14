; =========================================================
; Game Engine Function: sub_7A994
; Address            : 0x7A994 - 0x7A9B6
; =========================================================

7A994:  PUSH            {R7,LR}
7A996:  MOV             R7, SP
7A998:  LDR             R0, =(aSamp_0 - 0x7A9A0); "samp" ...
7A99A:  LDR             R1, =(aGtexture - 0x7A9A2); "gtexture" ...
7A99C:  ADD             R0, PC; "samp"
7A99E:  ADD             R1, PC; "gtexture"
7A9A0:  BL              sub_685F8
7A9A4:  LDR             R1, =(dword_1A4590 - 0x7A9AA)
7A9A6:  ADD             R1, PC; dword_1A4590
7A9A8:  STR             R0, [R1]
7A9AA:  BL              sub_68858
7A9AE:  LDR             R1, =(dword_1A4594 - 0x7A9B4)
7A9B0:  ADD             R1, PC; dword_1A4594
7A9B2:  STR             R0, [R1]
7A9B4:  POP             {R7,PC}
