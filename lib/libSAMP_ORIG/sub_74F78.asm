; =========================================================
; Game Engine Function: sub_74F78
; Address            : 0x74F78 - 0x75068
; =========================================================

74F78:  PUSH            {R4-R7,LR}
74F7A:  ADD             R7, SP, #0xC
74F7C:  PUSH.W          {R8-R10}
74F80:  LDR             R5, [R1,#0x18]
74F82:  MOV.W           R12, #0xFFFFFFFF
74F86:  LDR.W           R10, [R1,#0x2C]
74F8A:  LDR.W           LR, [R7,#arg_4]
74F8E:  CMP             R10, R5
74F90:  ITT CC
74F92:  STRCC           R5, [R1,#0x2C]
74F94:  MOVCC           R10, R5
74F96:  ANDS.W          R6, LR, #0x18
74F9A:  BEQ             loc_7502A
74F9C:  LDR.W           R9, [R7,#arg_0]
74FA0:  CMP.W           R9, #1
74FA4:  IT EQ
74FA6:  CMPEQ           R6, #0x18
74FA8:  BEQ             loc_7502A
74FAA:  CMP.W           R10, #0
74FAE:  BEQ             loc_74FE2
74FB0:  LDRB.W          R8, [R1,#0x20]
74FB4:  LDR             R6, [R1,#0x28]
74FB6:  MOVS.W          R4, R8,LSL#31
74FBA:  IT EQ
74FBC:  ADDEQ.W         R6, R1, #0x21 ; '!'
74FC0:  SUB.W           R8, R10, R6
74FC4:  CMP.W           R9, #0
74FC8:  BEQ             loc_74FEC
74FCA:  CMP.W           R9, #2
74FCE:  BEQ             loc_74FF4
74FD0:  CMP.W           R9, #1
74FD4:  BNE             loc_7502A
74FD6:  MOVS.W          R4, LR,LSL#28
74FDA:  BMI             loc_74FFC
74FDC:  LDR             R4, [R1,#0x14]
74FDE:  SUBS            R6, R5, R4
74FE0:  B               loc_75002
74FE2:  MOV.W           R8, #0
74FE6:  CMP.W           R9, #0
74FEA:  BNE             loc_74FCA
74FEC:  MOVS            R6, #0
74FEE:  MOV.W           R9, #0
74FF2:  B               loc_75006
74FF4:  MOV.W           R9, R8,ASR#31
74FF8:  MOV             R6, R8
74FFA:  B               loc_75006
74FFC:  LDRD.W          R4, R6, [R1,#8]
75000:  SUBS            R6, R6, R4
75002:  MOV.W           R9, R6,ASR#31
75006:  ADDS            R2, R2, R6
75008:  ADCS.W          R3, R3, R9
7500C:  BMI             loc_7502A
7500E:  MOV.W           R4, R8,ASR#31
75012:  SUBS.W          R6, R8, R2
75016:  SBCS            R4, R3
75018:  BLT             loc_7502A
7501A:  AND.W           R6, LR, #8
7501E:  ORRS.W          R4, R2, R3
75022:  BEQ             loc_7504A
75024:  CBZ             R6, loc_7503C
75026:  LDR             R4, [R1,#0xC]
75028:  CBNZ            R4, loc_7503C
7502A:  MOV.W           R5, #0xFFFFFFFF
7502E:  MOVS            R1, #0
75030:  STRD.W          R12, R5, [R0,#8]
75034:  STR             R1, [R0]
75036:  POP.W           {R8-R10}
7503A:  POP             {R4-R7,PC}
7503C:  MOVS.W          R4, LR,LSL#27
75040:  BPL             loc_7504A
75042:  CMP             R5, #0
75044:  MOV.W           R5, #0xFFFFFFFF
75048:  BEQ             loc_7502E
7504A:  CMP             R6, #0
7504C:  ITTT NE
7504E:  LDRNE           R6, [R1,#8]
75050:  ADDNE           R6, R2
75052:  STRDNE.W        R6, R10, [R1,#0xC]
75056:  MOVS.W          R6, LR,LSL#27
7505A:  ITTT MI
7505C:  LDRMI           R6, [R1,#0x14]
7505E:  ADDMI           R6, R2
75060:  STRMI           R6, [R1,#0x18]
75062:  MOV             R12, R2
75064:  MOV             R5, R3
75066:  B               loc_7502E
