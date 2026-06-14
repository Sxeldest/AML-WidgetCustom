; =========================================================
; Game Engine Function: deflateParams
; Address            : 0x20AE84 - 0x20AF18
; =========================================================

20AE84:  PUSH            {R4-R7,LR}
20AE86:  ADD             R7, SP, #0xC
20AE88:  PUSH.W          {R8}
20AE8C:  MOV             R5, R1
20AE8E:  MOV             R1, R0
20AE90:  CMP             R1, #0
20AE92:  MOV             R4, R2
20AE94:  ITT NE
20AE96:  LDRNE           R6, [R1,#0x1C]
20AE98:  CMPNE           R6, #0
20AE9A:  BEQ             loc_20AEE2
20AE9C:  ADDS            R0, R5, #1
20AE9E:  IT EQ
20AEA0:  MOVEQ           R5, #6
20AEA2:  CMP             R4, #2
20AEA4:  MOV             R0, #0xFFFFFFFE
20AEA8:  IT LS
20AEAA:  CMPLS           R5, #9
20AEAC:  BHI             loc_20AF12
20AEAE:  LDR             R2, [R6,#0x7C]
20AEB0:  ADD.W           R8, R5, R5,LSL#1
20AEB4:  LDR.W           R12, =(unk_660978 - 0x20AEC0)
20AEB8:  ADD.W           R0, R2, R2,LSL#1
20AEBC:  ADD             R12, PC; unk_660978
20AEBE:  ADD.W           R3, R12, R8,LSL#2
20AEC2:  ADD.W           R0, R12, R0,LSL#2
20AEC6:  LDR             R3, [R3,#(off_6609C8 - 0x6609C0)]; sub_20B9A0
20AEC8:  LDR             R0, [R0,#8]
20AECA:  CMP             R0, R3
20AECC:  BEQ             loc_20AEEC
20AECE:  LDR             R0, [R1,#8]
20AED0:  CBZ             R0, loc_20AEEC
20AED2:  MOV             R0, R1
20AED4:  MOVS            R1, #1
20AED6:  BLX             j_deflate
20AEDA:  LDR             R2, [R6,#0x7C]
20AEDC:  CMP             R2, R5
20AEDE:  BNE             loc_20AEF2
20AEE0:  B               loc_20AF0E
20AEE2:  MOV             R0, #0xFFFFFFFE
20AEE6:  POP.W           {R8}
20AEEA:  POP             {R4-R7,PC}
20AEEC:  MOVS            R0, #0
20AEEE:  CMP             R2, R5
20AEF0:  BEQ             loc_20AF0E
20AEF2:  LDR             R1, =(unk_660978 - 0x20AEF8)
20AEF4:  ADD             R1, PC; unk_660978
20AEF6:  LDRH.W          R12, [R1,R8,LSL#2]
20AEFA:  ADD.W           R1, R1, R8,LSL#2
20AEFE:  LDRH            R3, [R1,#(word_6609C4 - 0x6609C0)]
20AF00:  LDRH            R2, [R1,#(word_6609C6 - 0x6609C0)]
20AF02:  LDRH            R1, [R1,#(word_6609C2 - 0x6609C0)]
20AF04:  STRD.W          R12, R3, [R6,#0x84]
20AF08:  STRD.W          R2, R1, [R6,#0x74]
20AF0C:  STR             R5, [R6,#0x7C]
20AF0E:  STR.W           R4, [R6,#0x80]
20AF12:  POP.W           {R8}
20AF16:  POP             {R4-R7,PC}
