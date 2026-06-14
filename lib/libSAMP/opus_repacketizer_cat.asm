; =========================================================
; Game Engine Function: opus_repacketizer_cat
; Address            : 0x1B943C - 0x1B94F0
; =========================================================

1B943C:  PUSH            {R4-R7,LR}
1B943E:  ADD             R7, SP, #0xC
1B9440:  PUSH.W          {R8}
1B9444:  SUB             SP, SP, #0x18
1B9446:  MOV             R4, R0
1B9448:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B9452)
1B944A:  MOV             R5, R2
1B944C:  MOV             R6, R1
1B944E:  ADD             R0, PC; __stack_chk_guard_ptr
1B9450:  CMP             R5, #1
1B9452:  LDR             R0, [R0]; __stack_chk_guard
1B9454:  LDR             R0, [R0]
1B9456:  STR             R0, [SP,#0x28+var_14]
1B9458:  BLT             loc_1B94A0
1B945A:  LDR             R0, [R4,#4]
1B945C:  CBZ             R0, loc_1B946C
1B945E:  LDRB            R0, [R4]
1B9460:  LDRB            R1, [R6]
1B9462:  EORS            R0, R1
1B9464:  UXTB            R0, R0
1B9466:  CMP             R0, #3
1B9468:  BLS             loc_1B947E
1B946A:  B               loc_1B94A0
1B946C:  LDRB            R0, [R6]
1B946E:  MOV.W           R1, #0x1F40
1B9472:  STRB            R0, [R4]
1B9474:  MOV             R0, R6
1B9476:  BLX             j_opus_packet_get_samples_per_frame
1B947A:  STR.W           R0, [R4,#0x128]
1B947E:  MOV             R0, R6
1B9480:  MOV             R1, R5
1B9482:  BLX             j_opus_packet_get_nb_frames
1B9486:  MOV             R8, R0
1B9488:  CMP.W           R8, #1
1B948C:  BLT             loc_1B94A0
1B948E:  LDR             R0, [R4,#4]
1B9490:  LDR.W           R1, [R4,#0x128]
1B9494:  ADD.W           R2, R0, R8
1B9498:  MULS            R1, R2
1B949A:  CMP.W           R1, #0x3C0
1B949E:  BLE             loc_1B94BE
1B94A0:  MOV             R0, #0xFFFFFFFC
1B94A4:  LDR             R1, =(__stack_chk_guard_ptr - 0x1B94AC)
1B94A6:  LDR             R2, [SP,#0x28+var_14]
1B94A8:  ADD             R1, PC; __stack_chk_guard_ptr
1B94AA:  LDR             R1, [R1]; __stack_chk_guard
1B94AC:  LDR             R1, [R1]
1B94AE:  SUBS            R1, R1, R2
1B94B0:  ITTT EQ
1B94B2:  ADDEQ           SP, SP, #0x18
1B94B4:  POPEQ.W         {R8}
1B94B8:  POPEQ           {R4-R7,PC}
1B94BA:  BLX             __stack_chk_fail
1B94BE:  ADD.W           R2, R4, R0,LSL#1
1B94C2:  ADD.W           R0, R4, R0,LSL#2
1B94C6:  ADDS            R2, #0xC8
1B94C8:  ADDS            R0, #8
1B94CA:  MOVS            R1, #0
1B94CC:  SUB.W           R3, R7, #-var_15
1B94D0:  STRD.W          R0, R2, [SP,#0x28+var_28]
1B94D4:  MOV             R0, R6
1B94D6:  STRD.W          R1, R1, [SP,#0x28+var_20]
1B94DA:  MOV             R1, R5
1B94DC:  MOVS            R2, #0
1B94DE:  BLX             j_opus_packet_parse_impl
1B94E2:  CMP             R0, #1
1B94E4:  ITTTT GE
1B94E6:  LDRGE           R0, [R4,#4]
1B94E8:  ADDGE           R0, R8
1B94EA:  STRGE           R0, [R4,#4]
1B94EC:  MOVGE           R0, #0
1B94EE:  B               loc_1B94A4
