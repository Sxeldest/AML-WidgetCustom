; =========================================================
; Game Engine Function: sub_75110
; Address            : 0x75110 - 0x751F8
; =========================================================

75110:  PUSH            {R4-R7,LR}
75112:  ADD             R7, SP, #0xC
75114:  PUSH.W          {R8-R11}
75118:  SUB             SP, SP, #4
7511A:  MOV             R5, R0
7511C:  ADDS            R0, R1, #1
7511E:  BEQ             loc_75132
75120:  LDRD.W          R6, R0, [R5,#0x18]
75124:  MOV             R11, R1
75126:  LDRD.W          R9, R10, [R5,#8]
7512A:  CMP             R6, R0
7512C:  BEQ             loc_75136
7512E:  LDR             R1, [R5,#0x2C]
75130:  B               loc_7519C
75132:  MOVS            R0, #0
75134:  B               loc_751DA
75136:  LDRB.W          R0, [R5,#0x30]
7513A:  LSLS            R0, R0, #0x1B
7513C:  BMI             loc_75144
7513E:  MOV.W           R0, #0xFFFFFFFF
75142:  B               loc_751DA
75144:  LDR             R0, [R5,#0x2C]
75146:  ADD.W           R8, R5, #0x20 ; ' '
7514A:  LDR             R4, [R5,#0x14]
7514C:  STR             R0, [SP,#0x20+var_20]
7514E:  MOV             R0, R8
75150:  MOVS            R1, #0
75152:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
75156:  LDR.W           R0, [R8]
7515A:  LDRB.W          R2, [R8]
7515E:  BIC.W           R0, R0, #1
75162:  SUBS            R1, R0, #1
75164:  LSLS            R0, R2, #0x1F
75166:  IT EQ
75168:  MOVEQ           R1, #0xA
7516A:  MOV             R0, R8
7516C:  MOVS            R2, #0
7516E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEjc; std::string::resize(uint,char)
75172:  LDR             R0, [SP,#0x20+var_20]
75174:  SUBS            R1, R6, R4
75176:  LDRB.W          R6, [R5,#0x20]
7517A:  SUB.W           R12, R0, R4
7517E:  LDRD.W          R0, R3, [R5,#0x24]
75182:  ANDS.W          R2, R6, #1
75186:  ITT EQ
75188:  ADDEQ.W         R3, R8, #1
7518C:  LSREQ           R0, R6, #1
7518E:  ADDS            R6, R3, R1
75190:  ADD             R0, R3
75192:  ADD.W           R1, R3, R12
75196:  STR             R0, [R5,#0x1C]
75198:  STRD.W          R3, R6, [R5,#0x14]
7519C:  LDRB.W          R3, [R5,#0x30]
751A0:  ADDS            R2, R6, #1
751A2:  CMP             R2, R1
751A4:  IT CS
751A6:  MOVCS           R1, R2
751A8:  STR             R1, [R5,#0x2C]
751AA:  LSLS            R3, R3, #0x1C
751AC:  BPL             loc_751CC
751AE:  LDRB.W          LR, [R5,#0x20]
751B2:  SUB.W           R12, R10, R9
751B6:  LDR             R3, [R5,#0x28]
751B8:  MOVS.W          R4, LR,LSL#31
751BC:  IT EQ
751BE:  ADDEQ.W         R3, R5, #0x21 ; '!'
751C2:  ADD.W           R4, R3, R12
751C6:  STR             R1, [R5,#0x10]
751C8:  STRD.W          R3, R4, [R5,#8]
751CC:  CMP             R6, R0
751CE:  BEQ             loc_751E2
751D0:  UXTB.W          R0, R11
751D4:  STR             R2, [R5,#0x18]
751D6:  STRB.W          R11, [R6]
751DA:  ADD             SP, SP, #4
751DC:  POP.W           {R8-R11}
751E0:  POP             {R4-R7,PC}
751E2:  LDR             R0, [R5]
751E4:  UXTB.W          R1, R11
751E8:  LDR             R2, [R0,#0x34]
751EA:  MOV             R0, R5
751EC:  ADD             SP, SP, #4
751EE:  POP.W           {R8-R11}
751F2:  POP.W           {R4-R7,LR}
751F6:  BX              R2
