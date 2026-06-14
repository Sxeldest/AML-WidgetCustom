; =========================================================
; Game Engine Function: sub_159450
; Address            : 0x159450 - 0x1594F4
; =========================================================

159450:  PUSH            {R4-R7,LR}
159452:  ADD             R7, SP, #0xC
159454:  PUSH.W          {R8,R9,R11}
159458:  SUB             SP, SP, #0x18
15945A:  MOV             R4, R0
15945C:  LDRD.W          R5, R0, [R0,#4]
159460:  MOV             R8, R2
159462:  MOV             R9, R1
159464:  CMP             R5, R0
159466:  BCS             loc_15947C
159468:  LDR.W           R1, [R9]
15946C:  MOV             R0, R5
15946E:  MOV             R2, R8
159470:  BL              sub_15917E
159474:  ADD.W           R0, R5, #0x28 ; '('
159478:  STR             R0, [R4,#4]
15947A:  B               loc_1594E4
15947C:  LDR             R6, [R4]
15947E:  SUBS            R1, R5, R6
159480:  MOV             R5, #0xCCCCCCCD
159488:  ASRS            R1, R1, #3
15948A:  MUL.W           R2, R1, R5
15948E:  MOV             R1, #0x6666666
159496:  ADDS            R3, R2, #1
159498:  CMP             R3, R1
15949A:  BHI             loc_1594EE
15949C:  SUBS            R0, R0, R6
15949E:  MOV             R6, #0x3333333
1594A6:  ASRS            R0, R0, #3
1594A8:  MULS            R0, R5
1594AA:  CMP.W           R3, R0,LSL#1
1594AE:  IT LS
1594B0:  LSLLS           R3, R0, #1
1594B2:  CMP             R0, R6
1594B4:  IT CC
1594B6:  MOVCC           R1, R3
1594B8:  ADD.W           R3, R4, #8
1594BC:  ADD             R0, SP, #0x30+var_2C
1594BE:  BL              sub_159504
1594C2:  LDR.W           R1, [R9]
1594C6:  LDR             R0, [SP,#0x30+var_24]
1594C8:  MOV             R2, R8
1594CA:  BL              sub_15917E
1594CE:  LDR             R0, [SP,#0x30+var_24]
1594D0:  ADDS            R0, #0x28 ; '('
1594D2:  STR             R0, [SP,#0x30+var_24]
1594D4:  ADD             R1, SP, #0x30+var_2C
1594D6:  MOV             R0, R4
1594D8:  BL              sub_15955C
1594DC:  ADD             R0, SP, #0x30+var_2C
1594DE:  BL              sub_1595DC
1594E2:  LDR             R0, [R4,#4]
1594E4:  SUBS            R0, #0x28 ; '('
1594E6:  ADD             SP, SP, #0x18
1594E8:  POP.W           {R8,R9,R11}
1594EC:  POP             {R4-R7,PC}
1594EE:  MOV             R0, R4
1594F0:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
