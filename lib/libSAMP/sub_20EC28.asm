; =========================================================
; Game Engine Function: sub_20EC28
; Address            : 0x20EC28 - 0x20ECC6
; =========================================================

20EC28:  PUSH            {R4-R7,LR}
20EC2A:  ADD             R7, SP, #0xC
20EC2C:  PUSH.W          {R5-R11}
20EC30:  MOV             R4, R0
20EC32:  LDR             R0, =(__stack_chk_guard_ptr - 0x20EC3C)
20EC34:  MOV             R8, R2
20EC36:  CMP             R4, R1
20EC38:  ADD             R0, PC; __stack_chk_guard_ptr
20EC3A:  LDR             R0, [R0]; __stack_chk_guard
20EC3C:  LDR             R0, [R0]
20EC3E:  STR             R0, [SP,#0x28+var_20]
20EC40:  BEQ             loc_20EC8E
20EC42:  LDRB.W          R10, [R4]
20EC46:  MOV             R9, R3
20EC48:  MOV             R5, R1
20EC4A:  CMP.W           R10, #0x2D ; '-'
20EC4E:  ITT EQ
20EC50:  ADDEQ           R4, #1
20EC52:  CMPEQ           R4, R5
20EC54:  BEQ             loc_20EC8E
20EC56:  BLX             __errno
20EC5A:  MOV             R6, R0
20EC5C:  LDR.W           R11, [R0]
20EC60:  MOVS            R0, #0; this
20EC62:  STR             R0, [R6]
20EC64:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20EC68:  ADD             R1, SP, #0x28+var_24
20EC6A:  MOV             R3, R0
20EC6C:  MOV             R0, R4
20EC6E:  MOV             R2, R9
20EC70:  BL              sub_220340
20EC74:  LDR             R2, [R6]
20EC76:  CBZ             R2, loc_20EC84
20EC78:  LDR             R3, [SP,#0x28+var_24]
20EC7A:  CMP             R3, R5
20EC7C:  BNE             loc_20EC8E
20EC7E:  CMP             R2, #0x22 ; '"'
20EC80:  BNE             loc_20ECAE
20EC82:  B               loc_20ECB0
20EC84:  LDR             R2, [SP,#0x28+var_24]
20EC86:  STR.W           R11, [R6]
20EC8A:  CMP             R2, R5
20EC8C:  BEQ             loc_20ECAE
20EC8E:  MOVS            R0, #4
20EC90:  STR.W           R0, [R8]
20EC94:  MOVS            R0, #0
20EC96:  LDR             R1, [SP,#0x28+var_20]
20EC98:  LDR             R2, =(__stack_chk_guard_ptr - 0x20EC9E)
20EC9A:  ADD             R2, PC; __stack_chk_guard_ptr
20EC9C:  LDR             R2, [R2]; __stack_chk_guard
20EC9E:  LDR             R2, [R2]
20ECA0:  CMP             R2, R1
20ECA2:  ITT EQ
20ECA4:  POPEQ.W         {R1-R3,R8-R11}
20ECA8:  POPEQ           {R4-R7,PC}
20ECAA:  BLX             __stack_chk_fail
20ECAE:  CBZ             R1, loc_20ECBC
20ECB0:  MOVS            R0, #4
20ECB2:  STR.W           R0, [R8]
20ECB6:  MOV.W           R0, #0xFFFFFFFF
20ECBA:  B               loc_20EC96
20ECBC:  CMP.W           R10, #0x2D ; '-'
20ECC0:  IT EQ
20ECC2:  NEGEQ           R0, R0
20ECC4:  B               loc_20EC96
