; =========================================================
; Game Engine Function: sub_184C5E
; Address            : 0x184C5E - 0x184D2E
; =========================================================

184C5E:  PUSH            {R4-R7,LR}
184C60:  ADD             R7, SP, #0xC
184C62:  PUSH.W          {R8-R11}
184C66:  SUB             SP, SP, #0x8C
184C68:  ADD.W           R11, SP, #0xA8+var_A0
184C6C:  VLD1.32         {D18-D19}, [R1]
184C70:  VMOV.I32        Q10, #0
184C74:  MOVS            R1, #0xC
184C76:  VLD1.32         {D22-D23}, [R0]
184C7A:  ADD.W           R0, R11, #4
184C7E:  ADD             R6, SP, #0xA8+var_40
184C80:  ADD             R4, SP, #0xA8+var_80
184C82:  VST1.32         {D20-D21}, [R0],R1
184C86:  MOV             R1, R4
184C88:  VST1.32         {D20-D21}, [R0]
184C8C:  MOV             R0, R6
184C8E:  VST1.64         {D22-D23}, [R0]!
184C92:  VST1.64         {D20-D21}, [R0]
184C96:  ADD             R0, SP, #0xA8+var_60
184C98:  VST1.64         {D18-D19}, [R0]!
184C9C:  VLD1.32         {D16-D17}, [R2]
184CA0:  MOV             R2, R6
184CA2:  VST1.64         {D20-D21}, [R0]
184CA6:  MOV             R0, R4
184CA8:  VST1.64         {D16-D17}, [R0]!
184CAC:  VST1.64         {D20-D21}, [R0]
184CB0:  MOVS            R0, #1
184CB2:  STR             R0, [SP,#0xA8+var_A0]
184CB4:  MOV             R0, R6
184CB6:  STR             R3, [SP,#0xA8+var_A4]
184CB8:  BL              sub_184D9C
184CBC:  MOV.W           R10, #0
184CC0:  MOVS            R5, #0
184CC2:  ADD             R0, SP, #0xA8+var_60
184CC4:  MOV.W           R8, #0x20 ; ' '
184CC8:  LDR.W           R9, [R0,R10,LSL#2]
184CCC:  CMP.W           R9, #0
184CD0:  BEQ             loc_184D10
184CD2:  MOVS.W          R0, R9,LSL#31
184CD6:  BEQ             loc_184D04
184CD8:  CBZ             R5, loc_184CEE
184CDA:  MOV             R0, R6
184CDC:  BL              sub_184FE4
184CE0:  MOV             R0, R6
184CE2:  MOV             R1, R4
184CE4:  MOV             R2, R6
184CE6:  BL              sub_184D9C
184CEA:  SUBS            R5, #1
184CEC:  BNE             loc_184CDA
184CEE:  MOV             R0, R11
184CF0:  MOV             R1, R6
184CF2:  MOV             R2, R11
184CF4:  BL              sub_185060
184CF8:  MOV             R0, R11
184CFA:  MOV             R1, R4
184CFC:  MOV             R2, R11
184CFE:  BL              sub_184D9C
184D02:  MOVS            R5, #0
184D04:  SUB.W           R8, R8, #1
184D08:  ADDS            R5, #1
184D0A:  MOVS.W          R9, R9,LSR#1
184D0E:  BNE             loc_184CD2
184D10:  ADD.W           R10, R10, #1
184D14:  ADD             R5, R8
184D16:  CMP.W           R10, #4
184D1A:  BNE             loc_184CC2
184D1C:  LDR             R0, [SP,#0xA8+var_A4]
184D1E:  VLD1.64         {D16-D17}, [R11]
184D22:  VST1.32         {D16-D17}, [R0]
184D26:  ADD             SP, SP, #0x8C
184D28:  POP.W           {R8-R11}
184D2C:  POP             {R4-R7,PC}
