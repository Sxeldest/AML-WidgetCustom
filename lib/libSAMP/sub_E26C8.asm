; =========================================================
; Game Engine Function: sub_E26C8
; Address            : 0xE26C8 - 0xE2760
; =========================================================

E26C8:  PUSH            {R4-R7,LR}
E26CA:  ADD             R7, SP, #0xC
E26CC:  PUSH.W          {R11}
E26D0:  SUB             SP, SP, #0x18
E26D2:  MOV             R5, R0
E26D4:  LDRB            R0, [R2,#8]
E26D6:  MOV             R6, R1
E26D8:  MOV             R4, R2
E26DA:  SUB.W           R1, R0, #0x10
E26DE:  CMP             R1, #2
E26E0:  BCC             loc_E26E4
E26E2:  CBNZ            R0, loc_E2756
E26E4:  TST.W           R0, #0xEF
E26E8:  BEQ             loc_E2718
E26EA:  ORR.W           R0, R6, #1
E26EE:  MOVS            R1, #8
E26F0:  CLZ.W           R0, R0
E26F4:  STR             R6, [SP,#0x28+var_18]
E26F6:  SUB.W           R1, R1, R0,LSR#2
E26FA:  STR             R1, [SP,#0x28+var_14]
E26FC:  ADD             R1, SP, #0x28+var_18
E26FE:  STR             R1, [SP,#0x28+var_28]
E2700:  MOVS            R1, #0xA
E2702:  SUB.W           R2, R1, R0,LSR#2
E2706:  MOV             R0, R5
E2708:  MOV             R1, R4
E270A:  MOV             R3, R2
E270C:  BL              sub_DFB10
E2710:  ADD             SP, SP, #0x18
E2712:  POP.W           {R11}
E2716:  POP             {R4-R7,PC}
E2718:  MOV             R0, R6; s
E271A:  BLX             strlen
E271E:  MOV             R2, R0
E2720:  LDRB            R0, [R4,#8]
E2722:  CMP             R0, #0x12
E2724:  BHI             loc_E274C
E2726:  MOVS            R1, #1
E2728:  LSL.W           R0, R1, R0
E272C:  MOVS            R1, #0x50001
E2732:  TST             R0, R1
E2734:  ITTTT NE
E2736:  MOVNE           R0, R5
E2738:  MOVNE           R1, R6
E273A:  MOVNE           R3, R4
E273C:  ADDNE           SP, SP, #0x18
E273E:  ITTT NE
E2740:  POPNE.W         {R11}
E2744:  POPNE.W         {R4-R7,LR}
E2748:  BNE.W           sub_E2768
E274C:  LDR             R1, =(aInvalidTypeSpe - 0xE2754); "invalid type specifier" ...
E274E:  ADD             R0, SP, #0x28+var_1C; this
E2750:  ADD             R1, PC; "invalid type specifier"
E2752:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E2756:  LDR             R1, =(aInvalidTypeSpe - 0xE275E); "invalid type specifier" ...
E2758:  ADD             R0, SP, #0x28+var_20; this
E275A:  ADD             R1, PC; "invalid type specifier"
E275C:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
