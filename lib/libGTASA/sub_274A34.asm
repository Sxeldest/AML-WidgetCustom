; =========================================================
; Game Engine Function: sub_274A34
; Address            : 0x274A34 - 0x274B58
; =========================================================

274A34:  PUSH            {R4-R7,LR}
274A36:  ADD             R7, SP, #0xC
274A38:  PUSH.W          {R8-R11}
274A3C:  SUB             SP, SP, #0x24
274A3E:  MOV             R11, R2
274A40:  MOV             R4, R0
274A42:  MOVW            R2, #0xDE1
274A46:  CMP             R4, R2
274A48:  STR             R4, [SP,#0x40+target]
274A4A:  IT NE
274A4C:  MOVWNE          R4, #0x8513
274A50:  MOV             R10, R1
274A52:  CMP.W           R11, #0
274A56:  BEQ             loc_274AE6
274A58:  LDRD.W          R6, R5, [R11]
274A5C:  STR             R4, [SP,#0x40+var_24]
274A5E:  SUBS            R0, R6, #1
274A60:  TST             R0, R6
274A62:  BEQ             loc_274AEE
274A64:  MOVS            R0, #1
274A66:  ADD.W           R8, R10, #1
274A6A:  STR             R0, [SP,#0x40+var_28]
274A6C:  ADD.W           R9, R11, R10,LSL#2
274A70:  MOVS            R4, #0
274A72:  LDR.W           R0, [R11,#0x14]
274A76:  LDR.W           R2, [R11,#0x20]; internalFormat
274A7A:  CBZ             R0, loc_274A9C
274A7C:  ADD.W           R0, R9, R4,LSL#2
274A80:  MOVS            R3, #0
274A82:  LDR             R1, [R0,#0x2C]
274A84:  LDR.W           R0, [R0,#0x1AC]
274A88:  STR             R5, [SP,#0x40+height]; height
274A8A:  STRD.W          R3, R0, [SP,#0x40+border]; border
274A8E:  MOV             R3, R6; width
274A90:  STR             R1, [SP,#0x40+data]; data
274A92:  MOV             R1, R4; level
274A94:  LDR             R0, [SP,#0x40+target]; target
274A96:  BLX             glCompressedTexImage2D
274A9A:  B               loc_274ABC
274A9C:  ADD.W           R1, R9, R4,LSL#2
274AA0:  LDR.W           R0, [R11,#0xC]
274AA4:  MOVS            R3, #0
274AA6:  LDR             R1, [R1,#0x2C]
274AA8:  STR             R5, [SP,#0x40+height]; height
274AAA:  STRD.W          R3, R2, [SP,#0x40+border]; border
274AAE:  MOV             R3, R6; width
274AB0:  STRD.W          R0, R1, [SP,#0x40+data]; type
274AB4:  MOV             R1, R4; level
274AB6:  LDR             R0, [SP,#0x40+target]; target
274AB8:  BLX             glTexImage2D
274ABC:  CMP             R5, #1
274ABE:  ADD.W           R4, R4, #1
274AC2:  IT NE
274AC4:  ASRNE           R5, R5, #1
274AC6:  CMP             R6, #1
274AC8:  ADD.W           R0, R10, R4
274ACC:  IT NE
274ACE:  ASRNE           R6, R6, #1
274AD0:  CMP             R0, R8
274AD2:  BLT             loc_274A72
274AD4:  LDR             R0, [SP,#0x40+var_28]
274AD6:  LDR             R4, [SP,#0x40+var_24]
274AD8:  CMP             R0, #2
274ADA:  BLT             loc_274B0A
274ADC:  MOV             R2, #0x461C0400
274AE4:  B               loc_274B12
274AE6:  ADD             SP, SP, #0x24 ; '$'
274AE8:  POP.W           {R8-R11}
274AEC:  POP             {R4-R7,PC}
274AEE:  CMP             R3, #0
274AF0:  BEQ             loc_274A64
274AF2:  SUBS            R0, R5, #1
274AF4:  ANDS            R0, R5
274AF6:  BNE             loc_274A64
274AF8:  LDR.W           R0, [R11,#0x18]
274AFC:  CMP             R0, #1
274AFE:  BLT             loc_274B0A
274B00:  ADD.W           R8, R0, R10
274B04:  MOV             R2, R0
274B06:  STR             R2, [SP,#0x40+var_28]
274B08:  B               loc_274A6C
274B0A:  MOV             R2, #0x46180400; param
274B12:  MOV             R0, R4; target
274B14:  MOVW            R1, #0x2801; pname
274B18:  BLX             glTexParameterf
274B1C:  MOVW            R2, #0x400
274B20:  MOV             R0, R4; target
274B22:  MOVT            R2, #0x4618; param
274B26:  MOV.W           R1, #0x2800; pname
274B2A:  BLX             glTexParameterf
274B2E:  MOVW            R5, #0x2F00
274B32:  MOV             R0, R4; target
274B34:  MOVT            R5, #0x4701
274B38:  MOVW            R1, #0x2802; pname
274B3C:  MOV             R2, R5; param
274B3E:  BLX             glTexParameterf
274B42:  MOV             R0, R4; target
274B44:  MOVW            R1, #0x2803; pname
274B48:  MOV             R2, R5; param
274B4A:  ADD             SP, SP, #0x24 ; '$'
274B4C:  POP.W           {R8-R11}
274B50:  POP.W           {R4-R7,LR}
274B54:  B.W             j_glTexParameterf
