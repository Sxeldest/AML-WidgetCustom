; =========================================================
; Game Engine Function: INT123_open_stream_handle
; Address            : 0x22FB40 - 0x22FBB6
; =========================================================

22FB40:  PUSH            {R4-R7,LR}
22FB42:  ADD             R7, SP, #0xC
22FB44:  PUSH.W          {R11}
22FB48:  MOV             R5, R1
22FB4A:  MOV             R4, R0
22FB4C:  MOVW            R1, #0xB530
22FB50:  ADDS            R6, R4, R1
22FB52:  LDR             R0, [R4,R1]; p
22FB54:  CMP             R0, #0
22FB56:  IT NE
22FB58:  BLXNE           free
22FB5C:  MOVS            R0, #0
22FB5E:  MOV.W           R1, #0xFFFFFFFF
22FB62:  STR             R0, [R6]
22FB64:  MOVW            R0, #0xB2F0
22FB68:  STR             R5, [R4,R0]
22FB6A:  MOVW            R0, #0xB2EC
22FB6E:  MOVS            R2, #0x40 ; '@'
22FB70:  STR             R1, [R4,R0]
22FB72:  MOVW            R0, #0xB2F4
22FB76:  STR             R2, [R4,R0]
22FB78:  MOVW            R0, #0xB448
22FB7C:  MOVW            R2, #0xB2E4
22FB80:  LDR             R0, [R4,R0]
22FB82:  STR             R1, [R4,R2]
22FB84:  CMP             R0, #1
22FB86:  BLT             loc_22FB9E
22FB88:  LDR             R1, =(off_685330 - 0x22FB98)
22FB8A:  MOVW            R2, #0xB538
22FB8E:  STR             R0, [R4,R2]
22FB90:  MOVW            R2, #0xB534
22FB94:  ADD             R1, PC; off_685330
22FB96:  STR             R0, [R4,R2]
22FB98:  ADD.W           R0, R1, #0x30 ; '0'
22FB9C:  B               loc_22FBA2
22FB9E:  LDR             R0, =(off_685330 - 0x22FBA4)
22FBA0:  ADD             R0, PC; off_685330
22FBA2:  MOVW            R1, #0xB2E0
22FBA6:  STR             R0, [R4,R1]
22FBA8:  LDR             R1, [R0]
22FBAA:  MOV             R0, R4
22FBAC:  BLX             R1; sub_23B830
22FBAE:  ASRS            R0, R0, #0x1F
22FBB0:  POP.W           {R11}
22FBB4:  POP             {R4-R7,PC}
