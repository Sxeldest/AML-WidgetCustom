; =========================================================
; Game Engine Function: INT123_frame_buffers
; Address            : 0x225AA0 - 0x225C06
; =========================================================

225AA0:  PUSH            {R4-R7,LR}
225AA2:  ADD             R7, SP, #0xC
225AA4:  PUSH.W          {R8}
225AA8:  MOV             R4, R0
225AAA:  MOVW            R0, #0x9294
225AAE:  LDR             R0, [R4,R0]
225AB0:  MOVW            R2, #0x4830
225AB4:  ADDS            R6, R4, R2
225AB6:  SUBS            R0, #5
225AB8:  CMP             R0, #5
225ABA:  ITTE LS
225ABC:  ADRLS           R1, dword_225C08
225ABE:  LDRLS.W         R1, [R1,R0,LSL#2]
225AC2:  MOVHI           R1, #0
225AC4:  LDR             R0, [R4,R2]; p
225AC6:  CMP.W           R1, #0x2200
225ACA:  IT LS
225ACC:  MOVLS.W         R1, #0x2200
225AD0:  CMP             R0, #0
225AD2:  ORR.W           R5, R1, #0xF
225AD6:  BEQ             loc_225AEA
225AD8:  MOVW            R1, #0x4834
225ADC:  LDR             R2, [R4,R1]
225ADE:  CMP             R2, R5
225AE0:  BEQ             loc_225AFC
225AE2:  BLX             free
225AE6:  MOVS            R0, #0
225AE8:  STR             R0, [R6]
225AEA:  MOV             R0, R5; byte_count
225AEC:  BLX             malloc
225AF0:  CMP             R0, #0
225AF2:  STR             R0, [R6]
225AF4:  BEQ.W           loc_225BFC
225AF8:  MOVW            R1, #0x4834
225AFC:  ADD.W           R8, R4, R1
225B00:  ANDS.W          R2, R0, #0xF
225B04:  MOVW            R3, #0x483C
225B08:  SUB.W           R2, R0, R2
225B0C:  STR.W           R5, [R8]
225B10:  MOVW            R5, #0x4818
225B14:  LDR             R1, [R4,R3]
225B16:  IT NE
225B18:  ADDNE.W         R0, R2, #0x10
225B1C:  MOVW            R2, #0x4810
225B20:  STR             R0, [R4,R2]
225B22:  MOVW            R2, #0x4820
225B26:  CMP             R1, #0
225B28:  STR             R0, [R4,R2]
225B2A:  ADD.W           R2, R0, #0x440
225B2E:  STR             R2, [R4,R5]
225B30:  MOVW            R5, #0x4814
225B34:  ADD.W           R2, R0, #0x220
225B38:  STR             R2, [R4,R5]
225B3A:  MOVW            R5, #0x481C
225B3E:  ADD.W           R2, R0, #0x660
225B42:  STR             R2, [R4,R5]
225B44:  MOVW            R5, #0x4828
225B48:  ADD.W           R2, R0, #0x1100
225B4C:  STR             R2, [R4,R5]
225B4E:  MOVW            R5, #0x4824
225B52:  ADD.W           R2, R0, #0x880
225B56:  STR             R2, [R4,R5]
225B58:  ADD.W           R5, R4, R3
225B5C:  MOVW            R2, #0x482C
225B60:  ADD.W           R0, R0, #0x1980
225B64:  STR             R0, [R4,R2]
225B66:  BEQ             loc_225B7E
225B68:  MOVW            R0, #0x4840
225B6C:  LDR             R2, [R4,R0]
225B6E:  CMP.W           R2, #0x1100
225B72:  BEQ             loc_225B92
225B74:  MOV             R0, R1; p
225B76:  BLX             free
225B7A:  MOVS            R0, #0
225B7C:  STR             R0, [R5]
225B7E:  MOV.W           R0, #0x1100; byte_count
225B82:  BLX             malloc
225B86:  MOV             R1, R0
225B88:  CMP             R1, #0
225B8A:  STR             R1, [R5]
225B8C:  BEQ             loc_225BFC
225B8E:  MOVW            R0, #0x4840
225B92:  ADD             R0, R4
225B94:  MOV.W           R2, #0x1100
225B98:  STR             R2, [R0]
225B9A:  MOVW            R0, #0x4844
225B9E:  STR             R1, [R4,R0]
225BA0:  MOVW            R0, #0xB53C
225BA4:  LDR             R1, [R4,R0]
225BA6:  CBNZ            R1, loc_225BEA
225BA8:  ADDS            R5, R4, R0
225BAA:  MOVW            R0, #0x523F; byte_count
225BAE:  BLX             malloc
225BB2:  CMP             R0, #0
225BB4:  STR             R0, [R5]
225BB6:  BEQ             loc_225BFC
225BB8:  ANDS.W          R1, R0, #0x3F ; '?'
225BBC:  MOVW            R2, #0xB544
225BC0:  SUB.W           R1, R0, R1
225BC4:  IT NE
225BC6:  ADDNE.W         R0, R1, #0x40 ; '@'
225BCA:  MOVW            R1, #0xB540
225BCE:  STR             R0, [R4,R1]
225BD0:  ADD.W           R1, R0, #0x200
225BD4:  STR             R1, [R4,R2]
225BD6:  ADD.W           R1, R0, #0xA00
225BDA:  MOVW            R2, #0xB548
225BDE:  STR             R1, [R4,R2]
225BE0:  MOVW            R1, #0xB54C
225BE4:  ADD.W           R0, R0, #0x2E00
225BE8:  STR             R0, [R4,R1]
225BEA:  LDR.W           R1, [R8]
225BEE:  LDR             R0, [R6]
225BF0:  BLX             j___aeabi_memclr8_1
225BF4:  MOVS            R0, #0
225BF6:  POP.W           {R8}
225BFA:  POP             {R4-R7,PC}
225BFC:  MOV.W           R0, #0xFFFFFFFF
225C00:  POP.W           {R8}
225C04:  POP             {R4-R7,PC}
