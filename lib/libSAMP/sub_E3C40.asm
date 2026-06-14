; =========================================================
; Game Engine Function: sub_E3C40
; Address            : 0xE3C40 - 0xE3D2A
; =========================================================

E3C40:  PUSH            {R4-R7,LR}
E3C42:  ADD             R7, SP, #0xC
E3C44:  PUSH.W          {R8-R10}
E3C48:  LDR             R5, [R1,#0x18]
E3C4A:  MOV.W           R12, #0xFFFFFFFF
E3C4E:  LDR.W           R10, [R1,#0x2C]
E3C52:  LDR.W           LR, [R7,#arg_4]
E3C56:  CMP             R10, R5
E3C58:  ITT CC
E3C5A:  STRCC           R5, [R1,#0x2C]
E3C5C:  MOVCC           R10, R5
E3C5E:  ANDS.W          R6, LR, #0x18
E3C62:  BEQ             loc_E3CEE
E3C64:  LDR.W           R9, [R7,#arg_0]
E3C68:  CMP.W           R9, #1
E3C6C:  IT EQ
E3C6E:  CMPEQ           R6, #0x18
E3C70:  BEQ             loc_E3CEE
E3C72:  CMP.W           R10, #0
E3C76:  BEQ             loc_E3C8E
E3C78:  LDRB.W          R8, [R1,#0x20]
E3C7C:  LDR             R6, [R1,#0x28]
E3C7E:  MOVS.W          R4, R8,LSL#31
E3C82:  IT EQ
E3C84:  ADDEQ.W         R6, R1, #0x21 ; '!'
E3C88:  SUB.W           R8, R10, R6
E3C8C:  B               loc_E3C92
E3C8E:  MOV.W           R8, #0
E3C92:  CMP.W           R9, #0
E3C96:  BEQ             loc_E3CB0
E3C98:  CMP.W           R9, #2
E3C9C:  BEQ             loc_E3CB8
E3C9E:  CMP.W           R9, #1
E3CA2:  BNE             loc_E3CEE
E3CA4:  MOVS.W          R4, LR,LSL#28
E3CA8:  BMI             loc_E3CC0
E3CAA:  LDR             R4, [R1,#0x14]
E3CAC:  SUBS            R6, R5, R4
E3CAE:  B               loc_E3CC6
E3CB0:  MOVS            R6, #0
E3CB2:  MOV.W           R9, #0
E3CB6:  B               loc_E3CCA
E3CB8:  MOV.W           R9, R8,ASR#31
E3CBC:  MOV             R6, R8
E3CBE:  B               loc_E3CCA
E3CC0:  LDRD.W          R4, R6, [R1,#8]
E3CC4:  SUBS            R6, R6, R4
E3CC6:  MOV.W           R9, R6,ASR#31
E3CCA:  ADDS            R2, R2, R6
E3CCC:  ADCS.W          R3, R3, R9
E3CD0:  BMI             loc_E3CEE
E3CD2:  MOV.W           R4, R8,ASR#31
E3CD6:  SUBS.W          R6, R8, R2
E3CDA:  SBCS            R4, R3
E3CDC:  BLT             loc_E3CEE
E3CDE:  AND.W           R6, LR, #8
E3CE2:  ORRS.W          R4, R2, R3
E3CE6:  BEQ             loc_E3D0E
E3CE8:  CBZ             R6, loc_E3D00
E3CEA:  LDR             R4, [R1,#0xC]
E3CEC:  CBNZ            R4, loc_E3D00
E3CEE:  MOV.W           R5, #0xFFFFFFFF
E3CF2:  MOVS            R1, #0
E3CF4:  STRD.W          R12, R5, [R0,#8]
E3CF8:  STR             R1, [R0]
E3CFA:  POP.W           {R8-R10}
E3CFE:  POP             {R4-R7,PC}
E3D00:  MOVS.W          R4, LR,LSL#27
E3D04:  BPL             loc_E3D0E
E3D06:  CMP             R5, #0
E3D08:  MOV.W           R5, #0xFFFFFFFF
E3D0C:  BEQ             loc_E3CF2
E3D0E:  CBZ             R6, loc_E3D18
E3D10:  LDR             R6, [R1,#8]
E3D12:  ADD             R6, R2
E3D14:  STRD.W          R6, R10, [R1,#0xC]
E3D18:  MOVS.W          R6, LR,LSL#27
E3D1C:  ITTT MI
E3D1E:  LDRMI           R6, [R1,#0x14]
E3D20:  ADDMI           R6, R2
E3D22:  STRMI           R6, [R1,#0x18]
E3D24:  MOV             R12, R2
E3D26:  MOV             R5, R3
E3D28:  B               loc_E3CF2
