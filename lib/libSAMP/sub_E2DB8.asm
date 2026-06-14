; =========================================================
; Game Engine Function: sub_E2DB8
; Address            : 0xE2DB8 - 0xE2EC8
; =========================================================

E2DB8:  PUSH            {R4-R7,LR}
E2DBA:  ADD             R7, SP, #0xC
E2DBC:  PUSH.W          {R8-R10}
E2DC0:  SUB             SP, SP, #4
E2DC2:  CMP.W           R1, #0x1100
E2DC6:  BCC             loc_E2EB4
E2DC8:  CMP.W           R1, #0x1160
E2DCC:  MOV.W           R2, #2
E2DD0:  ITTT CS
E2DD2:  MOVWCS          R3, #0x2329
E2DD6:  SUBCS           R3, R1, R3
E2DD8:  CMPCS           R3, #2
E2DDA:  BCC             loc_E2EB6
E2DDC:  ADR             R2, dword_E2EC8
E2DDE:  VDUP.32         Q10, R1
E2DE2:  VLD1.64         {D16-D17}, [R2]
E2DE6:  ADR             R2, dword_E2ED8
E2DE8:  VADD.I32        Q8, Q10, Q8
E2DEC:  SUB.W           R3, R1, #0x2E80
E2DF0:  VLD1.64         {D18-D19}, [R2]
E2DF4:  ADR             R2, dword_E2EE8
E2DF6:  VADD.I32        Q9, Q10, Q9
E2DFA:  MOVW            R6, #0x7650
E2DFE:  VLD1.64         {D20-D21}, [R2]
E2E02:  ADR             R2, dword_E2EF8
E2E04:  VCGT.U32        Q8, Q10, Q8
E2E08:  CMP             R3, R6
E2E0A:  VLD1.64         {D22-D23}, [R2]
E2E0E:  MOV.W           R12, #0
E2E12:  VCGT.U32        Q9, Q11, Q9
E2E16:  MOVW            R3, #0x303F
E2E1A:  IT CC
E2E1C:  MOVCC.W         R12, #1
E2E20:  SUBS            R3, R1, R3
E2E22:  VMOVN.I32       D17, Q8
E2E26:  IT NE
E2E28:  MOVNE           R3, #1
E2E2A:  VMOVN.I32       D16, Q9
E2E2E:  VMOVN.I16       D16, Q8
E2E32:  VMOV.U8         LR, D16[0]
E2E36:  VMOV.U8         R2, D16[1]
E2E3A:  VMOV.U8         R9, D16[2]
E2E3E:  VMOV.U8         R8, D16[3]
E2E42:  VMOV.U8         R10, D16[4]
E2E46:  VMOV.U8         R6, D16[6]
E2E4A:  VMOV.U8         R4, D16[7]
E2E4E:  AND.W           R5, LR, #1
E2E52:  VMOV.U8         LR, D16[5]
E2E56:  AND.W           R2, R2, #1
E2E5A:  ORR.W           R2, R5, R2,LSL#1
E2E5E:  AND.W           R5, R9, #1
E2E62:  ORR.W           R2, R2, R5,LSL#2
E2E66:  AND.W           R5, R8, #1
E2E6A:  AND.W           R6, R6, #1
E2E6E:  ORR.W           R2, R2, R5,LSL#3
E2E72:  AND.W           R5, R10, #1
E2E76:  ORR.W           R2, R2, R5,LSL#4
E2E7A:  AND.W           R5, LR, #1
E2E7E:  ORR.W           R2, R2, R5,LSL#5
E2E82:  ORR.W           R2, R2, R6,LSL#6
E2E86:  ORR.W           R2, R2, R4,LSL#7
E2E8A:  LSLS            R2, R2, #0x18
E2E8C:  MOV.W           R2, #2
E2E90:  BNE             loc_E2EB6
E2E92:  SUB.W           R6, R1, #0xAC00
E2E96:  MOVW            R5, #0x2BA4
E2E9A:  CMP             R6, R5
E2E9C:  BCC             loc_E2EB6
E2E9E:  ANDS.W          R3, R3, R12
E2EA2:  BNE             loc_E2EB6
E2EA4:  MOVS            R2, #1
E2EA6:  MOVW            R3, #0x1F9
E2EAA:  CMP.W           R3, R1,LSR#8
E2EAE:  IT EQ
E2EB0:  MOVEQ           R2, #2
E2EB2:  B               loc_E2EB6
E2EB4:  MOVS            R2, #1
E2EB6:  LDR             R0, [R0]
E2EB8:  LDR             R1, [R0]
E2EBA:  ADD             R1, R2
E2EBC:  STR             R1, [R0]
E2EBE:  MOVS            R0, #1
E2EC0:  ADD             SP, SP, #4
E2EC2:  POP.W           {R8-R10}
E2EC6:  POP             {R4-R7,PC}
