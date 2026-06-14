; =========================================================
; Game Engine Function: sub_11FAE0
; Address            : 0x11FAE0 - 0x11FB9E
; =========================================================

11FAE0:  PUSH            {R4-R7,LR}
11FAE2:  ADD             R7, SP, #0xC
11FAE4:  PUSH.W          {R8-R11}
11FAE8:  SUB             SP, SP, #0x4C
11FAEA:  MOV             R4, R0
11FAEC:  LDR             R0, =(off_23494C - 0x11FAF6)
11FAEE:  LDR             R1, =(sub_11FBE8+1 - 0x11FAFA)
11FAF0:  MOVS            R2, #0
11FAF2:  ADD             R0, PC; off_23494C
11FAF4:  MOV             R9, SP
11FAF6:  ADD             R1, PC; sub_11FBE8
11FAF8:  MOV             R3, R4
11FAFA:  LDR             R0, [R0]; dword_23DF24
11FAFC:  LDR.W           R10, [R0]
11FB00:  MOV             R0, R9
11FB02:  STR             R2, [R4]
11FB04:  MOVS            R2, #0
11FB06:  BL              sub_11FCDC
11FB0A:  ADD.W           R11, SP, #0x68+var_50
11FB0E:  MOV             R1, R9
11FB10:  MOV             R0, R11
11FB12:  BL              sub_11FE98
11FB16:  BL              sub_11FE40
11FB1A:  LDR             R0, =(unk_2638B0 - 0x11FB20)
11FB1C:  ADD             R0, PC; unk_2638B0
11FB1E:  LDR             R6, [R0,#(dword_2638C0 - 0x2638B0)]
11FB20:  CBNZ            R6, loc_11FB54
11FB22:  ADD.W           R8, SP, #0x68+var_50
11FB26:  ADD             R0, SP, #0x68+var_38
11FB28:  MOV             R1, R8
11FB2A:  BL              sub_11FE98
11FB2E:  BL              sub_11FE40
11FB32:  LDR             R0, =(unk_2638B0 - 0x11FB38)
11FB34:  ADD             R0, PC; unk_2638B0
11FB36:  ADD             R5, SP, #0x68+var_38
11FB38:  MOV             R1, R5
11FB3A:  BL              sub_11FEC4
11FB3E:  LDR             R0, [SP,#0x68+var_28]
11FB40:  CMP             R5, R0
11FB42:  BEQ             loc_11FB4A
11FB44:  CBZ             R0, loc_11FB54
11FB46:  MOVS            R1, #5
11FB48:  B               loc_11FB4C
11FB4A:  MOVS            R1, #4
11FB4C:  LDR             R2, [R0]
11FB4E:  LDR.W           R1, [R2,R1,LSL#2]
11FB52:  BLX             R1
11FB54:  LDR             R0, [SP,#0x68+var_40]
11FB56:  CMP             R11, R0
11FB58:  BEQ             loc_11FB60
11FB5A:  CBZ             R0, loc_11FB6A
11FB5C:  MOVS            R1, #5
11FB5E:  B               loc_11FB62
11FB60:  MOVS            R1, #4
11FB62:  LDR             R2, [R0]
11FB64:  LDR.W           R1, [R2,R1,LSL#2]
11FB68:  BLX             R1
11FB6A:  CBNZ            R6, loc_11FB7E
11FB6C:  LDR             R1, =(sub_11FE08+1 - 0x11FB7A)
11FB6E:  ADD.W           R0, R10, #0x660000
11FB72:  ADD.W           R0, R0, #0x5980
11FB76:  ADD             R1, PC; sub_11FE08
11FB78:  MOV             R2, R4
11FB7A:  BL              sub_164196
11FB7E:  LDR             R0, [SP,#0x68+var_58]
11FB80:  CMP             R9, R0
11FB82:  BEQ             loc_11FB8A
11FB84:  CBZ             R0, loc_11FB94
11FB86:  MOVS            R1, #5
11FB88:  B               loc_11FB8C
11FB8A:  MOVS            R1, #4
11FB8C:  LDR             R2, [R0]
11FB8E:  LDR.W           R1, [R2,R1,LSL#2]
11FB92:  BLX             R1
11FB94:  MOV             R0, R4
11FB96:  ADD             SP, SP, #0x4C ; 'L'
11FB98:  POP.W           {R8-R11}
11FB9C:  POP             {R4-R7,PC}
