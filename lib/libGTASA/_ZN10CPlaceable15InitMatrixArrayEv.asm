; =========================================================
; Game Engine Function: _ZN10CPlaceable15InitMatrixArrayEv
; Address            : 0x408AD0 - 0x408B9A
; =========================================================

408AD0:  PUSH            {R4,R5,R7,LR}
408AD2:  ADD             R7, SP, #8
408AD4:  MOV             R5, #0x12750
408ADC:  ADD.W           R0, R5, #8; unsigned int
408AE0:  BLX             _Znaj; operator new[](uint)
408AE4:  MOVS            R1, #0x54 ; 'T'
408AE6:  MOV.W           R2, #0x384
408AEA:  STRD.W          R1, R2, [R0]
408AEE:  ADD.W           R2, R0, #0x4C ; 'L'
408AF2:  ADD.W           R1, R0, #8
408AF6:  MOVS            R3, #0
408AF8:  MOV             R4, R5
408AFA:  STR.W           R3, [R2,#-4]
408AFE:  SUBS            R4, #0x54 ; 'T'
408B00:  STR             R3, [R2]
408B02:  ADD.W           R2, R2, #0x54 ; 'T'
408B06:  BNE             loc_408AFA
408B08:  LDR             R2, =(gMatrixList_ptr - 0x408B12)
408B0A:  MOV.W           R12, #0x54 ; 'T'
408B0E:  ADD             R2, PC; gMatrixList_ptr
408B10:  LDR             R2, [R2]; gMatrixList
408B12:  ADD.W           R3, R2, #0x54 ; 'T'
408B16:  ADD.W           R4, R2, #0x150
408B1A:  STR             R3, [R2,#(dword_95A9D8 - 0x95A988)]
408B1C:  ADD.W           R3, R2, #0x1A4
408B20:  STR.W           R1, [R2,#(dword_95AB80 - 0x95A988)]
408B24:  ADD.W           R1, R2, #0xFC
408B28:  STR.W           R1, [R2,#(dword_95AA80 - 0x95A988)]
408B2C:  ADD.W           R1, R2, #0xA8
408B30:  STR.W           R1, [R2,#(dword_95AAD0 - 0x95A988)]
408B34:  ADDS            R1, R0, R5
408B36:  STR.W           R2, [R2,#(dword_95AA28 - 0x95A988)]
408B3A:  SUB.W           LR, R1, #0xA0
408B3E:  STR             R3, [R1,#4]
408B40:  SUB.W           R3, R1, #0x4C ; 'L'
408B44:  STR.W           R3, [R2,#(dword_95AB78 - 0x95A988)]
408B48:  STR.W           R3, [R2,#(dword_95AB28 - 0x95A988)]
408B4C:  STR             R4, [R0,R5]
408B4E:  STR.W           R3, [R1,#-0x50]
408B52:  LDR.W           R3, [R2,#(dword_95AB28 - 0x95A988)]
408B56:  STR.W           LR, [R3,#0x4C]
408B5A:  LDR             R3, =(gMatrixList_ptr - 0x408B68)
408B5C:  STR.W           R4, [R1,#-0x54]
408B60:  SUB.W           R1, R5, #0xFC
408B64:  ADD             R3, PC; gMatrixList_ptr
408B66:  STR.W           LR, [R2,#(dword_95AB28 - 0x95A988)]
408B6A:  MOVW            R2, #0x382
408B6E:  LDR             R3, [R3]; gMatrixList
408B70:  LDR.W           R5, [R3,#(dword_95AB80 - 0x95A988)]
408B74:  SUBS            R2, #1
408B76:  ADDS            R4, R5, R1
408B78:  SUBS            R1, #0x54 ; 'T'
408B7A:  STR.W           LR, [R4,#0x50]
408B7E:  MLA.W           LR, R2, R12, R5
408B82:  LDR.W           R0, [R3,#(dword_95AB28 - 0x95A988)]
408B86:  STR             R4, [R0,#0x4C]
408B88:  ADD.W           R0, R3, #0x150
408B8C:  STR             R0, [R4,#0x4C]
408B8E:  ADDS.W          R0, R1, #0x54 ; 'T'
408B92:  STR.W           R4, [R3,#(dword_95AB28 - 0x95A988)]
408B96:  BNE             loc_408B70
408B98:  POP             {R4,R5,R7,PC}
