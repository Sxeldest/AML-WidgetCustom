; =========================================================
; Game Engine Function: silk_decode_pitch
; Address            : 0xB84C8 - 0xB8580
; =========================================================

B84C8:  PUSH            {R4-R7,LR}
B84CA:  ADD             R7, SP, #0xC
B84CC:  PUSH.W          {R8}
B84D0:  LDR             R5, =(silk_CB_lags_stage2_10_ms_ptr - 0xB84DC)
B84D2:  LDR             R4, =(silk_CB_lags_stage3_10_ms_ptr - 0xB84E2)
B84D4:  LDR.W           R8, =(silk_CB_lags_stage3_ptr - 0xB84E8)
B84D8:  ADD             R5, PC; silk_CB_lags_stage2_10_ms_ptr
B84DA:  LDR.W           LR, =(silk_CB_lags_stage2_ptr - 0xB84EC)
B84DE:  ADD             R4, PC; silk_CB_lags_stage3_10_ms_ptr
B84E0:  LDR.W           R12, [R7,#arg_0]
B84E4:  ADD             R8, PC; silk_CB_lags_stage3_ptr
B84E6:  LDR             R6, [R5]; silk_CB_lags_stage2_10_ms
B84E8:  ADD             LR, PC; silk_CB_lags_stage2_ptr
B84EA:  LDR             R5, [R4]; silk_CB_lags_stage3_10_ms
B84EC:  CMP.W           R12, #4
B84F0:  MOV.W           R4, #3
B84F4:  ITT EQ
B84F6:  LDREQ.W         R6, [LR]; silk_CB_lags_stage2
B84FA:  LDREQ.W         R5, [R8]; silk_CB_lags_stage3
B84FE:  CMP             R3, #8
B8500:  MOV.W           LR, #0xC
B8504:  IT EQ
B8506:  MOVEQ           R5, R6
B8508:  CMP.W           R12, #4
B850C:  IT EQ
B850E:  MOVEQ           R4, #0xB
B8510:  IT EQ
B8512:  MOVEQ.W         LR, #0x22 ; '"'
B8516:  CMP             R3, #8
B8518:  IT EQ
B851A:  MOVEQ           LR, R4
B851C:  CMP.W           R12, #1
B8520:  BLT             loc_B857A
B8522:  LSLS            R4, R3, #0x10
B8524:  SXTH            R3, R3
B8526:  ADD.W           R3, R3, R3,LSL#3
B852A:  ADD.W           R0, R0, R4,ASR#15
B852E:  ADD             R1, R5
B8530:  ASRS            R4, R4, #0xF
B8532:  LSLS            R3, R3, #1
B8534:  CMP             R4, R3
B8536:  BLE             loc_B855A
B8538:  LDRSB.W         R5, [R1]
B853C:  ADD             R1, LR
B853E:  ADD             R5, R0
B8540:  CMP             R5, R3
B8542:  MOV             R6, R5
B8544:  IT LT
B8546:  MOVLT           R6, R3
B8548:  CMP             R5, R4
B854A:  IT GT
B854C:  MOVGT           R6, R4
B854E:  SUBS.W          R12, R12, #1
B8552:  STR.W           R6, [R2],#4
B8556:  BNE             loc_B8538
B8558:  B               loc_B857A
B855A:  LDRSB.W         R5, [R1]
B855E:  ADD             R1, LR
B8560:  ADD             R5, R0
B8562:  CMP             R5, R4
B8564:  MOV             R6, R5
B8566:  IT LT
B8568:  MOVLT           R6, R4
B856A:  CMP             R5, R3
B856C:  IT GT
B856E:  MOVGT           R6, R3
B8570:  SUBS.W          R12, R12, #1
B8574:  STR.W           R6, [R2],#4
B8578:  BNE             loc_B855A
B857A:  POP.W           {R8}
B857E:  POP             {R4-R7,PC}
