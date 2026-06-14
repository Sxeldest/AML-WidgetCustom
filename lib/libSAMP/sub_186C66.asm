; =========================================================
; Game Engine Function: sub_186C66
; Address            : 0x186C66 - 0x186D6A
; =========================================================

186C66:  PUSH            {R4-R7,LR}
186C68:  ADD             R7, SP, #0xC
186C6A:  PUSH.W          {R8-R11}
186C6E:  SUB             SP, SP, #0x10C
186C70:  ADD             R5, SP, #0x128+var_60
186C72:  VLD1.32         {D22-D23}, [R0]!
186C76:  VMOV.I32        Q8, #0
186C7A:  ADD             R6, SP, #0x128+var_E0
186C7C:  VLD1.32         {D28-D29}, [R0]
186C80:  MOV             R0, R5
186C82:  ADD.W           R11, SP, #0x128+var_120
186C86:  VST1.64         {D22-D23}, [R0]!
186C8A:  VST1.64         {D28-D29}, [R0]!
186C8E:  VST1.64         {D16-D17}, [R0]!
186C92:  VLD1.32         {D18-D19}, [R1]!
186C96:  VLD1.32         {D24-D25}, [R1]
186C9A:  MOVS            R1, #0xC
186C9C:  VST1.64         {D16-D17}, [R0]
186CA0:  ADD             R0, SP, #0x128+var_A0
186CA2:  VST1.64         {D18-D19}, [R0]!
186CA6:  VST1.64         {D24-D25}, [R0]!
186CAA:  VST1.64         {D16-D17}, [R0]!
186CAE:  VLD1.32         {D20-D21}, [R2]!
186CB2:  VLD1.32         {D26-D27}, [R2]
186CB6:  MOV             R2, R5
186CB8:  VST1.64         {D16-D17}, [R0]
186CBC:  MOV             R0, R6
186CBE:  VST1.64         {D20-D21}, [R0]!
186CC2:  VST1.64         {D26-D27}, [R0]!
186CC6:  VST1.64         {D16-D17}, [R0]!
186CCA:  VST1.64         {D16-D17}, [R0]
186CCE:  MOVS            R0, #1
186CD0:  STR             R0, [SP,#0x128+var_120]
186CD2:  ADD.W           R0, R11, #4
186CD6:  VST1.32         {D16-D17}, [R0]!
186CDA:  VST1.32         {D16-D17}, [R0]!
186CDE:  VST1.32         {D16-D17}, [R0],R1
186CE2:  MOV             R1, R6
186CE4:  VST1.32         {D16-D17}, [R0]
186CE8:  MOV             R0, R5
186CEA:  STR             R3, [SP,#0x128+var_124]
186CEC:  BL              sub_185CB0
186CF0:  MOV.W           R10, #0
186CF4:  MOVS            R4, #0
186CF6:  ADD             R0, SP, #0x128+var_A0
186CF8:  MOV.W           R8, #0x20 ; ' '
186CFC:  LDR.W           R9, [R0,R10,LSL#2]
186D00:  CMP.W           R9, #0
186D04:  BEQ             loc_186D44
186D06:  MOVS.W          R0, R9,LSL#31
186D0A:  BEQ             loc_186D38
186D0C:  CBZ             R4, loc_186D22
186D0E:  MOV             R0, R5
186D10:  BL              sub_186DDA
186D14:  MOV             R0, R5
186D16:  MOV             R1, R6
186D18:  MOV             R2, R5
186D1A:  BL              sub_185CB0
186D1E:  SUBS            R4, #1
186D20:  BNE             loc_186D0E
186D22:  MOV             R0, R11
186D24:  MOV             R1, R5
186D26:  MOV             R2, R11
186D28:  BL              sub_186E6E
186D2C:  MOV             R0, R11
186D2E:  MOV             R1, R6
186D30:  MOV             R2, R11
186D32:  BL              sub_185CB0
186D36:  MOVS            R4, #0
186D38:  SUB.W           R8, R8, #1
186D3C:  ADDS            R4, #1
186D3E:  MOVS.W          R9, R9,LSR#1
186D42:  BNE             loc_186D06
186D44:  ADD.W           R10, R10, #1
186D48:  ADD             R4, R8
186D4A:  CMP.W           R10, #8
186D4E:  BNE             loc_186CF6
186D50:  VLD1.32         {D16-D17}, [R11]!
186D54:  LDR             R0, [SP,#0x128+var_124]
186D56:  VLD1.64         {D18-D19}, [R11]
186D5A:  VST1.32         {D16-D17}, [R0]!
186D5E:  VST1.32         {D18-D19}, [R0]
186D62:  ADD             SP, SP, #0x10C
186D64:  POP.W           {R8-R11}
186D68:  POP             {R4-R7,PC}
