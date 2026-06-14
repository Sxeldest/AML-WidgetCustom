; =========================================================
; Game Engine Function: sub_479C20
; Address            : 0x479C20 - 0x479E62
; =========================================================

479C20:  PUSH            {R4-R7,LR}
479C22:  ADD             R7, SP, #0xC
479C24:  PUSH.W          {R11}
479C28:  MOV             R4, R0
479C2A:  LDR.W           R5, [R4,#0x13C]
479C2E:  LDR             R0, [R5,#0x10]
479C30:  CMP             R0, #2
479C32:  BEQ.W           loc_479DAC
479C36:  CMP             R0, #1
479C38:  BEQ             loc_479D06
479C3A:  CMP             R0, #0
479C3C:  BNE.W           loc_479D82
479C40:  LDR             R0, [R4,#0x3C]
479C42:  CMP             R0, #5
479C44:  BLT             loc_479C62
479C46:  LDR             R0, [R4]
479C48:  MOVS            R1, #0x1A
479C4A:  STR             R1, [R0,#0x14]
479C4C:  LDR             R0, [R4]
479C4E:  LDR             R1, [R4,#0x3C]
479C50:  STR             R1, [R0,#0x18]
479C52:  MOVS            R1, #4
479C54:  LDR             R0, [R4]
479C56:  STR             R1, [R0,#0x1C]
479C58:  LDR             R0, [R4]
479C5A:  LDR             R1, [R0]
479C5C:  MOV             R0, R4
479C5E:  BLX             R1
479C60:  LDR             R0, [R4,#0x3C]
479C62:  CMP             R0, #1
479C64:  STR.W           R0, [R4,#0xE4]
479C68:  BLT             loc_479C84
479C6A:  ADD.W           R0, R4, #0xE8
479C6E:  MOVS            R1, #0
479C70:  MOVS            R2, #0
479C72:  LDR             R3, [R4,#0x44]
479C74:  ADD             R3, R1
479C76:  STR.W           R3, [R0,R2,LSL#2]
479C7A:  ADDS            R1, #0x54 ; 'T'
479C7C:  LDR             R3, [R4,#0x3C]
479C7E:  ADDS            R2, #1
479C80:  CMP             R2, R3
479C82:  BLT             loc_479C72
479C84:  ADR             R0, dword_479E70
479C86:  VLD1.64         {D16-D17}, [R0@128]
479C8A:  ADD.W           R0, R4, #0x12C
479C8E:  VST1.32         {D16-D17}, [R0]
479C92:  MOV             R0, R4
479C94:  BL              sub_479F00
479C98:  LDRB.W          R0, [R4,#0xB0]
479C9C:  CBNZ            R0, loc_479CBE
479C9E:  LDR.W           R0, [R4,#0x150]
479CA2:  LDR             R1, [R0]
479CA4:  MOV             R0, R4
479CA6:  BLX             R1
479CA8:  LDR.W           R0, [R4,#0x154]
479CAC:  LDR             R1, [R0]
479CAE:  MOV             R0, R4
479CB0:  BLX             R1
479CB2:  LDR.W           R0, [R4,#0x144]
479CB6:  MOVS            R1, #0
479CB8:  LDR             R2, [R0]
479CBA:  MOV             R0, R4
479CBC:  BLX             R2
479CBE:  LDR.W           R0, [R4,#0x158]
479CC2:  LDR             R1, [R0]
479CC4:  MOV             R0, R4
479CC6:  BLX             R1
479CC8:  LDR.W           R0, [R4,#0x15C]
479CCC:  LDRB.W          R1, [R4,#0xB2]
479CD0:  LDR             R2, [R0]
479CD2:  MOV             R0, R4
479CD4:  BLX             R2
479CD6:  LDR.W           R0, [R4,#0x148]
479CDA:  MOVS            R6, #0
479CDC:  LDR             R1, [R5,#0x18]
479CDE:  LDR             R2, [R0]
479CE0:  CMP             R1, #1
479CE2:  MOV.W           R1, #0
479CE6:  MOV             R0, R4
479CE8:  IT GT
479CEA:  MOVGT           R1, #3
479CEC:  BLX             R2
479CEE:  LDR.W           R0, [R4,#0x140]
479CF2:  MOVS            R1, #0
479CF4:  LDR             R2, [R0]
479CF6:  MOV             R0, R4
479CF8:  BLX             R2
479CFA:  LDRB.W          R0, [R4,#0xB2]
479CFE:  CMP             R0, #0
479D00:  IT EQ
479D02:  MOVEQ           R6, #1
479D04:  B               loc_479E3C
479D06:  LDR             R0, [R4,#0x3C]
479D08:  CMP             R0, #5
479D0A:  BLT             loc_479D28
479D0C:  LDR             R0, [R4]
479D0E:  MOVS            R1, #0x1A
479D10:  STR             R1, [R0,#0x14]
479D12:  LDR             R0, [R4]
479D14:  LDR             R1, [R4,#0x3C]
479D16:  STR             R1, [R0,#0x18]
479D18:  MOVS            R1, #4
479D1A:  LDR             R0, [R4]
479D1C:  STR             R1, [R0,#0x1C]
479D1E:  LDR             R0, [R4]
479D20:  LDR             R1, [R0]
479D22:  MOV             R0, R4
479D24:  BLX             R1
479D26:  LDR             R0, [R4,#0x3C]
479D28:  CMP             R0, #1
479D2A:  STR.W           R0, [R4,#0xE4]
479D2E:  BLT             loc_479D4A
479D30:  ADD.W           R0, R4, #0xE8
479D34:  MOVS            R1, #0
479D36:  MOVS            R2, #0
479D38:  LDR             R3, [R4,#0x44]
479D3A:  ADD             R3, R1
479D3C:  STR.W           R3, [R0,R2,LSL#2]
479D40:  ADDS            R1, #0x54 ; 'T'
479D42:  LDR             R3, [R4,#0x3C]
479D44:  ADDS            R2, #1
479D46:  CMP             R2, R3
479D48:  BLT             loc_479D38
479D4A:  ADR             R0, dword_479E70
479D4C:  VLD1.64         {D16-D17}, [R0@128]
479D50:  ADD.W           R0, R4, #0x12C
479D54:  VST1.32         {D16-D17}, [R0]
479D58:  MOV             R0, R4
479D5A:  BL              sub_479F00
479D5E:  LDR.W           R0, [R4,#0x12C]
479D62:  CBZ             R0, loc_479D92
479D64:  LDR.W           R0, [R4,#0x15C]
479D68:  MOVS            R1, #1
479D6A:  LDR             R2, [R0]
479D6C:  MOV             R0, R4
479D6E:  BLX             R2
479D70:  LDR.W           R0, [R4,#0x148]
479D74:  MOVS            R1, #2
479D76:  LDR             R2, [R0]
479D78:  MOV             R0, R4
479D7A:  BLX             R2
479D7C:  MOVS            R0, #0
479D7E:  STRB            R0, [R5,#0xC]
479D80:  B               loc_479E3E
479D82:  LDR             R0, [R4]
479D84:  MOVS            R1, #0x30 ; '0'
479D86:  STR             R1, [R0,#0x14]
479D88:  LDR             R0, [R4]
479D8A:  LDR             R1, [R0]
479D8C:  MOV             R0, R4
479D8E:  BLX             R1
479D90:  B               loc_479E3E
479D92:  LDR.W           R0, [R4,#0x134]
479D96:  CMP             R0, #0
479D98:  BEQ             loc_479D64
479D9A:  LDRB.W          R0, [R4,#0xB1]
479D9E:  CMP             R0, #0
479DA0:  BNE             loc_479D64
479DA2:  LDR             R0, [R5,#0x14]
479DA4:  MOVS            R1, #2
479DA6:  ADDS            R0, #1
479DA8:  STRD.W          R1, R0, [R5,#0x10]
479DAC:  LDRB.W          R0, [R4,#0xB2]
479DB0:  CBNZ            R0, loc_479E0A
479DB2:  LDR             R0, [R4,#0x3C]
479DB4:  CMP             R0, #5
479DB6:  BLT             loc_479DD4
479DB8:  LDR             R0, [R4]
479DBA:  MOVS            R1, #0x1A
479DBC:  STR             R1, [R0,#0x14]
479DBE:  LDR             R0, [R4]
479DC0:  LDR             R1, [R4,#0x3C]
479DC2:  STR             R1, [R0,#0x18]
479DC4:  MOVS            R1, #4
479DC6:  LDR             R0, [R4]
479DC8:  STR             R1, [R0,#0x1C]
479DCA:  LDR             R0, [R4]
479DCC:  LDR             R1, [R0]
479DCE:  MOV             R0, R4
479DD0:  BLX             R1
479DD2:  LDR             R0, [R4,#0x3C]
479DD4:  CMP             R0, #1
479DD6:  STR.W           R0, [R4,#0xE4]
479DDA:  BLT             loc_479DF6
479DDC:  ADD.W           R0, R4, #0xE8
479DE0:  MOVS            R1, #0
479DE2:  MOVS            R2, #0
479DE4:  LDR             R3, [R4,#0x44]
479DE6:  ADD             R3, R1
479DE8:  STR.W           R3, [R0,R2,LSL#2]
479DEC:  ADDS            R1, #0x54 ; 'T'
479DEE:  LDR             R3, [R4,#0x3C]
479DF0:  ADDS            R2, #1
479DF2:  CMP             R2, R3
479DF4:  BLT             loc_479DE4
479DF6:  ADR             R0, dword_479E70
479DF8:  VLD1.64         {D16-D17}, [R0@128]
479DFC:  ADD.W           R0, R4, #0x12C
479E00:  VST1.32         {D16-D17}, [R0]
479E04:  MOV             R0, R4
479E06:  BL              sub_479F00
479E0A:  LDR.W           R0, [R4,#0x15C]
479E0E:  MOVS            R1, #0
479E10:  MOVS            R6, #0
479E12:  LDR             R2, [R0]
479E14:  MOV             R0, R4
479E16:  BLX             R2
479E18:  LDR.W           R0, [R4,#0x148]
479E1C:  MOVS            R1, #2
479E1E:  LDR             R2, [R0]
479E20:  MOV             R0, R4
479E22:  BLX             R2
479E24:  LDR             R0, [R5,#0x1C]
479E26:  CBNZ            R0, loc_479E32
479E28:  LDR.W           R0, [R4,#0x14C]
479E2C:  LDR             R1, [R0,#4]
479E2E:  MOV             R0, R4
479E30:  BLX             R1
479E32:  LDR.W           R0, [R4,#0x14C]
479E36:  LDR             R1, [R0,#8]
479E38:  MOV             R0, R4
479E3A:  BLX             R1
479E3C:  STRB            R6, [R5,#0xC]
479E3E:  LDRD.W          R0, R1, [R5,#0x14]
479E42:  MOVS            R2, #0
479E44:  SUBS            R1, #1
479E46:  CMP             R0, R1
479E48:  IT EQ
479E4A:  MOVEQ           R2, #1
479E4C:  STRB            R2, [R5,#0xD]
479E4E:  LDR             R1, [R4,#8]
479E50:  CMP             R1, #0
479E52:  ITTTT NE
479E54:  STRNE           R0, [R1,#0xC]
479E56:  LDRNE           R0, [R4,#8]
479E58:  LDRNE           R1, [R5,#0x18]
479E5A:  STRNE           R1, [R0,#0x10]
479E5C:  POP.W           {R11}
479E60:  POP             {R4-R7,PC}
