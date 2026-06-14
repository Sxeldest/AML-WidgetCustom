; =========================================================
; Game Engine Function: sub_182A98
; Address            : 0x182A98 - 0x182B9C
; =========================================================

182A98:  PUSH            {R4-R7,LR}
182A9A:  ADD             R7, SP, #0xC
182A9C:  PUSH.W          {R8-R11}
182AA0:  SUB             SP, SP, #0x1C
182AA2:  MOV             R10, R3
182AA4:  MOV             R11, R2
182AA6:  MOV             R6, R1
182AA8:  MOV             R5, R0
182AAA:  STRD.W          R1, R2, [SP,#0x38+var_24]
182AAE:  BL              sub_17E2E4
182AB2:  LDRH            R1, [R5,#8]
182AB4:  CBZ             R1, loc_182AD6
182AB6:  ADD.W           R1, R1, R1,LSL#5
182ABA:  LDR.W           R8, [R5,#0x340]
182ABE:  MOV.W           R9, #0
182AC2:  MOVS            R4, #0
182AC4:  LSLS            R2, R1, #6
182AC6:  LDRB.W          R1, [R8,R9]
182ACA:  CBZ             R1, loc_182ADC
182ACC:  ADD.W           R9, R9, #0x840
182AD0:  ADDS            R4, #1
182AD2:  CMP             R2, R9
182AD4:  BNE             loc_182AC6
182AD6:  MOV.W           R10, #0
182ADA:  B               loc_182B92
182ADC:  STRD.W          R10, R0, [SP,#0x38+var_38]
182AE0:  ADD.W           R10, R8, R9
182AE4:  ADD.W           R0, R10, #0x830
182AE8:  BL              sub_17E5FE
182AEC:  MOVS            R0, #1
182AEE:  STRH.W          R11, [R10,#8]
182AF2:  STRB.W          R0, [R8,R9]
182AF6:  ADD.W           R8, R10, #0x18
182AFA:  STR.W           R6, [R10,#4]
182AFE:  MOV             R0, R8
182B00:  LDR.W           R1, [R5,#0x9A0]
182B04:  BL              sub_189D64
182B08:  LDR.W           R1, [R5,#0x9A4]
182B0C:  MOV             R0, R8
182B0E:  MOV             R9, R5
182B10:  BL              sub_189D68
182B14:  MOV             R0, R8
182B16:  MOVS            R1, #0
182B18:  MOVS            R5, #0
182B1A:  BL              sub_1876C8
182B1E:  ADD.W           R0, R10, #0x6D0
182B22:  MOVS            R1, #5
182B24:  MOVW            R6, #0xFFFF
182B28:  STR             R5, [R0]
182B2A:  SUBS            R1, #1
182B2C:  STRH.W          R6, [R0,#-4]
182B30:  ADD.W           R0, R0, #8
182B34:  BNE             loc_182B28
182B36:  LDR             R0, [SP,#0x38+var_38]
182B38:  MOVS            R5, #0
182B3A:  STR.W           R0, [R10,#0x83C]
182B3E:  ADDW            R0, R10, #0x704
182B42:  STR.W           R5, [R10,#0x6FC]
182B46:  STRH.W          R6, [R10,#0x6F8]
182B4A:  STR.W           R5, [R10,#0x6F4]
182B4E:  STRB.W          R5, [R10,#0x6C8]
182B52:  BL              sub_17D55E
182B56:  MOV.W           R0, #0xFFFFFFFF
182B5A:  MOVS            R1, #1
182B5C:  STR.W           R0, [R10,#0xC]
182B60:  LDR             R0, [SP,#0x38+var_34]
182B62:  STR.W           R0, [R10,#0x818]
182B66:  STR.W           R0, [R10,#0x700]
182B6A:  MOV             R0, R8
182B6C:  STRB.W          R5, [R10,#0x82C]
182B70:  STRH.W          R6, [R10,#0x10]
182B74:  BL              sub_1876AE
182B78:  LDRH.W          R0, [SP,#0x38+var_20]
182B7C:  ADD             R2, SP, #0x38+var_30
182B7E:  LDR             R1, [SP,#0x38+var_24]
182B80:  STR             R1, [SP,#0x38+var_30]
182B82:  ADD             R1, SP, #0x38+var_24
182B84:  STRH.W          R0, [SP,#0x38+var_2C]
182B88:  ADD.W           R0, R9, #0x344
182B8C:  STR             R4, [SP,#0x38+var_28]
182B8E:  BL              sub_182B9C
182B92:  MOV             R0, R10
182B94:  ADD             SP, SP, #0x1C
182B96:  POP.W           {R8-R11}
182B9A:  POP             {R4-R7,PC}
