; =========================================================
; Game Engine Function: silk_NLSF_stabilize
; Address            : 0xB808C - 0xB827A
; =========================================================

B808C:  PUSH            {R4-R7,LR}
B808E:  ADD             R7, SP, #0xC
B8090:  PUSH.W          {R8-R11}
B8094:  SUB             SP, SP, #0xC
B8096:  MOV             R9, R2
B8098:  MOV             R10, R0
B809A:  SUB.W           R0, R9, #1
B809E:  MOV             R11, R1
B80A0:  MOV.W           LR, #0
B80A4:  STR             R0, [SP,#0x28+var_24]
B80A6:  ADD.W           R8, R10, R0,LSL#1
B80AA:  ADD.W           R0, R11, #2
B80AE:  STR             R0, [SP,#0x28+var_28]
B80B0:  STR.W           R8, [SP,#0x28+var_20]
B80B4:  LDRSH.W         R2, [R11]
B80B8:  CMP.W           R9, #2
B80BC:  LDRSH.W         R1, [R10]
B80C0:  SUB.W           R0, R1, R2
B80C4:  BLT             loc_B80EC
B80C6:  UXTH            R5, R1
B80C8:  MOVS            R1, #0
B80CA:  MOVS            R3, #1
B80CC:  LDRSH.W         R4, [R10,R3,LSL#1]
B80D0:  SXTH            R5, R5
B80D2:  LDRSH.W         R6, [R11,R3,LSL#1]
B80D6:  SUBS            R5, R4, R5
B80D8:  SUBS            R6, R5, R6
B80DA:  UXTH            R5, R4
B80DC:  CMP             R6, R0
B80DE:  ITT LT
B80E0:  MOVLT           R1, R3
B80E2:  MOVLT           R0, R6
B80E4:  ADDS            R3, #1
B80E6:  CMP             R9, R3
B80E8:  BNE             loc_B80CC
B80EA:  B               loc_B80EE
B80EC:  MOVS            R1, #0
B80EE:  LDRSH.W         R6, [R8]
B80F2:  LDRSH.W         R3, [R11,R9,LSL#1]
B80F6:  RSB.W           R6, R6, #0x8000
B80FA:  SUBS            R6, R6, R3
B80FC:  CMP             R6, R0
B80FE:  ITT LT
B8100:  MOVLT           R1, R9
B8102:  MOVLT           R0, R6
B8104:  CMP.W           R0, #0xFFFFFFFF
B8108:  BGT.W           loc_B8272
B810C:  CBZ             R1, loc_B811A
B810E:  CMP             R1, R9
B8110:  BNE             loc_B8122
B8112:  RSB.W           R0, R3, #0x8000
B8116:  MOV             R2, R8
B8118:  B               loc_B81BE
B811A:  UXTH            R0, R2
B811C:  STRH.W          R0, [R10]
B8120:  B               loc_B81C0
B8122:  CMP             R1, #1
B8124:  BLT             loc_B8138
B8126:  BEQ             loc_B813A
B8128:  LDR             R5, [SP,#0x28+var_28]
B812A:  SUBS            R0, R1, #1
B812C:  LDRSH.W         R6, [R5],#2
B8130:  SUBS            R0, #1
B8132:  ADD             R2, R6
B8134:  BNE             loc_B812C
B8136:  B               loc_B813A
B8138:  MOVS            R2, #0
B813A:  LDRSH.W         R12, [R11,R1,LSL#1]
B813E:  CMP             R1, R9
B8140:  ADD.W           R4, R2, R12,ASR#1
B8144:  MOV.W           R2, R12,ASR#1
B8148:  BGE             loc_B8166
B814A:  RSB.W           R8, R3, #0x8000
B814E:  LDR             R0, [SP,#0x28+var_24]
B8150:  MOV             R3, R2
B8152:  CMP             R0, R1
B8154:  BLE             loc_B816C
B8156:  LDRSH.W         R2, [R11,R0,LSL#1]
B815A:  SUBS            R0, #1
B815C:  SUB.W           R8, R8, R2
B8160:  CMP             R0, R1
B8162:  BGT             loc_B8156
B8164:  B               loc_B816C
B8166:  MOV             R3, R2
B8168:  MOV.W           R8, #0x8000
B816C:  SUBS            R6, R1, #1
B816E:  LDRSH.W         R0, [R10,R1,LSL#1]
B8172:  LDRSH.W         R2, [R10,R6,LSL#1]
B8176:  ADD             R0, R2
B8178:  AND.W           R2, R0, #1
B817C:  ADD.W           R5, R2, R0,ASR#1
B8180:  SUB.W           R0, R8, R3
B8184:  ADD.W           R2, R10, R1,LSL#1
B8188:  CMP             R4, R0
B818A:  BLE             loc_B819E
B818C:  LDR.W           R8, [SP,#0x28+var_20]
B8190:  CMP             R5, R4
B8192:  MOV             R3, R4
B8194:  BGT             loc_B81B0
B8196:  CMP             R5, R0
B8198:  IT LT
B819A:  MOVLT           R5, R0
B819C:  B               loc_B81AE
B819E:  LDR.W           R8, [SP,#0x28+var_20]
B81A2:  CMP             R5, R0
B81A4:  MOV             R3, R0
B81A6:  BGT             loc_B81B0
B81A8:  CMP             R5, R4
B81AA:  IT LT
B81AC:  MOVLT           R5, R4
B81AE:  MOV             R3, R5
B81B0:  SUB.W           R0, R3, R12,LSR#1
B81B4:  STRH.W          R0, [R10,R6,LSL#1]
B81B8:  LDRH.W          R1, [R11,R1,LSL#1]
B81BC:  ADD             R0, R1
B81BE:  STRH            R0, [R2]
B81C0:  ADD.W           R0, LR, #1
B81C4:  CMP.W           LR, #0x13
B81C8:  MOV             LR, R0
B81CA:  BLT.W           loc_B80B4
B81CE:  CMP             R0, #0x14
B81D0:  BNE             loc_B8272
B81D2:  MOV             R0, R10
B81D4:  MOV             R1, R9
B81D6:  BLX             j_silk_insertion_sort_increasing_all_values_int16
B81DA:  LDRSH.W         R0, [R11]
B81DE:  LDRSH.W         R1, [R10]
B81E2:  CMP             R1, R0
B81E4:  IT GT
B81E6:  MOVGT           R0, R1
B81E8:  CMP.W           R9, #2
B81EC:  STRH.W          R0, [R10]
B81F0:  LDRD.W          R2, R4, [SP,#0x28+var_28]
B81F4:  BLT             loc_B822C
B81F6:  MOVW            R12, #0x8000
B81FA:  ADD.W           R1, R10, #2
B81FE:  MOVT            R12, #0xFFFF
B8202:  MOVW            R3, #0x7FFF
B8206:  LDRSH.W         R6, [R2],#2
B820A:  LDRSH.W         R5, [R1]
B820E:  ADD             R0, R6
B8210:  CMP             R0, R12
B8212:  IT LE
B8214:  MOVLE           R0, R12
B8216:  CMP             R0, R3
B8218:  IT GE
B821A:  MOVGE           R0, R3
B821C:  SXTH            R0, R0
B821E:  CMP             R0, R5
B8220:  IT LT
B8222:  MOVLT           R0, R5
B8224:  SUBS            R4, #1
B8226:  STRH.W          R0, [R1],#2
B822A:  BNE             loc_B8206
B822C:  LDRSH.W         R0, [R11,R9,LSL#1]
B8230:  LDRSH.W         R1, [R8]
B8234:  RSB.W           R0, R0, #0x8000
B8238:  CMP             R0, R1
B823A:  IT GT
B823C:  MOVGT           R0, R1
B823E:  CMP.W           R9, #2
B8242:  STRH.W          R0, [R8]
B8246:  BLT             loc_B8272
B8248:  SUB.W           R1, R11, #2
B824C:  SUB.W           R2, R10, #4
B8250:  LDRSH.W         R3, [R1,R9,LSL#1]
B8254:  SXTH            R0, R0
B8256:  LDRSH.W         R6, [R2,R9,LSL#1]
B825A:  SUBS            R0, R0, R3
B825C:  SUB.W           R3, R9, #2
B8260:  CMP             R0, R6
B8262:  IT GT
B8264:  MOVGT           R0, R6
B8266:  CMP             R3, #0
B8268:  STRH.W          R0, [R2,R9,LSL#1]
B826C:  SUB.W           R9, R9, #1
B8270:  BGT             loc_B8250
B8272:  ADD             SP, SP, #0xC
B8274:  POP.W           {R8-R11}
B8278:  POP             {R4-R7,PC}
