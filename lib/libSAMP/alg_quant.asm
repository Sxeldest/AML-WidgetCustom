; =========================================================
; Game Engine Function: alg_quant
; Address            : 0x19F3B8 - 0x19F4FC
; =========================================================

19F3B8:  PUSH            {R4-R7,LR}
19F3BA:  ADD             R7, SP, #0xC
19F3BC:  PUSH.W          {R8-R11}
19F3C0:  SUB             SP, SP, #0x14
19F3C2:  MOV             R10, R0
19F3C4:  LDR             R0, =(__stack_chk_guard_ptr - 0x19F3D0)
19F3C6:  MOV             R6, R1
19F3C8:  LDR.W           R9, [R7,#arg_0]
19F3CC:  ADD             R0, PC; __stack_chk_guard_ptr
19F3CE:  MOV             R8, R3
19F3D0:  MOV             R4, R2
19F3D2:  LDR             R0, [R0]; __stack_chk_guard
19F3D4:  LDR             R0, [R0]
19F3D6:  STR.W           R0, [R7,#var_24]
19F3DA:  MOVS            R0, #0x13
19F3DC:  ADD.W           R0, R0, R6,LSL#2
19F3E0:  BIC.W           R0, R0, #7
19F3E4:  SUB.W           R5, SP, R0
19F3E8:  MOV             SP, R5
19F3EA:  STRD.W          R4, R8, [SP,#0x30+var_38]!
19F3EE:  MOV             R0, R10
19F3F0:  MOVS            R2, #1
19F3F2:  MOV             R3, R9
19F3F4:  BLX             j_exp_rotation
19F3F8:  ADD             SP, SP, #8
19F3FA:  SUB             SP, SP, #8
19F3FC:  MOV             R0, R10
19F3FE:  MOV             R1, R5
19F400:  MOV             R2, R4
19F402:  MOV             R3, R6
19F404:  BLX             j_op_pvq_search_c
19F408:  ADD             SP, SP, #8
19F40A:  LDR             R3, [R7,#arg_4]
19F40C:  MOV             R11, R0
19F40E:  MOV             R0, R5
19F410:  MOV             R1, R6
19F412:  MOV             R2, R4
19F414:  BLX             j_encode_pulses
19F418:  LDR             R0, [R7,#arg_C]
19F41A:  CBZ             R0, loc_19F496
19F41C:  CLZ.W           R0, R11
19F420:  STRD.W          R4, R8, [R7,#var_2C]
19F424:  RSB.W           R8, R0, #0x1F
19F428:  LDR             R4, [R7,#arg_8]
19F42A:  BIC.W           R0, R8, #1
19F42E:  SUB.W           R1, R0, #0xE
19F432:  RSB.W           R0, R0, #0xE
19F436:  MOV.W           R2, R8,ASR#1
19F43A:  CMP             R2, #7
19F43C:  LSL.W           R0, R11, R0
19F440:  IT GT
19F442:  ASRGT.W         R0, R11, R1
19F446:  BLX             j_celt_rsqrt_norm
19F44A:  SMULBB.W        R0, R4, R0
19F44E:  MOV.W           R1, #0x8000
19F452:  MOVS            R2, #1
19F454:  MOVS            R3, #0
19F456:  ADD.W           R0, R1, R0,LSL#1
19F45A:  ADD.W           R1, R2, R8,ASR#1
19F45E:  LSLS            R2, R1
19F460:  ASRS            R0, R0, #0x10
19F462:  ASRS            R2, R2, #1
19F464:  LDRSH.W         R4, [R5,R3,LSL#2]
19F468:  SMLABB.W        R4, R4, R0, R2
19F46C:  ASRS            R4, R1
19F46E:  STRH.W          R4, [R10,R3,LSL#1]
19F472:  ADDS            R3, #1
19F474:  CMP             R3, R6
19F476:  BLT             loc_19F464
19F478:  SUB             SP, SP, #8
19F47A:  LDR.W           R0, [R7,#var_2C]
19F47E:  MOV             R1, R6
19F480:  STR             R0, [SP,#0x38+var_38]
19F482:  MOV.W           R2, #0xFFFFFFFF
19F486:  LDR.W           R0, [R7,#var_28]
19F48A:  MOV             R3, R9
19F48C:  STR             R0, [SP,#0x38+var_34]
19F48E:  MOV             R0, R10
19F490:  BLX             j_exp_rotation
19F494:  ADD             SP, SP, #8
19F496:  CMP.W           R9, #2
19F49A:  BGE             loc_19F4A0
19F49C:  MOVS            R0, #1
19F49E:  B               loc_19F4DC
19F4A0:  MOV             R0, R6
19F4A2:  MOV             R1, R9
19F4A4:  BLX             sub_220A6C
19F4A8:  MOV             R1, R0
19F4AA:  MOVS            R0, #0
19F4AC:  MOV.W           R12, #0
19F4B0:  MUL.W           R6, R12, R1
19F4B4:  MOVS            R4, #0
19F4B6:  MOVS            R3, #0
19F4B8:  ADDS            R2, R4, R6
19F4BA:  ADDS            R4, #1
19F4BC:  CMP             R4, R1
19F4BE:  LDR.W           R2, [R5,R2,LSL#2]
19F4C2:  ORR.W           R3, R3, R2
19F4C6:  BLT             loc_19F4B8
19F4C8:  CMP             R3, #0
19F4CA:  IT NE
19F4CC:  MOVNE           R3, #1
19F4CE:  LSL.W           R2, R3, R12
19F4D2:  ADD.W           R12, R12, #1
19F4D6:  ORRS            R0, R2
19F4D8:  CMP             R12, R9
19F4DA:  BNE             loc_19F4B0
19F4DC:  LDR             R1, =(__stack_chk_guard_ptr - 0x19F4E6)
19F4DE:  LDR.W           R2, [R7,#var_24]
19F4E2:  ADD             R1, PC; __stack_chk_guard_ptr
19F4E4:  LDR             R1, [R1]; __stack_chk_guard
19F4E6:  LDR             R1, [R1]
19F4E8:  SUBS            R1, R1, R2
19F4EA:  ITTTT EQ
19F4EC:  SUBEQ.W         R4, R7, #-var_1C
19F4F0:  MOVEQ           SP, R4
19F4F2:  POPEQ.W         {R8-R11}
19F4F6:  POPEQ           {R4-R7,PC}
19F4F8:  BLX             __stack_chk_fail
