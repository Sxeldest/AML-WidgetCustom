; =========================================================
; Game Engine Function: sub_AB784
; Address            : 0xAB784 - 0xAB7C8
; =========================================================

AB784:  PUSH            {R7,LR}
AB786:  MOV             R7, SP
AB788:  SUB             SP, SP, #0x18
AB78A:  MOV             R12, R1
AB78C:  LDR             R1, =(__stack_chk_guard_ptr - 0xAB792)
AB78E:  ADD             R1, PC; __stack_chk_guard_ptr
AB790:  LDR             R1, [R1]; __stack_chk_guard
AB792:  LDR             R1, [R1]
AB794:  STR             R1, [SP,#0x20+var_C]
AB796:  LDR             R1, [R7,#8]
AB798:  STRD.W          R3, R2, [SP,#0x20+var_14]
AB79C:  ADD             R3, SP, #0x20+var_14
AB79E:  MOV.W           R2, #0x3F800000
AB7A2:  STRD.W          R3, R1, [SP,#0x20+var_20]; int
AB7A6:  ADD             R3, SP, #0x20+var_10; int
AB7A8:  STR             R2, [SP,#0x20+var_18]; float
AB7AA:  MOVS            R1, #4; int
AB7AC:  MOV             R2, R12; int
AB7AE:  BL              sub_AB3C0
AB7B2:  LDR             R1, [SP,#0x20+var_C]
AB7B4:  LDR             R2, =(__stack_chk_guard_ptr - 0xAB7BA)
AB7B6:  ADD             R2, PC; __stack_chk_guard_ptr
AB7B8:  LDR             R2, [R2]; __stack_chk_guard
AB7BA:  LDR             R2, [R2]
AB7BC:  CMP             R2, R1
AB7BE:  ITT EQ
AB7C0:  ADDEQ           SP, SP, #0x18
AB7C2:  POPEQ           {R7,PC}
AB7C4:  BLX             __stack_chk_fail
