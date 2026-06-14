; =========================================================
; Game Engine Function: sub_481B0E
; Address            : 0x481B0E - 0x481BFC
; =========================================================

481B0E:  PUSH            {R4-R7,LR}
481B10:  ADD             R7, SP, #0xC
481B12:  PUSH.W          {R8-R10}
481B16:  MOV             R10, R0
481B18:  MOV             R9, R1
481B1A:  LDR.W           R6, [R10,#4]
481B1E:  CMP.W           R9, #2
481B22:  BCC             loc_481B40
481B24:  LDR.W           R0, [R10]
481B28:  MOVS            R1, #0xE
481B2A:  STR             R1, [R0,#0x14]
481B2C:  LDR.W           R0, [R10]
481B30:  STR.W           R9, [R0,#0x18]
481B34:  LDR.W           R0, [R10]
481B38:  LDR             R1, [R0]
481B3A:  MOV             R0, R10
481B3C:  BLX             R1
481B3E:  B               loc_481B96
481B40:  CMP.W           R9, #1
481B44:  BNE             loc_481B96
481B46:  LDR             R5, [R6,#0x44]
481B48:  CBZ             R5, loc_481B68
481B4A:  MOV.W           R8, #0
481B4E:  LDRB.W          R0, [R5,#0x22]
481B52:  CBZ             R0, loc_481B62
481B54:  STRB.W          R8, [R5,#0x22]
481B58:  ADD.W           R1, R5, #0x28 ; '('
481B5C:  LDR             R2, [R5,#0x30]
481B5E:  MOV             R0, R10
481B60:  BLX             R2
481B62:  LDR             R5, [R5,#0x24]
481B64:  CMP             R5, #0
481B66:  BNE             loc_481B4E
481B68:  LDR             R5, [R6,#0x48]
481B6A:  MOV.W           R8, #0
481B6E:  STR.W           R8, [R6,#0x44]
481B72:  CBNZ            R5, loc_481B7A
481B74:  B               loc_481B92
481B76:  LDR             R5, [R5,#0x24]
481B78:  CBZ             R5, loc_481B92
481B7A:  LDRB.W          R0, [R5,#0x22]
481B7E:  CMP             R0, #0
481B80:  BEQ             loc_481B76
481B82:  STRB.W          R8, [R5,#0x22]
481B86:  ADD.W           R1, R5, #0x28 ; '('
481B8A:  LDR             R2, [R5,#0x30]
481B8C:  MOV             R0, R10
481B8E:  BLX             R2
481B90:  B               loc_481B76
481B92:  STR.W           R8, [R6,#0x48]
481B96:  ADD.W           R8, R6, R9,LSL#2
481B9A:  MOV.W           R9, #0
481B9E:  LDR.W           R1, [R8,#0x3C]; this
481BA2:  STR.W           R9, [R8,#0x3C]
481BA6:  CBZ             R1, loc_481BCA
481BA8:  LDRD.W          R4, R0, [R1]
481BAC:  LDR             R2, [R1,#8]
481BAE:  ADD             R0, R2
481BB0:  ADD.W           R5, R0, #0x10
481BB4:  MOV             R0, R10; int
481BB6:  MOV             R2, R5
481BB8:  BLX             j__Z15jpeg_free_largeP18jpeg_common_structPvj; jpeg_free_large(jpeg_common_struct *,void *,uint)
481BBC:  LDR             R0, [R6,#0x4C]
481BBE:  CMP             R4, #0
481BC0:  MOV             R1, R4
481BC2:  SUB.W           R0, R0, R5
481BC6:  STR             R0, [R6,#0x4C]
481BC8:  BNE             loc_481BA8
481BCA:  LDR.W           R1, [R8,#0x34]; this
481BCE:  STR.W           R9, [R8,#0x34]
481BD2:  CBZ             R1, loc_481BF6
481BD4:  LDRD.W          R4, R0, [R1]
481BD8:  LDR             R2, [R1,#8]
481BDA:  ADD             R0, R2
481BDC:  ADD.W           R5, R0, #0x10
481BE0:  MOV             R0, R10; int
481BE2:  MOV             R2, R5
481BE4:  BLX             j__Z15jpeg_free_smallP18jpeg_common_structPvj; jpeg_free_small(jpeg_common_struct *,void *,uint)
481BE8:  LDR             R0, [R6,#0x4C]
481BEA:  CMP             R4, #0
481BEC:  MOV             R1, R4
481BEE:  SUB.W           R0, R0, R5
481BF2:  STR             R0, [R6,#0x4C]
481BF4:  BNE             loc_481BD4
481BF6:  POP.W           {R8-R10}
481BFA:  POP             {R4-R7,PC}
