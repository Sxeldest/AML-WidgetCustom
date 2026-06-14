; =========================================================
; Game Engine Function: sub_84A98
; Address            : 0x84A98 - 0x84BE6
; =========================================================

84A98:  PUSH            {R4-R7,LR}
84A9A:  ADD             R7, SP, #0xC
84A9C:  PUSH.W          {R8-R11}
84AA0:  SUB             SP, SP, #0xC
84AA2:  MOV             R9, R0
84AA4:  LDR             R0, =(__stack_chk_guard_ptr - 0x84AAA)
84AA6:  ADD             R0, PC; __stack_chk_guard_ptr
84AA8:  LDR             R0, [R0]; __stack_chk_guard
84AAA:  LDR             R0, [R0]
84AAC:  STR             R0, [SP,#0x28+var_20]
84AAE:  LDRD.W          R5, R11, [R9,#0x1C]
84AB2:  CMP             R5, R11
84AB4:  BEQ.W           loc_84BC0
84AB8:  SUB.W           R10, R7, #-var_26
84ABC:  B               loc_84ACA
84ABE:  LDR             R0, [R5]
84AC0:  BL              sub_7DB8C
84AC4:  ADDS            R5, #4
84AC6:  CMP             R5, R11
84AC8:  BEQ             loc_84BC0
84ACA:  LDR             R6, [R5]
84ACC:  LDRB            R0, [R6,#1]
84ACE:  CBZ             R0, loc_84B12
84AD0:  MOVS            R0, #0
84AD2:  STRB            R0, [R6,#1]
84AD4:  MOV             R0, R6
84AD6:  BL              sub_7DB4C
84ADA:  CBZ             R0, loc_84B52
84ADC:  LDRD.W          R8, R4, [R9,#0x28]
84AE0:  B               loc_84AE6
84AE2:  ADD.W           R8, R8, #0x18
84AE6:  CMP             R8, R4
84AE8:  BEQ             loc_84B52
84AEA:  LDR.W           R0, [R8,#0x10]
84AEE:  CMP             R0, #0
84AF0:  BEQ             loc_84AE2
84AF2:  MOV             R0, R6
84AF4:  BL              sub_7DB5A
84AF8:  MOV             R1, R0
84AFA:  LDR.W           R0, [R8,#0x10]
84AFE:  STRH.W          R1, [R7,#var_26]
84B02:  CMP             R0, #0
84B04:  BEQ             loc_84BDA
84B06:  LDR             R1, [R0]
84B08:  LDR             R3, [R1,#0x18]
84B0A:  MOV             R1, R9
84B0C:  MOV             R2, R10
84B0E:  BLX             R3
84B10:  B               loc_84AE2
84B12:  LDRB            R0, [R6,#2]
84B14:  CBZ             R0, loc_84B52
84B16:  MOVS            R0, #0
84B18:  STRB            R0, [R6,#2]
84B1A:  MOV             R0, R6
84B1C:  BL              sub_7DB4C
84B20:  CBZ             R0, loc_84B52
84B22:  LDRD.W          R4, R8, [R9,#0x34]
84B26:  B               loc_84B2A
84B28:  ADDS            R4, #0x18
84B2A:  CMP             R4, R8
84B2C:  BEQ             loc_84B52
84B2E:  LDR             R0, [R4,#0x10]
84B30:  CMP             R0, #0
84B32:  BEQ             loc_84B28
84B34:  MOV             R0, R6
84B36:  BL              sub_7DB5A
84B3A:  MOV             R1, R0
84B3C:  LDR             R0, [R4,#0x10]
84B3E:  STRH.W          R1, [SP,#0x28+var_24]
84B42:  CMP             R0, #0
84B44:  BEQ             loc_84BE2
84B46:  LDR             R1, [R0]
84B48:  LDR             R3, [R1,#0x18]
84B4A:  ADD             R2, SP, #0x28+var_24
84B4C:  MOV             R1, R9
84B4E:  BLX             R3
84B50:  B               loc_84B28
84B52:  LDR             R0, [R5]
84B54:  BL              sub_7DB4C
84B58:  CBZ             R0, loc_84B62
84B5A:  LDR             R0, [R5]
84B5C:  BL              sub_7DB60
84B60:  CBZ             R0, loc_84B76
84B62:  LDR             R0, [R5]
84B64:  BL              sub_7DB4C
84B68:  CMP             R0, #0
84B6A:  BNE             loc_84AC4
84B6C:  LDR             R0, [R5]
84B6E:  BL              sub_7DB60
84B72:  CMP             R0, #0
84B74:  BEQ             loc_84AC4
84B76:  LDR.W           R8, [R5]
84B7A:  LDRB.W          R0, [R8]
84B7E:  CMP             R0, #0
84B80:  BEQ             loc_84ABE
84B82:  MOV             R0, R8
84B84:  BL              sub_7DB4C
84B88:  CMP             R0, #0
84B8A:  BEQ.W           loc_84ABE
84B8E:  LDRD.W          R4, R6, [R9,#0x34]
84B92:  B               loc_84B96
84B94:  ADDS            R4, #0x18
84B96:  CMP             R4, R6
84B98:  BEQ.W           loc_84ABE
84B9C:  LDR             R0, [R4,#0x10]
84B9E:  CMP             R0, #0
84BA0:  BEQ             loc_84B94
84BA2:  MOV             R0, R8
84BA4:  BL              sub_7DB5A
84BA8:  MOV             R1, R0
84BAA:  LDR             R0, [R4,#0x10]
84BAC:  STRH.W          R1, [R7,#var_22]
84BB0:  CBZ             R0, loc_84BDE
84BB2:  LDR             R1, [R0]
84BB4:  LDR             R3, [R1,#0x18]
84BB6:  SUB.W           R2, R7, #-var_22
84BBA:  MOV             R1, R9
84BBC:  BLX             R3
84BBE:  B               loc_84B94
84BC0:  LDR             R0, [SP,#0x28+var_20]
84BC2:  LDR             R1, =(__stack_chk_guard_ptr - 0x84BC8)
84BC4:  ADD             R1, PC; __stack_chk_guard_ptr
84BC6:  LDR             R1, [R1]; __stack_chk_guard
84BC8:  LDR             R1, [R1]
84BCA:  CMP             R1, R0
84BCC:  ITTT EQ
84BCE:  ADDEQ           SP, SP, #0xC
84BD0:  POPEQ.W         {R8-R11}
84BD4:  POPEQ           {R4-R7,PC}
84BD6:  BLX             __stack_chk_fail
84BDA:  BL              sub_85628
84BDE:  BL              sub_85628
84BE2:  BL              sub_85628
