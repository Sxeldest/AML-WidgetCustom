; =========================================================
; Game Engine Function: sub_AB738
; Address            : 0xAB738 - 0xAB77C
; =========================================================

AB738:  PUSH            {R7,LR}
AB73A:  MOV             R7, SP
AB73C:  SUB             SP, SP, #0x18
AB73E:  MOV             R12, R1
AB740:  LDR             R1, =(__stack_chk_guard_ptr - 0xAB74A)
AB742:  LDR.W           LR, [R7,#8]
AB746:  ADD             R1, PC; __stack_chk_guard_ptr
AB748:  LDR             R1, [R1]; __stack_chk_guard
AB74A:  LDR             R1, [R1]
AB74C:  STR             R1, [SP,#0x20+var_C]
AB74E:  STRD.W          R3, R2, [SP,#0x20+var_14]
AB752:  ADD             R2, SP, #0x20+var_14
AB754:  LDR             R1, [R7,#0xC]
AB756:  ADD             R3, SP, #0x20+var_10; int
AB758:  STRD.W          R2, LR, [SP,#0x20+var_20]; int
AB75C:  MOV             R2, R12; int
AB75E:  STR             R1, [SP,#0x20+var_18]; float
AB760:  MOVS            R1, #8; int
AB762:  BL              sub_AB3C0
AB766:  LDR             R1, [SP,#0x20+var_C]
AB768:  LDR             R2, =(__stack_chk_guard_ptr - 0xAB76E)
AB76A:  ADD             R2, PC; __stack_chk_guard_ptr
AB76C:  LDR             R2, [R2]; __stack_chk_guard
AB76E:  LDR             R2, [R2]
AB770:  CMP             R2, R1
AB772:  ITT EQ
AB774:  ADDEQ           SP, SP, #0x18
AB776:  POPEQ           {R7,PC}
AB778:  BLX             __stack_chk_fail
