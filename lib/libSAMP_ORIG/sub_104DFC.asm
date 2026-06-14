; =========================================================
; Game Engine Function: sub_104DFC
; Address            : 0x104DFC - 0x104E44
; =========================================================

104DFC:  PUSH            {R4-R7,LR}
104DFE:  ADD             R7, SP, #0xC
104E00:  PUSH.W          {R11}
104E04:  MOV             R4, R1
104E06:  LDR             R1, =(asc_4F675 - 0x104E10); "(" ...
104E08:  LDR             R6, =(sub_FFB40+1 - 0x104E16)
104E0A:  MOV             R5, R0
104E0C:  ADD             R1, PC; "("
104E0E:  MOV             R0, R4
104E10:  ADDS            R2, R1, #1
104E12:  ADD             R6, PC; sub_FFB40
104E14:  BLX             R6; sub_FFB40
104E16:  LDR             R0, [R5,#8]
104E18:  MOV             R1, R4
104E1A:  BL              sub_FE074
104E1E:  LDR             R1, =(asc_50100 - 0x104E26); ")[" ...
104E20:  MOV             R0, R4
104E22:  ADD             R1, PC; ")["
104E24:  ADDS            R2, R1, #2
104E26:  BLX             R6; sub_FFB40
104E28:  LDR             R0, [R5,#0xC]
104E2A:  MOV             R1, R4
104E2C:  BL              sub_FE074
104E30:  LDR             R1, =(asc_4D740 - 0x104E3A); "]" ...
104E32:  MOV             R0, R4
104E34:  MOV             R3, R6
104E36:  ADD             R1, PC; "]"
104E38:  ADDS            R2, R1, #1
104E3A:  POP.W           {R11}
104E3E:  POP.W           {R4-R7,LR}
104E42:  BX              R3; sub_FFB40
