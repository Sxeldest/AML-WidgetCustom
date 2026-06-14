; =========================================================
; Game Engine Function: sub_B46A0
; Address            : 0xB46A0 - 0xB47D8
; =========================================================

B46A0:  PUSH            {R4-R7,LR}
B46A2:  ADD             R7, SP, #0xC
B46A4:  PUSH.W          {R8-R11}
B46A8:  SUB             SP, SP, #0x14
B46AA:  MOV             R5, R2
B46AC:  LDR             R2, =(__stack_chk_guard_ptr - 0xB46B8)
B46AE:  LDR.W           R9, [R7,#arg_8]
B46B2:  MOV             R4, R3
B46B4:  ADD             R2, PC; __stack_chk_guard_ptr
B46B6:  LDR             R2, [R2]; __stack_chk_guard
B46B8:  LDR             R2, [R2]
B46BA:  STR.W           R2, [R7,#var_24]
B46BE:  MOVS            R2, #7
B46C0:  ADD.W           R2, R2, R9,LSL#2
B46C4:  BIC.W           R2, R2, #7
B46C8:  SUB.W           R2, SP, R2
B46CC:  MOV             SP, R2
B46CE:  CMP.W           R9, #0
B46D2:  BLE             loc_B47A2
B46D4:  STRD.W          R1, R5, [R7,#var_30]
B46D8:  MOVW            LR, #0x8000
B46DC:  LDR             R1, [R7,#arg_C]
B46DE:  MOVT            LR, #0xFFFF
B46E2:  STR.W           R4, [R7,#var_28]
B46E6:  MOVW            R12, #0x7FFF
B46EA:  SUBS            R1, #2
B46EC:  LDRD.W          R6, R3, [R7,#arg_0]
B46F0:  LDR             R3, [R3]
B46F2:  MOV             R11, R9
B46F4:  MUL.W           R1, R1, R9
B46F8:  ADD.W           R5, R6, R1,LSL#2
B46FC:  MOVS            R1, #1
B46FE:  ADD.W           R1, R1, R3,ASR#15
B4702:  SXTH            R6, R3
B4704:  MOV.W           R8, R1,ASR#1
B4708:  MOV             R1, R2
B470A:  LDR.W           R9, [R5],#4
B470E:  UXTH.W          R10, R9
B4712:  MUL.W           R4, R6, R10
B4716:  ASRS            R4, R4, #0x10
B4718:  SMLABT.W        R4, R6, R9, R4
B471C:  MLA.W           R4, R8, R9, R4
B4720:  ASRS            R3, R4, #8
B4722:  CMP             R3, LR
B4724:  MOV             R3, LR
B4726:  IT GT
B4728:  ASRGT           R3, R4, #8
B472A:  CMP             R3, R12
B472C:  IT GE
B472E:  MOVGE           R3, R12
B4730:  SUBS.W          R11, R11, #1
B4734:  STRH.W          R3, [R2],#2
B4738:  BNE             loc_B470A
B473A:  LDR             R2, [R7,#arg_C]
B473C:  MOVW            R11, #0x7FFF
B4740:  LDR.W           R9, [R7,#arg_8]
B4744:  SUBS            R2, #1
B4746:  LDR             R3, [R7,#arg_4]
B4748:  LDR             R6, [R7,#arg_0]
B474A:  MUL.W           R2, R2, R9
B474E:  ADD.W           R10, R1, R9,LSL#1
B4752:  LDR             R3, [R3,#4]
B4754:  SXTH.W          R8, R3
B4758:  ADD.W           R5, R6, R2,LSL#2
B475C:  MOVS            R2, #1
B475E:  ADD.W           R2, R2, R3,ASR#15
B4762:  MOV             R6, R9
B4764:  MOV.W           R12, R2,ASR#1
B4768:  MOV             R2, R10
B476A:  LDR.W           R3, [R5],#4
B476E:  UXTH            R4, R3
B4770:  MUL.W           R4, R8, R4
B4774:  ASRS            R4, R4, #0x10
B4776:  SMLABT.W        R4, R8, R3, R4
B477A:  MLA.W           R3, R12, R3, R4
B477E:  ASRS            R4, R3, #8
B4780:  CMP             R4, LR
B4782:  MOV             R4, LR
B4784:  IT GT
B4786:  ASRGT           R4, R3, #8
B4788:  CMP             R4, R11
B478A:  IT GE
B478C:  MOVGE           R4, R11
B478E:  SUBS            R6, #1
B4790:  STRH.W          R4, [R2],#2
B4794:  BNE             loc_B476A
B4796:  LDRD.W          R5, R4, [R7,#var_2C]
B479A:  MOV             R2, R1
B479C:  LDR.W           R1, [R7,#var_30]
B47A0:  B               loc_B47A6
B47A2:  ADD.W           R10, R2, R9,LSL#1
B47A6:  MOV             R3, R9
B47A8:  BLX             j_silk_sum_sqr_shift
B47AC:  MOV             R0, R5
B47AE:  MOV             R1, R4
B47B0:  MOV             R2, R10
B47B2:  MOV             R3, R9
B47B4:  BLX             j_silk_sum_sqr_shift
B47B8:  LDR             R0, =(__stack_chk_guard_ptr - 0xB47C2)
B47BA:  LDR.W           R1, [R7,#var_24]
B47BE:  ADD             R0, PC; __stack_chk_guard_ptr
B47C0:  LDR             R0, [R0]; __stack_chk_guard
B47C2:  LDR             R0, [R0]
B47C4:  SUBS            R0, R0, R1
B47C6:  ITTTT EQ
B47C8:  SUBEQ.W         R4, R7, #-var_1C
B47CC:  MOVEQ           SP, R4
B47CE:  POPEQ.W         {R8-R11}
B47D2:  POPEQ           {R4-R7,PC}
B47D4:  BLX             __stack_chk_fail
