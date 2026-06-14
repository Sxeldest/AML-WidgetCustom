; =========================================================
; Game Engine Function: op_pvq_search_c
; Address            : 0x19F14C - 0x19F3B0
; =========================================================

19F14C:  PUSH            {R4-R7,LR}
19F14E:  ADD             R7, SP, #0xC
19F150:  PUSH.W          {R8-R11}
19F154:  SUB             SP, SP, #0x2C
19F156:  MOV             R8, R0
19F158:  LDR             R0, =(__stack_chk_guard_ptr - 0x19F162)
19F15A:  MOV             R6, R3
19F15C:  MOV             R10, R1
19F15E:  ADD             R0, PC; __stack_chk_guard_ptr
19F160:  MOV             R5, R2
19F162:  LDR             R0, [R0]; __stack_chk_guard
19F164:  LDR             R0, [R0]
19F166:  STR.W           R0, [R7,#var_24]
19F16A:  MOVS            R0, #7
19F16C:  ADD.W           R1, R0, R6,LSL#1
19F170:  ADD.W           R0, R0, R6,LSL#2
19F174:  BIC.W           R1, R1, #7
19F178:  BIC.W           R0, R0, #7
19F17C:  SUB.W           R11, SP, R1
19F180:  MOV             SP, R11
19F182:  SUB.W           R4, SP, R0
19F186:  CMP             R6, #1
19F188:  MOV             R0, R6
19F18A:  IT LE
19F18C:  MOVLE           R0, #1
19F18E:  LSLS            R1, R0, #1; n
19F190:  MOV             SP, R4
19F192:  MOV             R0, R11; int
19F194:  BLX             sub_22178C
19F198:  MOVS            R0, #0
19F19A:  MOVS            R1, #0
19F19C:  LDRSH.W         R2, [R8,R1,LSL#1]
19F1A0:  CMP             R2, #0
19F1A2:  UBFX.W          R3, R2, #0xF, #1
19F1A6:  STR.W           R3, [R4,R1,LSL#2]
19F1AA:  IT MI
19F1AC:  NEGMI           R2, R2
19F1AE:  STRH.W          R2, [R8,R1,LSL#1]
19F1B2:  STR.W           R0, [R10,R1,LSL#2]
19F1B6:  ADDS            R1, #1
19F1B8:  CMP             R1, R6
19F1BA:  BLT             loc_19F19C
19F1BC:  ASRS            R0, R6, #1
19F1BE:  CMP             R0, R5
19F1C0:  STR.W           R4, [R7,#var_44]
19F1C4:  BGE             loc_19F262
19F1C6:  MOVS            R4, #0
19F1C8:  MOVS            R0, #0
19F1CA:  LDRSH.W         R1, [R8,R0,LSL#1]
19F1CE:  ADDS            R0, #1
19F1D0:  CMP             R0, R6
19F1D2:  ADD             R4, R1
19F1D4:  BLT             loc_19F1CA
19F1D6:  MOV             R9, R11
19F1D8:  CMP             R4, R5
19F1DA:  BGT             loc_19F1FA
19F1DC:  MOV.W           R4, #0x4000
19F1E0:  MOV             R0, R8
19F1E2:  CMP             R6, #2
19F1E4:  MOV             R1, R6
19F1E6:  STRH.W          R4, [R0],#2; int
19F1EA:  IT LE
19F1EC:  MOVLE           R1, #2
19F1EE:  MOV             R2, #0xFFFFFFFE
19F1F2:  ADD.W           R1, R2, R1,LSL#1; n
19F1F6:  BLX             sub_22178C
19F1FA:  MOV             R0, R4
19F1FC:  BLX             j_celt_rcp
19F200:  MOV             R11, R0
19F202:  MOV             R0, R4
19F204:  BLX             j_celt_rcp
19F208:  PKHBT.W         R0, R0, R11
19F20C:  SXTH            R1, R5
19F20E:  MOVS            R2, #0
19F210:  MOV.W           LR, #0
19F214:  MULS            R0, R1
19F216:  MOV             R12, R5
19F218:  MOVS            R4, #0
19F21A:  MOV             R11, R9
19F21C:  STR.W           R5, [R7,#var_2C]
19F220:  ASRS            R0, R0, #0x10
19F222:  STR.W           R0, [R7,#var_28]
19F226:  LDRSH.W         R3, [R8,R4,LSL#1]
19F22A:  LDR.W           R0, [R7,#var_28]
19F22E:  SMULBB.W        R1, R0, R3
19F232:  MOV             R0, R2
19F234:  ASRS            R2, R1, #0xF
19F236:  SUB.W           R12, R12, R1,ASR#15
19F23A:  LSLS            R5, R2, #1
19F23C:  STR.W           R2, [R10,R4,LSL#2]
19F240:  STRH.W          R5, [R11,R4,LSL#1]
19F244:  SXTH.W          R5, LR
19F248:  SBFX.W          R9, R1, #0xF, #0x10
19F24C:  SMLABB.W        LR, R2, R2, R5
19F250:  MOV             R2, R0
19F252:  SMLABB.W        R2, R9, R3, R2
19F256:  ADDS            R4, #1
19F258:  CMP             R4, R6
19F25A:  BLT             loc_19F226
19F25C:  LDR.W           R5, [R7,#var_2C]
19F260:  B               loc_19F26A
19F262:  MOVS            R2, #0
19F264:  MOV.W           LR, #0
19F268:  MOV             R12, R5
19F26A:  ADDS            R1, R6, #3
19F26C:  CMP             R12, R1
19F26E:  BLE             loc_19F28E
19F270:  LDRSH.W         R0, [R11]
19F274:  SXTH.W          R1, R12
19F278:  SXTAH.W         R0, R0, R12
19F27C:  MULS            R0, R1
19F27E:  LDR.W           R1, [R10]
19F282:  ADD             R1, R12
19F284:  STR.W           R1, [R10]
19F288:  UXTAH.W         LR, R0, LR
19F28C:  B               loc_19F36C
19F28E:  CMP.W           R12, #1
19F292:  BLT             loc_19F36C
19F294:  STR.W           R8, [R7,#var_34]
19F298:  ADDS            R1, R5, #1
19F29A:  LDRSH.W         R0, [R8]
19F29E:  MOVS            R5, #0
19F2A0:  STR.W           R0, [R7,#var_3C]
19F2A4:  SUB.W           R0, R1, R12
19F2A8:  STR.W           R0, [R7,#var_40]
19F2AC:  STR.W           R10, [R7,#var_30]
19F2B0:  STR.W           R12, [R7,#var_38]
19F2B4:  LDR.W           R0, [R7,#var_3C]
19F2B8:  MOV             R8, R11
19F2BA:  STR.W           R2, [R7,#var_28]
19F2BE:  MOV.W           R9, #1
19F2C2:  ADDS            R1, R2, R0
19F2C4:  LDR.W           R0, [R7,#var_40]
19F2C8:  STR.W           R5, [R7,#var_2C]
19F2CC:  ADDS            R2, R0, R5
19F2CE:  MOV.W           R0, #0x10000
19F2D2:  CLZ.W           R2, R2
19F2D6:  RSB.W           R4, R2, #0x20 ; ' '
19F2DA:  ASRS            R1, R4
19F2DC:  SXTH            R2, R1
19F2DE:  LSLS            R1, R1, #0x10
19F2E0:  ASRS            R1, R1, #0xF
19F2E2:  MULS            R1, R2
19F2E4:  LDRH.W          R2, [R11]
19F2E8:  MOV.W           R12, R1,ASR#16
19F2EC:  ADD.W           R1, R0, LR,LSL#16
19F2F0:  LDR.W           R0, [R7,#var_34]
19F2F4:  MOV.W           LR, #0
19F2F8:  ADD.W           R11, R2, R1,ASR#16
19F2FC:  ASRS            R2, R1, #0x10
19F2FE:  LDRSH.W         R1, [R0,R9,LSL#1]
19F302:  LDR.W           R3, [R7,#var_28]
19F306:  LDRH.W          R5, [R8,R9,LSL#1]
19F30A:  ADD             R1, R3
19F30C:  ASRS            R1, R4
19F30E:  SXTH            R3, R1
19F310:  LSLS            R1, R1, #0x10
19F312:  ASRS            R1, R1, #0xF
19F314:  MULS            R1, R3
19F316:  ADDS            R3, R2, R5
19F318:  SMULBB.W        R5, R3, R12
19F31C:  SMULTB.W        R10, R1, R11
19F320:  CMP             R10, R5
19F322:  ITTT GT
19F324:  MOVGT.W         R12, R1,ASR#16
19F328:  MOVGT           R11, R3
19F32A:  MOVGT           LR, R9
19F32C:  ADD.W           R9, R9, #1
19F330:  CMP             R9, R6
19F332:  BLT             loc_19F2FE
19F334:  LDRSH.W         R1, [R8,LR,LSL#1]
19F338:  MOV             R11, R8
19F33A:  LDR.W           R10, [R7,#var_30]
19F33E:  LDRSH.W         R3, [R0,LR,LSL#1]
19F342:  ADDS            R5, R1, #2
19F344:  STRH.W          R5, [R8,LR,LSL#1]
19F348:  LDR.W           R5, [R10,LR,LSL#2]
19F34C:  ADDS            R5, #1
19F34E:  STR.W           R5, [R10,LR,LSL#2]
19F352:  ADD.W           LR, R2, R1
19F356:  LDR.W           R0, [R7,#var_28]
19F35A:  LDR.W           R5, [R7,#var_2C]
19F35E:  ADD             R0, R3
19F360:  LDR.W           R12, [R7,#var_38]
19F364:  ADDS            R5, #1
19F366:  CMP             R5, R12
19F368:  MOV             R2, R0
19F36A:  BNE             loc_19F2B4
19F36C:  LDR.W           R5, [R7,#var_44]
19F370:  MOVS            R0, #0
19F372:  LDR.W           R1, [R5,R0,LSL#2]
19F376:  LDR.W           R2, [R10,R0,LSL#2]
19F37A:  NEGS            R3, R1
19F37C:  EORS            R2, R3
19F37E:  ADD             R1, R2
19F380:  STR.W           R1, [R10,R0,LSL#2]
19F384:  ADDS            R0, #1
19F386:  CMP             R0, R6
19F388:  BLT             loc_19F372
19F38A:  LDR             R0, =(__stack_chk_guard_ptr - 0x19F394)
19F38C:  LDR.W           R1, [R7,#var_24]
19F390:  ADD             R0, PC; __stack_chk_guard_ptr
19F392:  LDR             R0, [R0]; __stack_chk_guard
19F394:  LDR             R0, [R0]
19F396:  SUBS            R0, R0, R1
19F398:  ITTTT EQ
19F39A:  SXTHEQ.W        R0, LR
19F39E:  SUBEQ.W         R4, R7, #-var_1C
19F3A2:  MOVEQ           SP, R4
19F3A4:  POPEQ.W         {R8-R11}
19F3A8:  IT EQ
19F3AA:  POPEQ           {R4-R7,PC}
19F3AC:  BLX             __stack_chk_fail
