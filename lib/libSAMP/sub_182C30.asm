; =========================================================
; Game Engine Function: sub_182C30
; Address            : 0x182C30 - 0x182DC8
; =========================================================

182C30:  PUSH            {R4-R7,LR}
182C32:  ADD             R7, SP, #0xC
182C34:  PUSH.W          {R8-R10}
182C38:  SUB.W           SP, SP, #0x208
182C3C:  MOV             R9, R0
182C3E:  ADD             R0, SP, #0x220+var_1C4
182C40:  MOV             R6, R2
182C42:  MOV             R10, R1
182C44:  BL              sub_1848C6
182C48:  LDR.W           R0, [R10,#0x83C]
182C4C:  CMP             R0, #4
182C4E:  BNE.W           loc_182DB8
182C52:  ADD.W           R0, R6, #0x19
182C56:  LDRB.W          R1, [R9,#0x96D]
182C5A:  VLD1.8          {D16-D17}, [R0]!
182C5E:  ADD             R2, SP, #0x220+s1
182C60:  CMP             R1, #0
182C62:  VLD1.8          {D18-D19}, [R0]
182C66:  LDRB.W          R0, [R9,#0x96C]
182C6A:  LDR.W           R8, [R6,#0x15]
182C6E:  VST1.64         {D16-D17}, [R2]!
182C72:  VST1.64         {D18-D19}, [R2]
182C76:  BEQ             loc_182D04
182C78:  CMP             R0, #0
182C7A:  BNE             loc_182D04
182C7C:  LDR.W           R0, [R9,#0x948]
182C80:  CMP             R8, R0
182C82:  BNE             loc_182C92
182C84:  ADDW            R1, R9, #0x94C; s2
182C88:  ADD             R0, SP, #0x220+s1; s1
182C8A:  MOVS            R2, #0x20 ; ' '; n
182C8C:  BLX             memcmp
182C90:  CBZ             R0, loc_182D04
182C92:  MOVS            R0, #0x1D; size
182C94:  BLX             malloc
182C98:  MOV             R6, R0
182C9A:  LDR.W           R1, [R10,#4]
182C9E:  MOVS            R0, #0x1C
182CA0:  MOV             R2, R6
182CA2:  STRB.W          R0, [R2,#0x1C]!
182CA6:  MOVS            R0, #0
182CA8:  LDRH.W          R3, [R10,#8]
182CAC:  STRB            R0, [R6,#0x18]
182CAE:  MOVS            R0, #1
182CB0:  STRH            R3, [R6,#8]
182CB2:  MOVS            R3, #8
182CB4:  STR             R2, [R6,#0x14]
182CB6:  STRD.W          R0, R3, [R6,#0xC]
182CBA:  STR             R1, [R6,#4]
182CBC:  LDR             R2, [R6,#8]
182CBE:  MOV             R0, R9
182CC0:  MOVS            R3, #1
182CC2:  BL              sub_1811B4
182CC6:  LDR             R1, =(unk_381C10 - 0x182CCE)
182CC8:  STRH            R0, [R6]
182CCA:  ADD             R1, PC; unk_381C10
182CCC:  MOV             R0, R1; mutex
182CCE:  BLX             EnterCriticalSection_0
182CD2:  ADDW            R0, R9, #0x9A8
182CD6:  BL              sub_184892
182CDA:  STR             R6, [R0]
182CDC:  MOVS            R3, #1
182CDE:  LDR.W           R1, [R9,#0x9B4]
182CE2:  LDR             R0, =(unk_381C10 - 0x182CEE)
182CE4:  LDR.W           R2, [R9,#0x9BC]
182CE8:  STRB            R3, [R1,#4]
182CEA:  ADD             R0, PC; unk_381C10 ; mutex
182CEC:  LDR             R1, [R1,#8]
182CEE:  ADDS            R2, #1
182CF0:  STR.W           R2, [R9,#0x9BC]
182CF4:  STR.W           R1, [R9,#0x9B4]
182CF8:  BLX             LeaveCriticalSection_0
182CFC:  MOVS            R0, #2
182CFE:  STR.W           R0, [R10,#0x83C]
182D02:  B               loc_182DB8
182D04:  ADDS            R4, R6, #1
182D06:  ADD             R5, SP, #0x220+var_30
182D08:  MOVS            R6, #0
182D0A:  BL              sub_187150
182D0E:  STR             R0, [R5,R6]
182D10:  ADDS            R0, R6, #4
182D12:  CMP             R6, #0x10
182D14:  MOV             R6, R0
182D16:  BCC             loc_182D0A
182D18:  MOV             R0, R5
182D1A:  ADD             R1, SP, #0x220+var_70
182D1C:  VLD1.64         {D16-D17}, [R0]!
182D20:  VST1.64         {D16-D17}, [R1]!
182D24:  LDR             R0, [R0]
182D26:  STR             R0, [R1]
182D28:  MOVS            R0, #0
182D2A:  STRD.W          R0, R0, [SP,#0x220+var_5C]
182D2E:  STR             R0, [SP,#0x220+var_54]
182D30:  ADD             R0, SP, #0x220+var_1C4
182D32:  ADD             R2, SP, #0x220+s1
182D34:  MOV             R1, R8
182D36:  BL              sub_182E34
182D3A:  ADD             R6, SP, #0x220+var_90
182D3C:  ADD             R0, SP, #0x220+var_1C4
182D3E:  ADD             R1, SP, #0x220+var_70
182D40:  MOV             R2, R6
182D42:  BL              sub_182E82
182D46:  ADDW            R0, R10, #0x81C
182D4A:  MOVS            R1, #0
182D4C:  LDRB            R2, [R4,R1]
182D4E:  LDRB            R3, [R5,R1]
182D50:  EORS            R2, R3
182D52:  STRB            R2, [R0,R1]
182D54:  ADDS            R1, #1
182D56:  CMP             R1, #0x10
182D58:  BNE             loc_182D4C
182D5A:  MOVS            R0, #1
182D5C:  VLD1.8          {D16-D17}, [R6]!
182D60:  STRB.W          R0, [R10,#0x82C]
182D64:  ADD.W           R0, SP, #0x220+var_1F9
182D68:  ADD.W           R1, R0, #0x15
182D6C:  VLD1.64         {D18-D19}, [R6]
182D70:  ADDS            R0, #1
182D72:  VLD1.8          {D20-D21}, [R4]!
182D76:  VST1.8          {D16-D17}, [R1]!
182D7A:  VST1.8          {D18-D19}, [R1]
182D7E:  LDRD.W          R5, R6, [R10,#4]
182D82:  VST1.8          {D20-D21}, [R0]!
182D86:  LDR             R1, [R4]
182D88:  STR             R1, [R0]
182D8A:  MOVS            R0, #0x10
182D8C:  STRB.W          R0, [SP,#0x220+var_1F9]
182D90:  BL              sub_17E2E4
182D94:  MOVS            R1, #0
182D96:  MOVS            R2, #6
182D98:  STRD.W          R2, R1, [SP,#0x220+var_220]
182D9C:  MOV.W           R2, #0x1A8
182DA0:  STRD.W          R0, R1, [SP,#0x220+var_208]
182DA4:  MOV             R0, R9
182DA6:  STRD.W          R1, R1, [SP,#0x220+var_210]
182DAA:  ADD.W           R1, SP, #0x220+var_1F9
182DAE:  MOVS            R3, #0
182DB0:  STRD.W          R5, R6, [SP,#0x220+var_218]
182DB4:  BL              sub_1825E8
182DB8:  ADD             R0, SP, #0x220+var_1C4
182DBA:  BL              sub_1848C6
182DBE:  ADD.W           SP, SP, #0x208
182DC2:  POP.W           {R8-R10}
182DC6:  POP             {R4-R7,PC}
