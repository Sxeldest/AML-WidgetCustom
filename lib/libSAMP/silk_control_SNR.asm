; =========================================================
; Game Engine Function: silk_control_SNR
; Address            : 0x1B4B88 - 0x1B4C0A
; =========================================================

1B4B88:  MOV.W           R2, #0x11E0
1B4B8C:  MOVW            R3, #0x11E4
1B4B90:  LDR             R3, [R0,R3]
1B4B92:  MOV.W           R12, #0x1200
1B4B96:  LDR             R2, [R0,R2]
1B4B98:  CMP             R3, #2
1B4B9A:  STR.W           R1, [R0,R12]
1B4B9E:  ITTTT EQ
1B4BA0:  ASREQ           R3, R2, #0x1F
1B4BA2:  ADDEQ.W         R3, R2, R3,LSR#28
1B4BA6:  SUBEQ.W         R1, R1, R3,ASR#4
1B4BAA:  SUBEQ.W         R1, R1, #0x7D0
1B4BAE:  CMP             R2, #8
1B4BB0:  BEQ             loc_1B4BC0
1B4BB2:  CMP             R2, #0xC
1B4BB4:  BNE             loc_1B4BCA
1B4BB6:  LDR.W           R12, =(unk_C3D2D - 0x1B4BC0)
1B4BBA:  MOVS            R3, #0x9A
1B4BBC:  ADD             R12, PC; unk_C3D2D
1B4BBE:  B               loc_1B4BD2
1B4BC0:  LDR.W           R12, =(unk_C3CC2 - 0x1B4BCA)
1B4BC4:  MOVS            R3, #0x6A ; 'j'
1B4BC6:  ADD             R12, PC; unk_C3CC2
1B4BC8:  B               loc_1B4BD2
1B4BCA:  LDR.W           R12, =(unk_C3DC8 - 0x1B4BD4)
1B4BCE:  MOVS            R3, #0xBE
1B4BD0:  ADD             R12, PC; unk_C3DC8
1B4BD2:  MOVW            R2, #0x851F
1B4BD6:  ADDS            R1, #0xC8
1B4BD8:  MOVT            R2, #0x51EB
1B4BDC:  SMMUL.W         R1, R1, R2
1B4BE0:  ASRS            R2, R1, #7
1B4BE2:  ADD.W           R1, R2, R1,LSR#31
1B4BE6:  SUBS            R1, #0xA
1B4BE8:  CMP             R1, R3
1B4BEA:  IT LT
1B4BEC:  MOVLT           R3, R1
1B4BEE:  CMP             R3, #1
1B4BF0:  BLT             loc_1B4BFE
1B4BF2:  LDRB.W          R1, [R12,R3]
1B4BF6:  MOVS            R2, #0x15
1B4BF8:  SMULBB.W        R1, R1, R2
1B4BFC:  B               loc_1B4C00
1B4BFE:  MOVS            R1, #0
1B4C00:  MOVW            R2, #0x126C
1B4C04:  STR             R1, [R0,R2]
1B4C06:  MOVS            R0, #0
1B4C08:  BX              LR
