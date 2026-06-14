; =========================================================
; Game Engine Function: sub_E7440
; Address            : 0xE7440 - 0xE7498
; =========================================================

E7440:  PUSH            {R4-R7,LR}
E7442:  ADD             R7, SP, #0xC
E7444:  PUSH.W          {R8,R9,R11}
E7448:  MOV             R5, R1
E744A:  LDRB            R1, [R0,#0xC]
E744C:  ADD.W           R9, R0, #0x2C ; ','
E7450:  MOV             R4, R0
E7452:  MOV             R8, R2
E7454:  MOV             R0, R9
E7456:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E745A:  CMP.W           R8, #0
E745E:  BEQ             loc_E7486
E7460:  ADD.W           R6, R5, R8,LSL#2
E7464:  MOV             R0, R4
E7466:  BL              sub_E71D0
E746A:  LDR             R0, [R4,#0xC]
E746C:  LDR             R1, [R5]
E746E:  CMP             R1, R0
E7470:  ITT LE
E7472:  LDRLE           R1, [R5,#4]
E7474:  CMPLE           R0, R1
E7476:  BGT             loc_E748A
E7478:  UXTB            R1, R0
E747A:  MOV             R0, R9
E747C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E7480:  ADDS            R5, #8
E7482:  CMP             R5, R6
E7484:  BNE             loc_E7464
E7486:  MOVS            R0, #1
E7488:  B               loc_E7492
E748A:  LDR             R0, =(aInvalidStringI - 0xE7490); "invalid string: ill-formed UTF-8 byte" ...
E748C:  ADD             R0, PC; "invalid string: ill-formed UTF-8 byte"
E748E:  STR             R0, [R4,#0x38]
E7490:  MOVS            R0, #0
E7492:  POP.W           {R8,R9,R11}
E7496:  POP             {R4-R7,PC}
