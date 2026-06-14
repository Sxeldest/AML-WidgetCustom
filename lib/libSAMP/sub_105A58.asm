; =========================================================
; Game Engine Function: sub_105A58
; Address            : 0x105A58 - 0x105BB8
; =========================================================

105A58:  PUSH            {R4-R7,LR}
105A5A:  ADD             R7, SP, #0xC
105A5C:  PUSH.W          {R8-R11}
105A60:  SUB             SP, SP, #0x34
105A62:  MOV             R4, R0
105A64:  LDRB.W          R0, [R0,#0x60]
105A68:  LDR             R2, =(off_234A6C - 0x105A74)
105A6A:  MOV.W           R11, #0
105A6E:  LDR             R1, =(off_234A70 - 0x105A78)
105A70:  ADD             R2, PC; off_234A6C
105A72:  STR             R2, [SP,#0x50+var_38]
105A74:  ADD             R1, PC; off_234A70
105A76:  CBZ             R0, loc_105ACC
105A78:  LDR             R6, [R2]; dword_2402D0
105A7A:  MOV             R5, R1
105A7C:  LDR             R1, [R6]
105A7E:  LDRB            R1, [R1]
105A80:  STR             R1, [SP,#0x50+var_3C]
105A82:  BL              sub_F8224
105A86:  LDR             R1, [R6]
105A88:  MOV             R10, R5
105A8A:  LDR             R6, [R5]; dword_2402DC
105A8C:  STRB            R0, [R1]
105A8E:  LDR             R1, [R6]
105A90:  LDRB.W          R0, [R4,#0x60]
105A94:  LDRH.W          R9, [R1]
105A98:  BL              sub_F8224
105A9C:  LDR             R1, [R6]
105A9E:  SUBS            R2, R0, #4
105AA0:  IT NE
105AA2:  MOVNE           R2, R0
105AA4:  STRH            R2, [R1]
105AA6:  BL              sub_F82C8
105AAA:  LDRB.W          R0, [R4,#0x60]
105AAE:  BL              sub_F82F8
105AB2:  BL              sub_F8280
105AB6:  LDRB.W          R0, [R4,#0x60]
105ABA:  BL              sub_F8230
105ABE:  BL              sub_F83C8
105AC2:  LDRB.W          R0, [R4,#0x60]
105AC6:  BL              sub_F8400
105ACA:  B               loc_105AD6
105ACC:  MOVS            R0, #0
105ACE:  MOV             R10, R1
105AD0:  MOV.W           R9, #0
105AD4:  STR             R0, [SP,#0x50+var_3C]
105AD6:  LDR             R1, =(dword_25C9E0 - 0x105ADE)
105AD8:  LDR             R6, =(dword_25C9E4 - 0x105AE2)
105ADA:  ADD             R1, PC; dword_25C9E0
105ADC:  LDRB            R0, [R4,#0xC]
105ADE:  ADD             R6, PC; dword_25C9E4
105AE0:  STR             R4, [R1]
105AE2:  CMP             R0, #0
105AE4:  IT NE
105AE6:  ADDNE.W         R0, R4, #0x10
105AEA:  STR             R0, [R6]
105AEC:  MOV             R0, R4
105AEE:  MOV             R8, R1
105AF0:  STRD.W          R11, R11, [SP,#0x50+var_24]
105AF4:  STRD.W          R11, R11, [SP,#0x50+var_2C]
105AF8:  STRD.W          R11, R11, [SP,#0x50+var_34]
105AFC:  BL              sub_104648
105B00:  CMP             R0, #0x22 ; '"'
105B02:  BNE             loc_105B2E
105B04:  LDR             R0, =(off_23494C - 0x105B14)
105B06:  MOVW            R2, #0xD6F1
105B0A:  LDR             R1, [R4,#0x5C]
105B0C:  MOVT            R2, #0x5D ; ']'
105B10:  ADD             R0, PC; off_23494C
105B12:  LDR             R0, [R0]; dword_23DF24
105B14:  LDR             R0, [R0]
105B16:  ADD.W           R5, R0, R2
105B1A:  CBZ             R1, loc_105B52
105B1C:  LDRB.W          R0, [R1,#0x71C]
105B20:  RSB.W           R0, R0, R0,LSL#3
105B24:  ADD.W           R0, R1, R0,LSL#2
105B28:  ADDW            R0, R0, #0x5A4
105B2C:  B               loc_105B56
105B2E:  ADD             R2, SP, #0x50+var_28
105B30:  ADD             R3, SP, #0x50+var_34
105B32:  MOV             R0, R4
105B34:  MOVS            R1, #0
105B36:  MOVS            R5, #0
105B38:  BL              sub_105BD0
105B3C:  LDR             R1, [R4,#0x5C]
105B3E:  CBZ             R1, loc_105B5C
105B40:  LDRB.W          R0, [R1,#0x71C]
105B44:  RSB.W           R0, R0, R0,LSL#3
105B48:  ADD.W           R0, R1, R0,LSL#2
105B4C:  ADDW            R0, R0, #0x5A4
105B50:  B               loc_105B5E
105B52:  MOVS            R0, #0
105B54:  MOVS            R1, #0
105B56:  MOVS            R2, #0
105B58:  MOVS            R3, #0
105B5A:  B               loc_105B80
105B5C:  MOVS            R0, #0
105B5E:  LDR             R2, =(off_23494C - 0x105B6C)
105B60:  MOVS            R3, #1
105B62:  STR             R3, [SP,#0x50+var_40]
105B64:  MOVW            R3, #0xC129
105B68:  ADD             R2, PC; off_23494C
105B6A:  MOVT            R3, #0x5D ; ']'
105B6E:  STRD.W          R5, R5, [SP,#0x50+var_50]
105B72:  LDR             R2, [R2]; dword_23DF24
105B74:  STRD.W          R5, R5, [SP,#0x50+var_48]
105B78:  LDR             R2, [R2]
105B7A:  ADDS            R5, R2, R3
105B7C:  ADD             R2, SP, #0x50+var_28
105B7E:  ADD             R3, SP, #0x50+var_34
105B80:  BLX             R5
105B82:  LDRB.W          R0, [R4,#0x60]
105B86:  MOVS            R1, #0
105B88:  STR             R1, [R6]
105B8A:  STR.W           R1, [R8]
105B8E:  CBZ             R0, loc_105BB0
105B90:  LDR             R0, [SP,#0x50+var_38]
105B92:  LDR.W           R1, [R10]; dword_2402DC
105B96:  LDR             R2, [SP,#0x50+var_3C]
105B98:  LDR             R0, [R0]
105B9A:  LDR             R0, [R0]
105B9C:  STRB            R2, [R0]
105B9E:  LDR             R0, [R1]
105BA0:  STRH.W          R9, [R0]
105BA4:  BL              sub_F8298
105BA8:  BL              sub_F8268
105BAC:  BL              sub_F8390
105BB0:  ADD             SP, SP, #0x34 ; '4'
105BB2:  POP.W           {R8-R11}
105BB6:  POP             {R4-R7,PC}
