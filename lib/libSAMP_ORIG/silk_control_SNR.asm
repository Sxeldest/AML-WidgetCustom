; =========================================================
; Game Engine Function: silk_control_SNR
; Address            : 0xD6DC8 - 0xD6E4A
; =========================================================

D6DC8:  MOV.W           R2, #0x11E0
D6DCC:  MOVW            R3, #0x11E4
D6DD0:  LDR             R3, [R0,R3]
D6DD2:  MOV.W           R12, #0x1200
D6DD6:  LDR             R2, [R0,R2]
D6DD8:  CMP             R3, #2
D6DDA:  STR.W           R1, [R0,R12]
D6DDE:  ITTTT EQ
D6DE0:  ASREQ           R3, R2, #0x1F
D6DE2:  ADDEQ.W         R3, R2, R3,LSR#28
D6DE6:  SUBEQ.W         R1, R1, R3,ASR#4
D6DEA:  SUBEQ.W         R1, R1, #0x7D0
D6DEE:  CMP             R2, #8
D6DF0:  BEQ             loc_D6E00
D6DF2:  CMP             R2, #0xC
D6DF4:  BNE             loc_D6E0A
D6DF6:  LDR.W           R12, =(unk_5C82D - 0xD6E00)
D6DFA:  MOVS            R3, #0x9A
D6DFC:  ADD             R12, PC; unk_5C82D
D6DFE:  B               loc_D6E12
D6E00:  LDR.W           R12, =(unk_5C7C2 - 0xD6E0A)
D6E04:  MOVS            R3, #0x6A ; 'j'
D6E06:  ADD             R12, PC; unk_5C7C2
D6E08:  B               loc_D6E12
D6E0A:  LDR.W           R12, =(unk_5C8C8 - 0xD6E14)
D6E0E:  MOVS            R3, #0xBE
D6E10:  ADD             R12, PC; unk_5C8C8
D6E12:  MOVW            R2, #0x851F
D6E16:  ADDS            R1, #0xC8
D6E18:  MOVT            R2, #0x51EB
D6E1C:  SMMUL.W         R1, R1, R2
D6E20:  ASRS            R2, R1, #7
D6E22:  ADD.W           R1, R2, R1,LSR#31
D6E26:  SUBS            R1, #0xA
D6E28:  CMP             R1, R3
D6E2A:  IT LT
D6E2C:  MOVLT           R3, R1
D6E2E:  CMP             R3, #1
D6E30:  BLT             loc_D6E3E
D6E32:  LDRB.W          R1, [R12,R3]
D6E36:  MOVS            R2, #0x15
D6E38:  SMULBB.W        R1, R1, R2
D6E3C:  B               loc_D6E40
D6E3E:  MOVS            R1, #0
D6E40:  MOVW            R2, #0x126C
D6E44:  STR             R1, [R0,R2]
D6E46:  MOVS            R0, #0
D6E48:  BX              LR
