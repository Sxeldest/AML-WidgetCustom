; =========================================================
; Game Engine Function: png_write_sBIT
; Address            : 0x2076D8 - 0x207810
; =========================================================

2076D8:  PUSH            {R4-R7,LR}
2076DA:  ADD             R7, SP, #0xC
2076DC:  PUSH.W          {R11}
2076E0:  SUB             SP, SP, #0x10
2076E2:  MOV             R4, R0
2076E4:  LDR             R0, =(__stack_chk_guard_ptr - 0x2076EA)
2076E6:  ADD             R0, PC; __stack_chk_guard_ptr
2076E8:  LDR             R0, [R0]; __stack_chk_guard
2076EA:  LDR             R0, [R0]
2076EC:  STR             R0, [SP,#0x20+var_14]
2076EE:  LSLS            R0, R2, #0x1E
2076F0:  BMI             loc_207704
2076F2:  LDRB            R0, [R1,#3]
2076F4:  CBZ             R0, loc_207754
2076F6:  LDRB.W          R3, [R4,#0x211]
2076FA:  CMP             R0, R3
2076FC:  BHI             loc_207754
2076FE:  MOVS            R5, #1
207700:  MOVS            R6, #0
207702:  B               loc_20773C
207704:  CMP             R2, #3
207706:  ITE NE
207708:  LDRBNE.W        R3, [R4,#0x211]
20770C:  MOVEQ           R3, #8
20770E:  LDRB            R6, [R1]
207710:  SUBS            R0, R6, #1
207712:  UXTB            R0, R0
207714:  CMP             R0, R3
207716:  BCS             loc_207754
207718:  LDRB.W          R12, [R1,#1]
20771C:  SUB.W           R0, R12, #1
207720:  UXTB            R0, R0
207722:  CMP             R0, R3
207724:  BCS             loc_207754
207726:  LDRB            R0, [R1,#2]
207728:  SUBS            R5, R0, #1
20772A:  UXTB            R5, R5
20772C:  CMP             R5, R3
20772E:  BCS             loc_207754
207730:  STRB.W          R12, [SP,#0x20+var_1F]
207734:  MOVS            R5, #3
207736:  STRB.W          R6, [SP,#0x20+var_20]
20773A:  MOVS            R6, #2
20773C:  MOV             R3, SP
20773E:  STRB            R0, [R3,R6]
207740:  LSLS            R0, R2, #0x1D
207742:  BMI             loc_207748
207744:  CBNZ            R4, loc_20777A
207746:  B               loc_20775C
207748:  LDRB            R0, [R1,#4]
20774A:  CBZ             R0, loc_207754
20774C:  LDRB.W          R1, [R4,#0x211]
207750:  CMP             R0, R1
207752:  BLS             loc_207776
207754:  ADR             R1, aInvalidSbitDep; "Invalid sBIT depth specified"
207756:  MOV             R0, R4
207758:  BLX             j_png_warning
20775C:  LDR             R0, =(__stack_chk_guard_ptr - 0x207764)
20775E:  LDR             R1, [SP,#0x20+var_14]
207760:  ADD             R0, PC; __stack_chk_guard_ptr
207762:  LDR             R0, [R0]; __stack_chk_guard
207764:  LDR             R0, [R0]
207766:  SUBS            R0, R0, R1
207768:  ITTT EQ
20776A:  ADDEQ           SP, SP, #0x10
20776C:  POPEQ.W         {R11}
207770:  POPEQ           {R4-R7,PC}
207772:  BLX             __stack_chk_fail
207776:  STRB            R0, [R3,R5]
207778:  ADDS            R5, #1
20777A:  MOVS            R0, #0x22 ; '"'
20777C:  ADD             R6, SP, #0x20+var_1C
20777E:  STR.W           R0, [R4,#0x368]
207782:  LSRS            R0, R5, #0x10
207784:  STRB.W          R0, [SP,#0x20+var_1B]
207788:  LSRS            R0, R5, #0x18
20778A:  STRB.W          R0, [SP,#0x20+var_1C]
20778E:  LSRS            R0, R5, #8
207790:  STRB.W          R0, [SP,#0x20+var_1A]
207794:  MOV             R0, #0x54494273
20779C:  STRB.W          R5, [SP,#0x20+var_19]
2077A0:  STR             R0, [SP,#0x20+var_18]
2077A2:  MOV             R0, R4
2077A4:  MOV             R1, R6
2077A6:  MOVS            R2, #8
2077A8:  BLX             j_png_write_data
2077AC:  MOV             R0, #0x73424954
2077B4:  STR.W           R0, [R4,#0x1DC]
2077B8:  MOV             R0, R4
2077BA:  BLX             j_png_reset_crc
2077BE:  ADDS            R1, R6, #4
2077C0:  MOV             R0, R4
2077C2:  MOVS            R2, #4
2077C4:  BLX             j_png_calculate_crc
2077C8:  MOVS            R0, #0x42 ; 'B'
2077CA:  MOV             R6, SP
2077CC:  STR.W           R0, [R4,#0x368]
2077D0:  MOV             R0, R4
2077D2:  MOV             R1, R6
2077D4:  MOV             R2, R5
2077D6:  BLX             j_png_write_data
2077DA:  MOV             R0, R4
2077DC:  MOV             R1, R6
2077DE:  MOV             R2, R5
2077E0:  BLX             j_png_calculate_crc
2077E4:  LDR.W           R0, [R4,#0x1F8]
2077E8:  MOVS            R1, #0x82
2077EA:  STR.W           R1, [R4,#0x368]
2077EE:  MOVS            R2, #4
2077F0:  STRB.W          R0, [SP,#0x20+var_19]
2077F4:  LSRS            R1, R0, #0x10
2077F6:  STRB.W          R1, [SP,#0x20+var_1B]
2077FA:  LSRS            R1, R0, #0x18
2077FC:  STRB.W          R1, [SP,#0x20+var_1C]
207800:  LSRS            R0, R0, #8
207802:  ADD             R1, SP, #0x20+var_1C
207804:  STRB.W          R0, [SP,#0x20+var_1A]
207808:  MOV             R0, R4
20780A:  BLX             j_png_write_data
20780E:  B               loc_20775C
