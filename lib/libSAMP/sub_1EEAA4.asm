; =========================================================
; Game Engine Function: sub_1EEAA4
; Address            : 0x1EEAA4 - 0x1EEB02
; =========================================================

1EEAA4:  PUSH            {R4-R7,LR}
1EEAA6:  ADD             R7, SP, #0xC
1EEAA8:  PUSH.W          {R11}
1EEAAC:  SUB             SP, SP, #0x18
1EEAAE:  MOV             R4, R0
1EEAB0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EEABA)
1EEAB2:  MOV             R5, R2
1EEAB4:  MOV             R6, R1
1EEAB6:  ADD             R0, PC; __stack_chk_guard_ptr
1EEAB8:  LDR             R0, [R0]; __stack_chk_guard
1EEABA:  LDR             R0, [R0]
1EEABC:  STR             R0, [SP,#0x28+var_14]
1EEABE:  MOVS            R0, #0x30 ; '0'; unsigned int
1EEAC0:  BLX             j__Znwj; operator new(uint)
1EEAC4:  MOVS            R1, #1
1EEAC6:  STR             R1, [SP,#0x28+var_1C]
1EEAC8:  ADD             R1, SP, #0x28+var_18
1EEACA:  STRD.W          R0, R1, [SP,#0x28+var_24]
1EEACE:  MOV             R1, R6
1EEAD0:  MOV             R2, R5
1EEAD2:  BL              sub_1EEB14
1EEAD6:  ADD.W           R1, R0, #0xC
1EEADA:  STRD.W          R1, R0, [R4]
1EEADE:  MOVS            R0, #0
1EEAE0:  STR             R0, [SP,#0x28+var_24]
1EEAE2:  ADD             R0, SP, #0x28+var_24
1EEAE4:  BL              sub_1EE95C
1EEAE8:  LDR             R0, [SP,#0x28+var_14]
1EEAEA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EEAF0)
1EEAEC:  ADD             R1, PC; __stack_chk_guard_ptr
1EEAEE:  LDR             R1, [R1]; __stack_chk_guard
1EEAF0:  LDR             R1, [R1]
1EEAF2:  CMP             R1, R0
1EEAF4:  ITTT EQ
1EEAF6:  ADDEQ           SP, SP, #0x18
1EEAF8:  POPEQ.W         {R11}
1EEAFC:  POPEQ           {R4-R7,PC}
1EEAFE:  BLX             __stack_chk_fail
