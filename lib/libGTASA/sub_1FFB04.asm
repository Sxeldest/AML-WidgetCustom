; =========================================================
; Game Engine Function: sub_1FFB04
; Address            : 0x1FFB04 - 0x1FFC66
; =========================================================

1FFB04:  PUSH            {R4-R7,LR}
1FFB06:  ADD             R7, SP, #0xC
1FFB08:  PUSH.W          {R8-R11}
1FFB0C:  SUB             SP, SP, #0x14
1FFB0E:  MOV             R4, R0
1FFB10:  MOV             R6, R1
1FFB12:  LDR.W           R0, [R4,#0x340]
1FFB16:  MOV             R11, R3
1FFB18:  MOV             R8, R2
1FFB1A:  ADDS            R1, R0, #1
1FFB1C:  CMP             R1, #1
1FFB1E:  BHI             loc_1FFB2A
1FFB20:  ADD.W           R1, R8, #1
1FFB24:  MOV.W           R0, #0xFFFFFFFF
1FFB28:  B               loc_1FFB42
1FFB2A:  ADD.W           R1, R8, #1
1FFB2E:  CMP             R0, R1
1FFB30:  BCS             loc_1FFB42
1FFB32:  MOV             R0, R4
1FFB34:  MOV             R1, #0xFFFFFFFC
1FFB38:  MOV             R5, #0xFFFFFFFC
1FFB3C:  BLX             j_png_zstream_error
1FFB40:  B               loc_1FFBAC
1FFB42:  LDR.W           R2, [R11]
1FFB46:  SUBS            R0, R0, R1
1FFB48:  CMP             R0, R2
1FFB4A:  IT CC
1FFB4C:  STRCC.W         R0, [R11]
1FFB50:  MOV             R0, R4
1FFB52:  LDR.W           R1, [R4,#0x1DC]
1FFB56:  BL              sub_1FE6EC
1FFB5A:  MOV             R5, R0
1FFB5C:  CMP             R5, #1
1FFB5E:  BEQ             loc_1FFBA8
1FFB60:  CBNZ            R5, loc_1FFBAC
1FFB62:  LDR.W           R0, [R4,#0x35C]
1FFB66:  MOVS            R2, #0
1FFB68:  LDR.W           R1, [R4,#0x1DC]
1FFB6C:  SUB.W           R6, R6, R8
1FFB70:  STR             R6, [SP,#0x30+var_20]
1FFB72:  ADD             R3, SP, #0x30+var_20
1FFB74:  STRD.W          R2, R11, [SP,#0x30+var_30]
1FFB78:  ADD.W           R2, R0, R8
1FFB7C:  MOV             R0, R4
1FFB7E:  BL              sub_200FFC
1FFB82:  MOV             R5, R0
1FFB84:  CBZ             R5, loc_1FFB9C
1FFB86:  CMP             R5, #1
1FFB88:  BNE             loc_1FFBA0
1FFB8A:  ADD.W           R0, R4, #0x144
1FFB8E:  BLX             j_inflateReset
1FFB92:  CBZ             R0, loc_1FFBB6
1FFB94:  MOV             R0, R4
1FFB96:  MOVS            R1, #1
1FFB98:  BLX             j_png_zstream_error
1FFB9C:  MOV             R5, #0xFFFFFFF9
1FFBA0:  MOVS            R0, #0
1FFBA2:  STR.W           R0, [R4,#0x140]
1FFBA6:  B               loc_1FFBAC
1FFBA8:  MOV             R5, #0xFFFFFFF9
1FFBAC:  MOV             R0, R5
1FFBAE:  ADD             SP, SP, #0x14
1FFBB0:  POP.W           {R8-R11}
1FFBB4:  POP             {R4-R7,PC}
1FFBB6:  LDR.W           R0, [R11]
1FFBBA:  STR             R0, [SP,#0x30+var_24]
1FFBBC:  ADD.W           R5, R8, R0
1FFBC0:  MOV             R0, R4; int
1FFBC2:  ADD.W           R10, R5, #1
1FFBC6:  MOV             R1, R10; byte_count
1FFBC8:  BLX             j_png_malloc_base
1FFBCC:  MOV             R9, R0
1FFBCE:  CMP.W           R9, #0
1FFBD2:  BEQ             loc_1FFC30
1FFBD4:  MOV             R0, R9
1FFBD6:  MOV             R1, R10
1FFBD8:  STR             R5, [SP,#0x30+var_28]
1FFBDA:  BLX             j___aeabi_memclr8_1
1FFBDE:  LDR.W           R0, [R4,#0x35C]
1FFBE2:  ADD.W           R2, R9, R8
1FFBE6:  LDR.W           R1, [R4,#0x1DC]
1FFBEA:  ADD             R3, SP, #0x30+var_20
1FFBEC:  STRD.W          R2, R11, [SP,#0x30+var_30]
1FFBF0:  ADD.W           R2, R0, R8
1FFBF4:  MOV             R0, R4
1FFBF6:  BL              sub_200FFC
1FFBFA:  MOV             R5, R0
1FFBFC:  CBZ             R5, loc_1FFC40
1FFBFE:  CMP             R5, #1
1FFC00:  BNE             loc_1FFC44
1FFC02:  LDR.W           R0, [R11]
1FFC06:  LDR             R1, [SP,#0x30+var_24]
1FFC08:  CMP             R1, R0
1FFC0A:  BNE             loc_1FFC40
1FFC0C:  LDR             R1, [SP,#0x30+var_28]
1FFC0E:  MOVS            R0, #0
1FFC10:  LDR.W           R11, [R4,#0x35C]
1FFC14:  CMP.W           R8, #0
1FFC18:  STRB.W          R0, [R9,R1]
1FFC1C:  BEQ             loc_1FFC28
1FFC1E:  MOV             R0, R9; void *
1FFC20:  MOV             R1, R11; void *
1FFC22:  MOV             R2, R8; size_t
1FFC24:  BLX             memcpy_1
1FFC28:  STRD.W          R9, R10, [R4,#0x35C]
1FFC2C:  MOVS            R5, #1
1FFC2E:  B               loc_1FFC46
1FFC30:  MOV             R0, R4
1FFC32:  MOV             R1, #0xFFFFFFFC
1FFC36:  MOV             R5, #0xFFFFFFFC
1FFC3A:  BLX             j_png_zstream_error
1FFC3E:  B               loc_1FFBA0
1FFC40:  MOV             R5, #0xFFFFFFF9
1FFC44:  MOV             R11, R9
1FFC46:  MOV             R0, R4; int
1FFC48:  MOV             R1, R11; p
1FFC4A:  BLX             j_png_free
1FFC4E:  CMP             R5, #1
1FFC50:  BNE             loc_1FFBA0
1FFC52:  LDR             R0, [SP,#0x30+var_20]
1FFC54:  CMP             R6, R0
1FFC56:  BEQ             loc_1FFBA0
1FFC58:  LDR             R1, =(aExtraCompresse_1 - 0x1FFC60); "extra compressed data"
1FFC5A:  MOV             R0, R4
1FFC5C:  ADD             R1, PC; "extra compressed data"
1FFC5E:  BLX             j_png_chunk_benign_error
1FFC62:  MOVS            R5, #1
1FFC64:  B               loc_1FFBA0
