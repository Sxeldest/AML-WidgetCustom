; =========================================================
; Game Engine Function: sub_479F00
; Address            : 0x479F00 - 0x47A054
; =========================================================

479F00:  PUSH            {R4-R7,LR}
479F02:  ADD             R7, SP, #0xC
479F04:  PUSH.W          {R8-R11}
479F08:  SUB             SP, SP, #4
479F0A:  MOV             R4, R0
479F0C:  LDR.W           R0, [R4,#0xE4]
479F10:  CMP             R0, #1
479F12:  BNE             loc_479F56
479F14:  LDR.W           R6, [R4,#0xE8]
479F18:  ADR             R1, dword_47A060
479F1A:  VLD1.64         {D16-D17}, [R1@128]
479F1E:  MOV.W           R8, #1
479F22:  LDR             R0, [R6,#0x1C]
479F24:  STR.W           R0, [R4,#0xF8]
479F28:  LDR             R0, [R6,#0x20]
479F2A:  STR.W           R0, [R4,#0xFC]
479F2E:  ADD.W           R0, R6, #0x34 ; '4'
479F32:  VST1.32         {D16-D17}, [R0]
479F36:  LDR             R5, [R6,#0xC]
479F38:  LDR             R0, [R6,#0x20]
479F3A:  STR.W           R8, [R6,#0x44]
479F3E:  MOV             R1, R5
479F40:  BLX             __aeabi_uidivmod
479F44:  CMP             R1, #0
479F46:  MOV.W           R0, #0
479F4A:  IT EQ
479F4C:  MOVEQ           R1, R5
479F4E:  STR             R1, [R6,#0x48]
479F50:  STRD.W          R8, R0, [R4,#0x100]
479F54:  B               loc_47A030
479F56:  SUBS            R0, #1
479F58:  CMP             R0, #4
479F5A:  BCC             loc_479F78
479F5C:  LDR             R0, [R4]
479F5E:  MOVS            R1, #0x1A
479F60:  STR             R1, [R0,#0x14]
479F62:  LDR             R0, [R4]
479F64:  LDR.W           R1, [R4,#0xE4]
479F68:  STR             R1, [R0,#0x18]
479F6A:  MOVS            R1, #4
479F6C:  LDR             R0, [R4]
479F6E:  STR             R1, [R0,#0x1C]
479F70:  LDR             R0, [R4]
479F72:  LDR             R1, [R0]
479F74:  MOV             R0, R4
479F76:  BLX             R1
479F78:  LDR.W           R1, [R4,#0xD8]
479F7C:  LDR             R0, [R4,#0x1C]; int
479F7E:  LSLS            R1, R1, #3; int
479F80:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
479F84:  LDR.W           R1, [R4,#0xDC]
479F88:  LDR             R2, [R4,#0x20]
479F8A:  STR.W           R0, [R4,#0xF8]
479F8E:  LSLS            R1, R1, #3; int
479F90:  MOV             R0, R2; int
479F92:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
479F96:  LDR.W           R1, [R4,#0xE4]
479F9A:  MOVS            R2, #0
479F9C:  STRD.W          R0, R2, [R4,#0xFC]
479FA0:  CMP             R1, #1
479FA2:  BLT             loc_47A030
479FA4:  MOVS            R6, #0
479FA6:  ADD.W           R0, R4, R6,LSL#2
479FAA:  LDR.W           R10, [R0,#0xE8]
479FAE:  LDRD.W          R5, R9, [R10,#8]
479FB2:  LDRD.W          R0, R8, [R10,#0x1C]
479FB6:  STRD.W          R5, R9, [R10,#0x34]
479FBA:  MOV             R1, R5
479FBC:  MUL.W           R11, R9, R5
479FC0:  BLX             __aeabi_uidivmod
479FC4:  CMP             R1, #0
479FC6:  MOV.W           R0, R5,LSL#3
479FCA:  IT EQ
479FCC:  MOVEQ           R1, R5
479FCE:  STRD.W          R0, R1, [R10,#0x40]
479FD2:  MOV             R0, R8
479FD4:  MOV             R1, R9
479FD6:  BLX             __aeabi_uidivmod
479FDA:  CMP             R1, #0
479FDC:  IT EQ
479FDE:  MOVEQ           R1, R9
479FE0:  STR.W           R1, [R10,#0x48]
479FE4:  STR.W           R11, [R10,#0x3C]
479FE8:  LDR.W           R0, [R4,#0x100]
479FEC:  MLA.W           R0, R9, R5, R0
479FF0:  CMP             R0, #0xB
479FF2:  BLT             loc_47A002
479FF4:  LDR             R0, [R4]
479FF6:  MOVS            R1, #0xD
479FF8:  STR             R1, [R0,#0x14]
479FFA:  LDR             R0, [R4]
479FFC:  LDR             R1, [R0]
479FFE:  MOV             R0, R4
47A000:  BLX             R1
47A002:  CMP.W           R11, #1
47A006:  BLT             loc_47A026
47A008:  ADD.W           R0, R11, #1
47A00C:  LDR.W           R1, [R4,#0x100]
47A010:  SUBS            R0, #1
47A012:  CMP             R0, #1
47A014:  ADD.W           R2, R1, #1
47A018:  STR.W           R2, [R4,#0x100]
47A01C:  ADD.W           R1, R4, R1,LSL#2
47A020:  STR.W           R6, [R1,#0x104]
47A024:  BGT             loc_47A00C
47A026:  LDR.W           R0, [R4,#0xE4]
47A02A:  ADDS            R6, #1
47A02C:  CMP             R6, R0
47A02E:  BLT             loc_479FA6
47A030:  LDR.W           R0, [R4,#0xC0]
47A034:  CMP             R0, #1
47A036:  BLT             loc_47A04C
47A038:  LDR.W           R1, [R4,#0xF8]
47A03C:  MULS            R0, R1
47A03E:  MOVW            R1, #0xFFFF
47A042:  CMP             R0, R1
47A044:  IT LT
47A046:  MOVLT           R1, R0
47A048:  STR.W           R1, [R4,#0xBC]
47A04C:  ADD             SP, SP, #4
47A04E:  POP.W           {R8-R11}
47A052:  POP             {R4-R7,PC}
