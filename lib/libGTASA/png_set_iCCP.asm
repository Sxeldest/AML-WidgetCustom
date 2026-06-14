; =========================================================
; Game Engine Function: png_set_iCCP
; Address            : 0x2023E8 - 0x2024D8
; =========================================================

2023E8:  PUSH            {R4-R7,LR}
2023EA:  ADD             R7, SP, #0xC
2023EC:  PUSH.W          {R8-R11}
2023F0:  SUB             SP, SP, #0xC
2023F2:  MOV             R5, R0
2023F4:  CMP             R5, #0
2023F6:  MOV             R4, R1
2023F8:  MOV             R8, R2
2023FA:  IT NE
2023FC:  CMPNE           R4, #0
2023FE:  BEQ             loc_2024B2
202400:  CMP.W           R8, #0
202404:  ITT NE
202406:  LDRNE.W         R9, [R7,#arg_0]
20240A:  CMPNE.W         R9, #0
20240E:  BEQ             loc_2024B2
202410:  CMP             R3, #0
202412:  LDR.W           R10, [R7,#arg_4]
202416:  ITTT NE
202418:  ADRNE           R1, aInvalidIccpCom; "Invalid iCCP compression method"
20241A:  MOVNE           R0, R5
20241C:  BLXNE           j_png_app_error
202420:  LDRB            R0, [R4,#0x19]
202422:  ADD.W           R1, R4, #0x28 ; '('
202426:  MOV             R2, R8
202428:  MOV             R3, R10
20242A:  STRD.W          R9, R0, [SP,#0x28+var_28]
20242E:  MOV             R0, R5
202430:  BLX             j_png_colorspace_set_ICC
202434:  MOV             R6, R0
202436:  MOV             R0, R5
202438:  MOV             R1, R4
20243A:  BLX             j_png_colorspace_sync_info
20243E:  CBZ             R6, loc_2024B2
202440:  LDRH.W          R0, [R4,#0x72]
202444:  MOV             R6, R10
202446:  ORR.W           R0, R0, #0x18
20244A:  STRH.W          R0, [R4,#0x72]
20244E:  MOV             R0, R8; char *
202450:  BLX             strlen
202454:  ADD.W           R11, R0, #1
202458:  MOV             R0, R5; int
20245A:  MOV             R1, R11; byte_count
20245C:  BLX             j_png_malloc_warn
202460:  MOV             R10, R0
202462:  CMP.W           R10, #0
202466:  BEQ             loc_2024BA
202468:  MOV             R0, R10; void *
20246A:  MOV             R1, R8; void *
20246C:  MOV             R2, R11; size_t
20246E:  BLX             memcpy_1
202472:  MOV             R8, R6
202474:  MOV             R0, R5; int
202476:  MOV             R1, R8; byte_count
202478:  BLX             j_png_malloc_warn
20247C:  MOV             R6, R0
20247E:  CBZ             R6, loc_2024BE
202480:  MOV             R0, R6; void *
202482:  MOV             R1, R9; void *
202484:  MOV             R2, R8; size_t
202486:  BLX             memcpy_1
20248A:  MOV             R0, R5; int
20248C:  MOV             R1, R4
20248E:  MOVS            R2, #0x10
202490:  MOVS            R3, #0
202492:  BLX             j_png_free_data
202496:  LDR             R0, [R4,#8]
202498:  LDR.W           R1, [R4,#0xF4]
20249C:  STRD.W          R10, R6, [R4,#0x74]
2024A0:  ORR.W           R0, R0, #0x1000
2024A4:  STR.W           R8, [R4,#0x7C]
2024A8:  ORR.W           R1, R1, #0x10
2024AC:  STR.W           R1, [R4,#0xF4]
2024B0:  STR             R0, [R4,#8]
2024B2:  ADD             SP, SP, #0xC
2024B4:  POP.W           {R8-R11}
2024B8:  POP             {R4-R7,PC}
2024BA:  ADR             R1, aInsufficientMe_5; "Insufficient memory to process iCCP chu"...
2024BC:  B               loc_2024C8
2024BE:  MOV             R0, R5; int
2024C0:  MOV             R1, R10; p
2024C2:  BLX             j_png_free
2024C6:  ADR             R1, aInsufficientMe_6; "Insufficient memory to process iCCP pro"...
2024C8:  MOV             R0, R5
2024CA:  ADD             SP, SP, #0xC
2024CC:  POP.W           {R8-R11}
2024D0:  POP.W           {R4-R7,LR}
2024D4:  B.W             j_j_png_benign_error
