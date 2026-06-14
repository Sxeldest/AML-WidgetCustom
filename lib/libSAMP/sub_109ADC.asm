; =========================================================
; Game Engine Function: sub_109ADC
; Address            : 0x109ADC - 0x109B72
; =========================================================

109ADC:  PUSH            {R4-R7,LR}
109ADE:  ADD             R7, SP, #0xC
109AE0:  PUSH.W          {R8}
109AE4:  SUB             SP, SP, #8
109AE6:  MOV             R8, R0
109AE8:  LDR             R0, [R0,#0xC]
109AEA:  CBZ             R0, loc_109B50
109AEC:  LDR.W           R0, [R8,#8]
109AF0:  MOV             R4, R1
109AF2:  BL              sub_108354
109AF6:  CBZ             R0, loc_109B50
109AF8:  LDR             R0, =(unk_B3DAA - 0x109B00)
109AFA:  MOV             R1, R4
109AFC:  ADD             R0, PC; unk_B3DAA
109AFE:  BL              sub_107188
109B02:  CBNZ            R0, loc_109B34
109B04:  MOV             R0, R4
109B06:  BL              sub_F9CBC
109B0A:  BL              sub_F9CCC
109B0E:  LDR             R0, =(unk_B3DBE - 0x109B16)
109B10:  MOV             R1, R4
109B12:  ADD             R0, PC; unk_B3DBE
109B14:  BL              sub_107188
109B18:  LDR             R6, =(unk_B3DAA - 0x109B20)
109B1A:  MOVS            R5, #0x14
109B1C:  ADD             R6, PC; unk_B3DAA
109B1E:  MOV             R0, R6
109B20:  MOV             R1, R4
109B22:  BL              sub_107188
109B26:  CBNZ            R0, loc_109B34
109B28:  MOV.W           R0, #0x3E8; useconds
109B2C:  BLX             usleep
109B30:  SUBS            R5, #1
109B32:  BNE             loc_109B1E
109B34:  LDR             R0, =(unk_B3DAA - 0x109B3C)
109B36:  MOV             R1, R4
109B38:  ADD             R0, PC; unk_B3DAA
109B3A:  BL              sub_107188
109B3E:  CBZ             R0, loc_109B58
109B40:  LDR             R0, =(unk_B3DD2 - 0x109B4E)
109B42:  ADD             R3, SP, #0x18+var_14
109B44:  LDR.W           R1, [R8,#8]
109B48:  MOV             R2, R4
109B4A:  ADD             R0, PC; unk_B3DD2
109B4C:  BL              sub_107188
109B50:  ADD             SP, SP, #8
109B52:  POP.W           {R8}
109B56:  POP             {R4-R7,PC}
109B58:  LDR             R1, =(aAxl - 0x109B64); "AXL" ...
109B5A:  MOVS            R0, #5
109B5C:  LDR             R2, =(aCanTLoadVehicl - 0x109B66); "Can't load vehicle component %d" ...
109B5E:  MOV             R3, R4
109B60:  ADD             R1, PC; "AXL"
109B62:  ADD             R2, PC; "Can't load vehicle component %d"
109B64:  ADD             SP, SP, #8
109B66:  POP.W           {R8}
109B6A:  POP.W           {R4-R7,LR}
109B6E:  B.W             sub_2242C8
