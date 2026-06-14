; =========================================================
; Game Engine Function: sub_17513C
; Address            : 0x17513C - 0x1751CE
; =========================================================

17513C:  PUSH            {R4-R7,LR}
17513E:  ADD             R7, SP, #0xC
175140:  PUSH.W          {R8-R10}
175144:  SUB             SP, SP, #8
175146:  MOV             R5, R0
175148:  LDR             R0, [R0,#0x18]
17514A:  MOV             R9, R3
17514C:  MOV             R10, R2
17514E:  MOV             R8, R1
175150:  CBZ             R0, loc_17517E
175152:  STR.W           R0, [R8]
175156:  CMP.W           R10, #0
17515A:  ITT NE
17515C:  LDRNE           R0, [R5,#0x1C]
17515E:  STRNE.W         R0, [R10]
175162:  CMP.W           R9, #0
175166:  LDR             R0, [R7,#arg_0]
175168:  ITT NE
17516A:  LDRNE           R1, [R5,#0x20]
17516C:  STRNE.W         R1, [R9]
175170:  CBZ             R0, loc_175176
175172:  MOVS            R1, #4
175174:  STR             R1, [R0]
175176:  ADD             SP, SP, #8
175178:  POP.W           {R8-R10}
17517C:  POP             {R4-R7,PC}
17517E:  MOVS            R0, #0
175180:  ADD             R1, SP, #0x20+var_1C
175182:  STRD.W          R0, R0, [SP,#0x20+var_20]
175186:  MOV             R0, R5
175188:  MOVS            R2, #0
17518A:  MOVS            R3, #0
17518C:  BL              sub_175064
175190:  LDR             R4, [SP,#0x20+var_1C]
175192:  CBZ             R4, loc_1751CA
175194:  LDRD.W          R0, R1, [R5,#0x1C]
175198:  MULS            R0, R1
17519A:  LSLS            R0, R0, #2
17519C:  BL              sub_1654B0
1751A0:  LDRD.W          R1, R2, [R5,#0x1C]
1751A4:  STR             R0, [R5,#0x18]
1751A6:  MULS            R1, R2
1751A8:  CMP             R1, #1
1751AA:  BLT             loc_175152
1751AC:  ADDS            R1, #1
1751AE:  MOVS            R2, #0
1751B0:  MOV             R3, #0xFFFFFF
1751B4:  LDRB            R6, [R4,R2]
1751B6:  SUBS            R1, #1
1751B8:  CMP             R1, #1
1751BA:  ORR.W           R6, R3, R6,LSL#24
1751BE:  STR.W           R6, [R0,R2,LSL#2]
1751C2:  ADD.W           R2, R2, #1
1751C6:  BHI             loc_1751B4
1751C8:  B               loc_175152
1751CA:  LDR             R0, [R5,#0x18]
1751CC:  B               loc_175152
