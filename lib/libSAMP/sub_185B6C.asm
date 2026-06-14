; =========================================================
; Game Engine Function: sub_185B6C
; Address            : 0x185B6C - 0x185C30
; =========================================================

185B6C:  PUSH            {R4-R7,LR}
185B6E:  ADD             R7, SP, #0xC
185B70:  PUSH.W          {R8}
185B74:  VPUSH           {D8-D9}
185B78:  SUB             SP, SP, #0xA0
185B7A:  ADD             R4, SP, #0xC0+var_60
185B7C:  VLD1.32         {D16-D17}, [R0]!
185B80:  VMOV.I32        Q4, #0
185B84:  MOV             R8, R3
185B86:  MOV             R6, R4
185B88:  VLD1.32         {D18-D19}, [R0]
185B8C:  MOV             R5, R2
185B8E:  VST1.64         {D16-D17}, [R6]!
185B92:  MOV             R0, R6
185B94:  VST1.64         {D18-D19}, [R0]!
185B98:  VST1.64         {D8-D9}, [R0]!
185B9C:  VST1.64         {D8-D9}, [R0]
185BA0:  MOV             R0, R4
185BA2:  BL              sub_185C30
185BA6:  MOV             R0, R8
185BA8:  ADD             R1, SP, #0xC0+var_A0
185BAA:  VLD1.32         {D16-D17}, [R0]!
185BAE:  MOV             R2, R4
185BB0:  VLD1.32         {D18-D19}, [R0]
185BB4:  MOV             R0, R1
185BB6:  VST1.64         {D16-D17}, [R0]!
185BBA:  VST1.64         {D18-D19}, [R0]!
185BBE:  VST1.64         {D8-D9}, [R0]!
185BC2:  VST1.64         {D8-D9}, [R0]
185BC6:  MOV             R0, R4
185BC8:  BL              sub_185CB0
185BCC:  MOV             R0, R5
185BCE:  VLD1.64         {D18-D19}, [R4]
185BD2:  VLD1.32         {D16-D17}, [R0]!
185BD6:  VLD1.32         {D22-D23}, [R0]
185BDA:  MOV             R0, SP
185BDC:  MOV             R1, R0
185BDE:  VLD1.64         {D20-D21}, [R6]
185BE2:  LDR             R6, [R7,#arg_0]
185BE4:  VST1.64         {D18-D19}, [R1]!
185BE8:  VST1.64         {D20-D21}, [R1]
185BEC:  MOV             R1, R6
185BEE:  VST1.32         {D16-D17}, [R1]!
185BF2:  VST1.32         {D22-D23}, [R1]
185BF6:  MOVS            R1, #0x1C
185BF8:  LDR             R2, [R5,R1]
185BFA:  LDR             R3, [R0,R1]
185BFC:  CMP             R2, R3
185BFE:  BHI             loc_185C1C
185C00:  BCC             loc_185C0A
185C02:  SUBS            R2, R1, #4
185C04:  CMP             R1, #0
185C06:  MOV             R1, R2
185C08:  BNE             loc_185BF8
185C0A:  MOV             R1, SP
185C0C:  MOV             R0, R6
185C0E:  BL              sub_185174
185C12:  MOV             R0, R6
185C14:  MOV             R1, R8
185C16:  BL              sub_185136
185C1A:  B               loc_185C24
185C1C:  MOV             R1, SP
185C1E:  MOV             R0, R6
185C20:  BL              sub_185174
185C24:  ADD             SP, SP, #0xA0
185C26:  VPOP            {D8-D9}
185C2A:  POP.W           {R8}
185C2E:  POP             {R4-R7,PC}
