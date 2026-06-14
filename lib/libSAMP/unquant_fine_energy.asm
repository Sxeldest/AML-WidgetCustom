; =========================================================
; Game Engine Function: unquant_fine_energy
; Address            : 0x19A564 - 0x19A5D8
; =========================================================

19A564:  PUSH            {R4-R7,LR}
19A566:  ADD             R7, SP, #0xC
19A568:  PUSH.W          {R8-R11}
19A56C:  SUB             SP, SP, #4
19A56E:  MOV             R11, R1
19A570:  MOV             R6, R0
19A572:  CMP             R11, R2
19A574:  STR             R2, [SP,#0x20+var_20]
19A576:  BGE             loc_19A5D0
19A578:  LDR.W           R8, [R7,#arg_8]
19A57C:  LDRD.W          R4, R10, [R7,#arg_0]
19A580:  LDR.W           R1, [R4,R11,LSL#2]
19A584:  CMP             R1, #1
19A586:  BLT             loc_19A5C6
19A588:  MOV.W           R9, #0
19A58C:  MOV             R0, R10
19A58E:  MOV             R5, R3
19A590:  BLX             j_ec_dec_bits
19A594:  LDR             R1, [R6,#8]
19A596:  MOV.W           R12, #0x200
19A59A:  ORR.W           R0, R12, R0,LSL#10
19A59E:  MOV             R3, R5
19A5A0:  MOV.W           R12, #0xFE000000
19A5A4:  MLA.W           R2, R1, R9, R11
19A5A8:  LDR.W           R1, [R4,R11,LSL#2]
19A5AC:  ADD.W           R9, R9, #1
19A5B0:  ASRS            R0, R1
19A5B2:  CMP             R9, R8
19A5B4:  ADD.W           R0, R12, R0,LSL#16
19A5B8:  LDRH.W          R5, [R3,R2,LSL#1]
19A5BC:  ADD.W           R0, R5, R0,LSR#16
19A5C0:  STRH.W          R0, [R3,R2,LSL#1]
19A5C4:  BLT             loc_19A58C
19A5C6:  LDR             R0, [SP,#0x20+var_20]
19A5C8:  ADD.W           R11, R11, #1
19A5CC:  CMP             R11, R0
19A5CE:  BNE             loc_19A580
19A5D0:  ADD             SP, SP, #4
19A5D2:  POP.W           {R8-R11}
19A5D6:  POP             {R4-R7,PC}
