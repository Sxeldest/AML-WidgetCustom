; =========================================================
; Game Engine Function: sub_F3AA4
; Address            : 0xF3AA4 - 0xF3BAE
; =========================================================

F3AA4:  PUSH            {R4-R7,LR}
F3AA6:  ADD             R7, SP, #0xC
F3AA8:  PUSH.W          {R8-R11}
F3AAC:  SUB             SP, SP, #0x4C
F3AAE:  MOV             R4, R0
F3AB0:  LDR             R0, =(off_23494C - 0xF3ABC)
F3AB2:  VMOV.I32        Q8, #0
F3AB6:  MOVS            R1, #0xC
F3AB8:  ADD             R0, PC; off_23494C
F3ABA:  MOV             R6, R4
F3ABC:  VST1.32         {D16-D17}, [R6],R1
F3AC0:  LDR             R0, [R0]; dword_23DF24
F3AC2:  LDR.W           R11, [R0]
F3AC6:  LDR             R1, =(sub_F3C08+1 - 0xF3ACC)
F3AC8:  ADD             R1, PC; sub_F3C08
F3ACA:  MOV             R0, SP
F3ACC:  MOVS            R2, #0
F3ACE:  MOV             R3, R4
F3AD0:  BL              sub_F3CAC
F3AD4:  ADD.W           R10, SP, #0x68+var_50
F3AD8:  MOV             R5, SP
F3ADA:  MOV             R1, R5
F3ADC:  MOV             R0, R10
F3ADE:  BL              sub_F3E10
F3AE2:  BL              sub_F3DB8
F3AE6:  LDR             R0, =(unk_240018 - 0xF3AEC)
F3AE8:  ADD             R0, PC; unk_240018
F3AEA:  LDR.W           R8, [R0,#(dword_240028 - 0x240018)]
F3AEE:  CMP.W           R8, #0
F3AF2:  BNE             loc_F3B2A
F3AF4:  ADD.W           R9, SP, #0x68+var_50
F3AF8:  ADD             R0, SP, #0x68+var_38
F3AFA:  MOV             R1, R9
F3AFC:  BL              sub_F3E10
F3B00:  BL              sub_F3DB8
F3B04:  LDR             R0, =(unk_240018 - 0xF3B0A)
F3B06:  ADD             R0, PC; unk_240018
F3B08:  ADD             R5, SP, #0x68+var_38
F3B0A:  MOV             R1, R5
F3B0C:  BL              sub_F3E3C
F3B10:  LDR             R0, [SP,#0x68+var_28]
F3B12:  CMP             R5, R0
F3B14:  BEQ             loc_F3B1E
F3B16:  MOV             R5, SP
F3B18:  CBZ             R0, loc_F3B2A
F3B1A:  MOVS            R1, #5
F3B1C:  B               loc_F3B22
F3B1E:  MOVS            R1, #4
F3B20:  MOV             R5, SP
F3B22:  LDR             R2, [R0]
F3B24:  LDR.W           R1, [R2,R1,LSL#2]
F3B28:  BLX             R1
F3B2A:  LDR             R0, [SP,#0x68+var_40]
F3B2C:  CMP             R10, R0
F3B2E:  BEQ             loc_F3B36
F3B30:  CBZ             R0, loc_F3B40
F3B32:  MOVS            R1, #5
F3B34:  B               loc_F3B38
F3B36:  MOVS            R1, #4
F3B38:  LDR             R2, [R0]
F3B3A:  LDR.W           R1, [R2,R1,LSL#2]
F3B3E:  BLX             R1
F3B40:  CMP.W           R8, #0
F3B44:  BNE             loc_F3B5A
F3B46:  MOVW            R0, #0x5E14
F3B4A:  LDR             R1, =(sub_F3D8C+1 - 0xF3B56)
F3B4C:  MOVT            R0, #0x67 ; 'g'
F3B50:  ADD             R0, R11
F3B52:  ADD             R1, PC; sub_F3D8C
F3B54:  MOV             R2, R6
F3B56:  BL              sub_164196
F3B5A:  LDR             R0, [SP,#0x68+var_58]
F3B5C:  CMP             R5, R0
F3B5E:  BEQ             loc_F3B66
F3B60:  CBZ             R0, loc_F3B70
F3B62:  MOVS            R1, #5
F3B64:  B               loc_F3B68
F3B66:  MOVS            R1, #4
F3B68:  LDR             R2, [R0]
F3B6A:  LDR.W           R1, [R2,R1,LSL#2]
F3B6E:  BLX             R1
F3B70:  MOVS            R1, #0
F3B72:  LDRD.W          R0, R2, [R4,#4]
F3B76:  MOVT            R1, #0x447A
F3B7A:  STR             R1, [SP,#0x68+var_2C]
F3B7C:  MOVS            R1, #0xC2
F3B7E:  STR             R1, [SP,#0x68+var_30]
F3B80:  MOVS            R1, #9
F3B82:  STR             R1, [SP,#0x68+var_34]
F3B84:  MOVW            R1, #0x3E0B
F3B88:  CMP             R0, R2
F3B8A:  STR             R1, [SP,#0x68+var_38]
F3B8C:  BCS             loc_F3B9C
F3B8E:  ADD             R1, SP, #0x68+var_38
F3B90:  VLD1.64         {D16-D17}, [R1]
F3B94:  VST1.32         {D16-D17}, [R0]!
F3B98:  STR             R0, [R4,#4]
F3B9A:  B               loc_F3BA4
F3B9C:  ADD             R1, SP, #0x68+var_38
F3B9E:  MOV             R0, R4
F3BA0:  BL              sub_F4040
F3BA4:  MOV             R0, R4
F3BA6:  ADD             SP, SP, #0x4C ; 'L'
F3BA8:  POP.W           {R8-R11}
F3BAC:  POP             {R4-R7,PC}
