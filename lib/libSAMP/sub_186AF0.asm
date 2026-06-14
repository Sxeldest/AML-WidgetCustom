; =========================================================
; Game Engine Function: sub_186AF0
; Address            : 0x186AF0 - 0x186C66
; =========================================================

186AF0:  PUSH            {R4-R7,LR}
186AF2:  ADD             R7, SP, #0xC
186AF4:  PUSH.W          {R8-R11}
186AF8:  SUB             SP, SP, #4
186AFA:  VPUSH           {D8-D9}
186AFE:  SUB             SP, SP, #0x140
186B00:  ADD             R5, SP, #0x170+var_50
186B02:  VLD1.32         {D16-D17}, [R3]
186B06:  MOV             R9, R0
186B08:  VMOV.I32        Q9, #0
186B0C:  MOV             R0, R5
186B0E:  LDR             R4, [R7,#arg_0]
186B10:  VST1.64         {D16-D17}, [R0]!
186B14:  MOV             R6, R3
186B16:  MOV             R11, R2
186B18:  MOV             R10, R1
186B1A:  VST1.64         {D18-D19}, [R0]
186B1E:  MOVS            R0, #0
186B20:  LDR.W           R1, [R5,R0,LSL#2]
186B24:  SUBS            R2, R1, #1
186B26:  STR.W           R2, [R5,R0,LSL#2]
186B2A:  CMP             R2, R1
186B2C:  BCC             loc_186B36
186B2E:  ADDS            R1, R0, #1
186B30:  CMP             R0, #7
186B32:  MOV             R0, R1
186B34:  BNE             loc_186B20
186B36:  MOV             R0, R11
186B38:  MOV             R1, R5
186B3A:  MOV             R2, R5
186B3C:  BL              sub_184D9C
186B40:  VLD1.64         {D16-D17}, [R5]
186B44:  ADD.W           R8, SP, #0x170+var_60
186B48:  ADD             R1, SP, #0x170+var_80
186B4A:  VMOV.I32        Q4, #0
186B4E:  VST1.64         {D16-D17}, [R8]
186B52:  ADD             R5, SP, #0x170+var_A0
186B54:  MOV             R0, R1
186B56:  VLD1.32         {D16-D17}, [R6]
186B5A:  MOV             R2, R5
186B5C:  VST1.64         {D16-D17}, [R0]!
186B60:  VST1.64         {D8-D9}, [R0]
186B64:  MOV             R0, R10
186B66:  BL              sub_184D9C
186B6A:  VLD1.64         {D16-D17}, [R5]
186B6E:  ADD             R5, SP, #0x170+var_B0
186B70:  ADD             R0, SP, #0x170+var_C0
186B72:  MOV             R1, R8
186B74:  MOV             R2, R6
186B76:  MOV             R3, R5
186B78:  VST1.64         {D16-D17}, [R0]
186B7C:  BL              sub_184C5E
186B80:  ADD             R6, SP, #0x170+var_E0
186B82:  VLD1.32         {D16-D17}, [R4]
186B86:  MOV             R8, R4
186B88:  MOV             R0, R6
186B8A:  VST1.64         {D16-D17}, [R0]!
186B8E:  VST1.64         {D8-D9}, [R0]
186B92:  MOVS            R0, #0
186B94:  LDR.W           R1, [R6,R0,LSL#2]
186B98:  SUBS            R2, R1, #1
186B9A:  STR.W           R2, [R6,R0,LSL#2]
186B9E:  CMP             R2, R1
186BA0:  BCC             loc_186BAA
186BA2:  ADDS            R1, R0, #1
186BA4:  CMP             R0, #7
186BA6:  MOV             R0, R1
186BA8:  BNE             loc_186B94
186BAA:  MOV             R0, R11
186BAC:  MOV             R1, R6
186BAE:  MOV             R2, R6
186BB0:  BL              sub_184D9C
186BB4:  VLD1.64         {D16-D17}, [R6]
186BB8:  ADD             R4, SP, #0x170+var_F0
186BBA:  ADD             R1, SP, #0x170+var_110
186BBC:  VMOV.I32        Q9, #0
186BC0:  VST1.64         {D16-D17}, [R4]
186BC4:  ADD             R6, SP, #0x170+var_130
186BC6:  MOV             R0, R1
186BC8:  VLD1.32         {D16-D17}, [R8]
186BCC:  MOV             R2, R6
186BCE:  VST1.64         {D16-D17}, [R0]!
186BD2:  VST1.64         {D18-D19}, [R0]
186BD6:  MOV             R0, R10
186BD8:  BL              sub_184D9C
186BDC:  VLD1.64         {D16-D17}, [R6]
186BE0:  ADD             R6, SP, #0x170+var_140
186BE2:  ADD             R0, SP, #0x170+var_150
186BE4:  MOV             R1, R4
186BE6:  MOV             R2, R8
186BE8:  MOV             R3, R6
186BEA:  VST1.64         {D16-D17}, [R0]
186BEE:  BL              sub_184C5E
186BF2:  MOVS            R0, #0xC
186BF4:  LDR             R1, [R5,R0]
186BF6:  LDR             R2, [R6,R0]
186BF8:  CMP             R2, R1
186BFA:  BHI             loc_186C1A
186BFC:  BCC             loc_186C06
186BFE:  SUBS            R1, R0, #4
186C00:  CMP             R0, #0
186C02:  MOV             R0, R1
186C04:  BNE             loc_186BF4
186C06:  ADD             R4, SP, #0x170+var_140
186C08:  ADD             R1, SP, #0x170+var_B0
186C0A:  MOV             R0, R4
186C0C:  BL              sub_184F9C
186C10:  MOV             R0, R4
186C12:  MOV             R1, R8
186C14:  BL              sub_18621A
186C18:  B               loc_186C22
186C1A:  ADD             R0, SP, #0x170+var_140
186C1C:  ADD             R1, SP, #0x170+var_B0
186C1E:  BL              sub_184F9C
186C22:  LDR             R1, [R7,#arg_4]
186C24:  ADD             R0, SP, #0x170+var_140
186C26:  MOV             R2, R9
186C28:  BL              sub_184D2E
186C2C:  ADD             R1, SP, #0x170+var_110
186C2E:  MOV             R0, R9
186C30:  MOV             R2, R9
186C32:  BL              sub_184D9C
186C36:  ADD             R1, SP, #0x170+var_80
186C38:  MOV             R0, R9
186C3A:  BL              sub_186D6A
186C3E:  MOV             R1, SP
186C40:  VLD1.64         {D16-D17}, [R5]
186C44:  MOV             R0, R1
186C46:  VMOV.I32        Q9, #0
186C4A:  VST1.64         {D16-D17}, [R0]!
186C4E:  VST1.64         {D18-D19}, [R0]
186C52:  MOV             R0, R9
186C54:  BL              sub_185136
186C58:  ADD             SP, SP, #0x140
186C5A:  VPOP            {D8-D9}
186C5E:  ADD             SP, SP, #4
186C60:  POP.W           {R8-R11}
186C64:  POP             {R4-R7,PC}
