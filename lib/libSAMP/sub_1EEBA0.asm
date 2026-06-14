; =========================================================
; Game Engine Function: sub_1EEBA0
; Address            : 0x1EEBA0 - 0x1EEBFE
; =========================================================

1EEBA0:  PUSH            {R4-R7,LR}
1EEBA2:  ADD             R7, SP, #0xC
1EEBA4:  PUSH.W          {R11}
1EEBA8:  SUB             SP, SP, #0x18
1EEBAA:  MOV             R4, R0
1EEBAC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EEBB6)
1EEBAE:  MOV             R5, R2
1EEBB0:  MOV             R6, R1
1EEBB2:  ADD             R0, PC; __stack_chk_guard_ptr
1EEBB4:  LDR             R0, [R0]; __stack_chk_guard
1EEBB6:  LDR             R0, [R0]
1EEBB8:  STR             R0, [SP,#0x28+var_14]
1EEBBA:  MOVS            R0, #0x30 ; '0'; unsigned int
1EEBBC:  BLX             j__Znwj; operator new(uint)
1EEBC0:  MOVS            R1, #1
1EEBC2:  STR             R1, [SP,#0x28+var_1C]
1EEBC4:  ADD             R1, SP, #0x28+var_18
1EEBC6:  STRD.W          R0, R1, [SP,#0x28+var_24]
1EEBCA:  MOV             R1, R6
1EEBCC:  MOV             R2, R5
1EEBCE:  BL              sub_1EEC10
1EEBD2:  ADD.W           R1, R0, #0xC
1EEBD6:  STRD.W          R1, R0, [R4]
1EEBDA:  MOVS            R0, #0
1EEBDC:  STR             R0, [SP,#0x28+var_24]
1EEBDE:  ADD             R0, SP, #0x28+var_24
1EEBE0:  BL              sub_1EE95C
1EEBE4:  LDR             R0, [SP,#0x28+var_14]
1EEBE6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EEBEC)
1EEBE8:  ADD             R1, PC; __stack_chk_guard_ptr
1EEBEA:  LDR             R1, [R1]; __stack_chk_guard
1EEBEC:  LDR             R1, [R1]
1EEBEE:  CMP             R1, R0
1EEBF0:  ITTT EQ
1EEBF2:  ADDEQ           SP, SP, #0x18
1EEBF4:  POPEQ.W         {R11}
1EEBF8:  POPEQ           {R4-R7,PC}
1EEBFA:  BLX             __stack_chk_fail
