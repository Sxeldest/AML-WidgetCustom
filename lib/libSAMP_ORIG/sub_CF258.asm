; =========================================================
; Game Engine Function: sub_CF258
; Address            : 0xCF258 - 0xCF4DC
; =========================================================

CF258:  PUSH            {R4-R7,LR}
CF25A:  ADD             R7, SP, #0xC
CF25C:  PUSH.W          {R8-R11}
CF260:  SUB             SP, SP, #0x3C
CF262:  MOV             R9, R0
CF264:  LDR             R0, =(__stack_chk_guard_ptr - 0xCF26E)
CF266:  STR.W           R2, [R7,#var_38]
CF26A:  ADD             R0, PC; __stack_chk_guard_ptr
CF26C:  LDR             R2, [R7,#arg_0]
CF26E:  LDR             R0, [R0]; __stack_chk_guard
CF270:  CMP             R2, #4
CF272:  LDR             R0, [R0]
CF274:  STR.W           R0, [R7,#var_24]
CF278:  STR.W           R3, [R7,#var_3C]
CF27C:  BNE             loc_CF2B8
CF27E:  LDR             R2, =(silk_nb_cbk_searchs_stage3_ptr - 0xCF28E)
CF280:  ADD.W           R5, R1, R3,LSL#3
CF284:  LDR             R0, [R7,#arg_4]
CF286:  SUB.W           R4, SP, #0x58 ; 'X'
CF28A:  ADD             R2, PC; silk_nb_cbk_searchs_stage3_ptr
CF28C:  LDR             R2, [R2]; silk_nb_cbk_searchs_stage3
CF28E:  LDRSB.W         R10, [R2,R0]
CF292:  MOV             SP, R4
CF294:  CMP.W           R10, #0
CF298:  BLE.W           loc_CF3F4
CF29C:  LDR             R1, =(silk_CB_lags_stage3_ptr - 0xCF2A4)
CF29E:  LDR             R2, =(silk_Lag_range_stage3_ptr - 0xCF2A6)
CF2A0:  ADD             R1, PC; silk_CB_lags_stage3_ptr
CF2A2:  ADD             R2, PC; silk_Lag_range_stage3_ptr
CF2A4:  LDR             R1, [R1]; silk_CB_lags_stage3
CF2A6:  STR.W           R1, [R7,#var_28]
CF2AA:  LDR             R1, [R2]; silk_Lag_range_stage3
CF2AC:  ADD.W           R0, R1, R0,LSL#3
CF2B0:  STR.W           R0, [R7,#var_48]
CF2B4:  MOVS            R0, #0x22 ; '"'
CF2B6:  B               loc_CF2E6
CF2B8:  SUB.W           R0, SP, #0x58 ; 'X'
CF2BC:  MOV             R6, R0
CF2BE:  MOV             SP, R0
CF2C0:  CMP             R2, #0
CF2C2:  BLE.W           loc_CF4BC
CF2C6:  LDR             R0, =(silk_CB_lags_stage3_10_ms_ptr - 0xCF2D6)
CF2C8:  ADD.W           R5, R1, R3,LSL#3
CF2CC:  LDR             R2, =(silk_Lag_range_stage3_10_ms_ptr - 0xCF2DA)
CF2CE:  MOV.W           R10, #0xC
CF2D2:  ADD             R0, PC; silk_CB_lags_stage3_10_ms_ptr
CF2D4:  MOV             R4, R6
CF2D6:  ADD             R2, PC; silk_Lag_range_stage3_10_ms_ptr
CF2D8:  LDR             R0, [R0]; silk_CB_lags_stage3_10_ms
CF2DA:  STR.W           R0, [R7,#var_28]
CF2DE:  LDR             R0, [R2]; silk_Lag_range_stage3_10_ms
CF2E0:  STR.W           R0, [R7,#var_48]
CF2E4:  MOVS            R0, #0xC
CF2E6:  STR.W           R0, [R7,#var_4C]
CF2EA:  LDR.W           R1, [R7,#var_38]
CF2EE:  STR.W           R4, [R7,#var_40]
CF2F2:  STR.W           R10, [R7,#var_44]
CF2F6:  MVNS            R0, R1
CF2F8:  ADD.W           R8, R5, R0,LSL#1
CF2FC:  SUBS            R0, R3, #1
CF2FE:  SUBS            R0, R0, R1
CF300:  MOVS            R1, #0
CF302:  ADD.W           R11, R5, R0,LSL#1
CF306:  LSLS            R0, R3, #1
CF308:  STR.W           R0, [R7,#var_50]
CF30C:  ADDS            R0, R4, #4
CF30E:  STR.W           R0, [R7,#var_58]
CF312:  ADD.W           R0, R10, R10,LSL#2
CF316:  LSLS            R0, R0, #2
CF318:  STR.W           R0, [R7,#var_54]
CF31C:  LDR.W           R6, [R7,#var_48]
CF320:  MOV             R2, R3
CF322:  LDR.W           R0, [R7,#var_38]
CF326:  LDR             R3, [R7,#arg_8]
CF328:  LDRSB.W         R4, [R6,R1,LSL#1]
CF32C:  STR.W           R5, [R7,#var_2C]
CF330:  ADD             R0, R4
CF332:  SUB.W           R0, R5, R0,LSL#1
CF336:  MOV             R5, R1
CF338:  MOV             R1, R0
CF33A:  BLX             j_silk_inner_prod_aligned
CF33E:  MOVS            R1, #1
CF340:  LDR.W           R12, [R7,#var_40]
CF344:  ORR.W           R1, R1, R5,LSL#1
CF348:  STR.W           R5, [R7,#var_34]
CF34C:  LDRSB           R2, [R6,R1]
CF34E:  STR.W           R0, [R12]
CF352:  CMP             R2, R4
CF354:  BLE             loc_CF38C
CF356:  LDR.W           R3, [R7,#var_58]
CF35A:  NEGS            R1, R4
CF35C:  NEGS            R2, R2
CF35E:  LDRSH.W         R5, [R11,R1,LSL#1]
CF362:  LDRSH.W         R6, [R8,R1,LSL#1]
CF366:  SUBS            R1, #1
CF368:  MLS.W           R0, R5, R5, R0
CF36C:  SMLABB.W        R6, R6, R6, R0
CF370:  CMP.W           R0, #0xFFFFFFFF
CF374:  MOV             R0, R6
CF376:  IT GT
CF378:  MOVGT           R0, #0x7FFFFFFF
CF37C:  CMP.W           R6, #0xFFFFFFFF
CF380:  IT GT
CF382:  MOVGT           R0, R6
CF384:  CMP             R2, R1
CF386:  STR.W           R0, [R3],#4
CF38A:  BNE             loc_CF35E
CF38C:  LDR.W           R1, [R7,#var_28]
CF390:  SUB.W           R12, R12, R4,LSL#2
CF394:  MOV             R2, R10
CF396:  MOV             R5, R9
CF398:  STR.W           R9, [R7,#var_30]
CF39C:  LDRSB.W         R6, [R1],#1
CF3A0:  MOV             R3, R5
CF3A2:  SUBS            R2, #1
CF3A4:  ADD.W           R5, R5, #0x14
CF3A8:  ADD.W           LR, R12, R6,LSL#2
CF3AC:  LDM.W           LR, {R0,R4,R6,R9,R10}
CF3B0:  STM.W           R3, {R0,R4,R6,R9,R10}
CF3B4:  BNE             loc_CF39C
CF3B6:  LDR.W           R0, [R7,#var_28]
CF3BA:  LDR.W           R1, [R7,#var_4C]
CF3BE:  LDR.W           R9, [R7,#var_30]
CF3C2:  ADD             R0, R1
CF3C4:  STR.W           R0, [R7,#var_28]
CF3C8:  LDR.W           R0, [R7,#var_54]
CF3CC:  LDR.W           R3, [R7,#var_3C]
CF3D0:  ADD             R9, R0
CF3D2:  LDR.W           R0, [R7,#var_50]
CF3D6:  LDR.W           R5, [R7,#var_2C]
CF3DA:  LDR.W           R1, [R7,#var_34]
CF3DE:  ADD             R11, R0
CF3E0:  ADD             R8, R0
CF3E2:  LDR             R0, [R7,#arg_0]
CF3E4:  LDR.W           R10, [R7,#var_44]
CF3E8:  ADDS            R1, #1
CF3EA:  ADD.W           R5, R5, R3,LSL#1
CF3EE:  CMP             R1, R0
CF3F0:  BNE             loc_CF31C
CF3F2:  B               loc_CF4BC
CF3F4:  LSLS            R2, R3, #2
CF3F6:  LDR.W           R6, [R7,#var_38]
CF3FA:  SUBS            R2, #1
CF3FC:  MOV.W           R10, #0
CF400:  SUBS            R2, R2, R6
CF402:  STR.W           R4, [R7,#var_40]
CF406:  ADD.W           R11, R1, R2,LSL#1
CF40A:  ADD.W           R2, R3, R3,LSL#2
CF40E:  SUBS            R2, #1
CF410:  SUBS            R2, R2, R6
CF412:  ADD.W           R6, R1, R2,LSL#1
CF416:  LSLS            R1, R3, #1
CF418:  STR.W           R1, [R7,#var_28]
CF41C:  ADDS            R1, R4, #4
CF41E:  STR.W           R1, [R7,#var_34]
CF422:  LDR             R1, =(silk_Lag_range_stage3_ptr - 0xCF428)
CF424:  ADD             R1, PC; silk_Lag_range_stage3_ptr
CF426:  LDR             R1, [R1]; silk_Lag_range_stage3
CF428:  ADD.W           R0, R1, R0,LSL#3
CF42C:  STR.W           R0, [R7,#var_30]
CF430:  LDR.W           R1, [R7,#var_30]
CF434:  MOVS            R0, #1
CF436:  ORR.W           R0, R0, R10,LSL#1
CF43A:  MOV             R2, R3
CF43C:  LDR             R3, [R7,#arg_8]
CF43E:  LDRSB.W         R9, [R1,R10,LSL#1]
CF442:  LDRSB.W         R8, [R1,R0]
CF446:  LDR.W           R0, [R7,#var_38]
CF44A:  STR.W           R5, [R7,#var_2C]
CF44E:  ADD             R0, R9
CF450:  SUB.W           R0, R5, R0,LSL#1
CF454:  MOV             R1, R0
CF456:  BLX             j_silk_inner_prod_aligned
CF45A:  LDR.W           R1, [R7,#var_40]
CF45E:  CMP             R8, R9
CF460:  STR             R0, [R1]
CF462:  BLE             loc_CF49E
CF464:  LDR.W           R3, [R7,#var_34]
CF468:  RSB.W           R1, R8, #0
CF46C:  RSB.W           R2, R9, #0
CF470:  LDRSH.W         R5, [R6,R2,LSL#1]
CF474:  LDRSH.W         R4, [R11,R2,LSL#1]
CF478:  SUBS            R2, #1
CF47A:  MLS.W           R0, R5, R5, R0
CF47E:  SMLABB.W        R5, R4, R4, R0
CF482:  CMP.W           R0, #0xFFFFFFFF
CF486:  MOV             R0, R5
CF488:  IT GT
CF48A:  MOVGT           R0, #0x7FFFFFFF
CF48E:  CMP.W           R5, #0xFFFFFFFF
CF492:  IT GT
CF494:  MOVGT           R0, R5
CF496:  CMP             R1, R2
CF498:  STR.W           R0, [R3],#4
CF49C:  BNE             loc_CF470
CF49E:  LDR.W           R0, [R7,#var_28]
CF4A2:  ADD.W           R10, R10, #1
CF4A6:  LDR.W           R3, [R7,#var_3C]
CF4AA:  LDR.W           R5, [R7,#var_2C]
CF4AE:  ADD             R11, R0
CF4B0:  ADD             R6, R0
CF4B2:  LDR             R0, [R7,#arg_0]
CF4B4:  ADD.W           R5, R5, R3,LSL#1
CF4B8:  CMP             R10, R0
CF4BA:  BNE             loc_CF430
CF4BC:  LDR             R0, =(__stack_chk_guard_ptr - 0xCF4C6)
CF4BE:  LDR.W           R1, [R7,#var_24]
CF4C2:  ADD             R0, PC; __stack_chk_guard_ptr
CF4C4:  LDR             R0, [R0]; __stack_chk_guard
CF4C6:  LDR             R0, [R0]
CF4C8:  SUBS            R0, R0, R1
CF4CA:  ITTTT EQ
CF4CC:  SUBEQ.W         R4, R7, #-var_1C
CF4D0:  MOVEQ           SP, R4
CF4D2:  POPEQ.W         {R8-R11}
CF4D6:  POPEQ           {R4-R7,PC}
CF4D8:  BLX             __stack_chk_fail
