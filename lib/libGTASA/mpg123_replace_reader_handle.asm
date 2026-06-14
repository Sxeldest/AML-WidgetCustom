; =========================================================
; Game Engine Function: mpg123_replace_reader_handle
; Address            : 0x22FE54 - 0x22FF46
; =========================================================

22FE54:  PUSH            {R4-R7,LR}
22FE56:  ADD             R7, SP, #0xC
22FE58:  PUSH.W          {R8-R10}
22FE5C:  MOV             R5, R0
22FE5E:  MOV             R8, R3
22FE60:  MOV             R10, R2
22FE62:  MOV             R9, R1
22FE64:  CMP             R5, #0
22FE66:  BEQ             loc_22FF3C
22FE68:  MOVW            R1, #0xB2E0
22FE6C:  ADDS            R4, R5, R1
22FE6E:  LDR             R0, [R5,R1]
22FE70:  CBZ             R0, loc_22FE7C
22FE72:  LDR             R1, [R0,#4]
22FE74:  CMP             R1, #0
22FE76:  ITT NE
22FE78:  MOVNE           R0, R5
22FE7A:  BLXNE           R1
22FE7C:  MOVS            R6, #0
22FE7E:  STR             R6, [R4]
22FE80:  LDR             R0, [R5,#4]
22FE82:  CBZ             R0, loc_22FE98
22FE84:  MOVW            R0, #0xB2B8
22FE88:  STR             R6, [R5,R0]
22FE8A:  MOVW            R0, #0xB2BC
22FE8E:  STR             R6, [R5,R0]
22FE90:  MOVW            R0, #0xB2B0
22FE94:  STR             R6, [R5,R0]
22FE96:  STR             R6, [R5,#4]
22FE98:  MOVW            R0, #0xB290
22FE9C:  MOVW            R1, #0xB288
22FEA0:  STR             R6, [R5,R0]
22FEA2:  MOVW            R0, #0xB2A8
22FEA6:  MOVW            R2, #0xB28C
22FEAA:  STR             R6, [R5,R0]
22FEAC:  MOVW            R0, #0xA308
22FEB0:  ADD             R0, R5
22FEB2:  STR             R0, [R5,R1]
22FEB4:  MOVW            R1, #0x4834
22FEB8:  LDR             R1, [R5,R1]
22FEBA:  STR             R0, [R5,R2]
22FEBC:  MOVW            R0, #0x4830
22FEC0:  LDR             R0, [R5,R0]
22FEC2:  MOVW            R2, #0x9384
22FEC6:  STR             R6, [R5,R2]
22FEC8:  BLX             j___aeabi_memclr8_1
22FECC:  MOVW            R0, #0x9388
22FED0:  MOV.W           R1, #0x1F00
22FED4:  ADD             R0, R5
22FED6:  BLX             j___aeabi_memclr8
22FEDA:  MOVW            R0, #0x4A70
22FEDE:  VMOV.I32        Q8, #0
22FEE2:  STRH            R6, [R5,R0]
22FEE4:  MOVW            R0, #0x4A60
22FEE8:  ADD             R0, R5
22FEEA:  MOVW            R1, #0x4808
22FEEE:  VST1.64         {D16-D17}, [R0]
22FEF2:  MOVW            R0, #0x4A50
22FEF6:  ADD             R0, R5
22FEF8:  VST1.64         {D16-D17}, [R0]
22FEFC:  ADD.W           R0, R5, #8
22FF00:  BLX             j___aeabi_memclr8
22FF04:  MOV             R0, R5
22FF06:  BL              sub_225790
22FF0A:  MOVW            R1, #0x9324
22FF0E:  LDR             R0, [R5,R1]; p
22FF10:  CBZ             R0, loc_22FF1C
22FF12:  ADDS            R4, R5, R1
22FF14:  BLX             free
22FF18:  MOVS            R0, #0
22FF1A:  STR             R0, [R4]
22FF1C:  MOVW            R0, #0xB30C
22FF20:  STR.W           R10, [R5,R0]
22FF24:  MOVW            R0, #0xB308
22FF28:  STR.W           R9, [R5,R0]
22FF2C:  MOVW            R0, #0xB310
22FF30:  STR.W           R8, [R5,R0]
22FF34:  MOVS            R0, #0
22FF36:  POP.W           {R8-R10}
22FF3A:  POP             {R4-R7,PC}
22FF3C:  MOV.W           R0, #0xFFFFFFFF
22FF40:  POP.W           {R8-R10}
22FF44:  POP             {R4-R7,PC}
