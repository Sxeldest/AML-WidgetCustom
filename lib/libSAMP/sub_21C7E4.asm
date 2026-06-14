; =========================================================
; Game Engine Function: sub_21C7E4
; Address            : 0x21C7E4 - 0x21C83E
; =========================================================

21C7E4:  PUSH            {R4-R7,LR}
21C7E6:  ADD             R7, SP, #0xC
21C7E8:  PUSH.W          {R11}
21C7EC:  SUB             SP, SP, #8
21C7EE:  MOV             R4, R0
21C7F0:  LDR             R0, =(__stack_chk_guard_ptr - 0x21C7FA)
21C7F2:  MOV             R5, R1
21C7F4:  MOVS            R6, #0
21C7F6:  ADD             R0, PC; __stack_chk_guard_ptr
21C7F8:  MOV             R1, SP
21C7FA:  LDR             R0, [R0]; __stack_chk_guard
21C7FC:  LDR             R0, [R0]
21C7FE:  STR             R0, [SP,#0x18+var_14]
21C800:  MOV             R0, R5
21C802:  STR             R6, [SP,#0x18+var_18]
21C804:  BL              sub_2178F6
21C808:  CBNZ            R0, loc_21C816
21C80A:  LDRD.W          R0, R1, [R5]
21C80E:  SUBS            R2, R1, R0
21C810:  LDR             R1, [SP,#0x18+var_18]
21C812:  CMP             R2, R1
21C814:  BCS             loc_21C81C
21C816:  STRD.W          R6, R6, [R4]
21C81A:  B               loc_21C824
21C81C:  ADD             R1, R0
21C81E:  STR             R1, [R5]
21C820:  STRD.W          R0, R1, [R4]
21C824:  LDR             R0, [SP,#0x18+var_14]
21C826:  LDR             R1, =(__stack_chk_guard_ptr - 0x21C82C)
21C828:  ADD             R1, PC; __stack_chk_guard_ptr
21C82A:  LDR             R1, [R1]; __stack_chk_guard
21C82C:  LDR             R1, [R1]
21C82E:  CMP             R1, R0
21C830:  ITTT EQ
21C832:  ADDEQ           SP, SP, #8
21C834:  POPEQ.W         {R11}
21C838:  POPEQ           {R4-R7,PC}
21C83A:  BLX             __stack_chk_fail
