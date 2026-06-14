; =========================================================
; Game Engine Function: sub_20EFDC
; Address            : 0x20EFDC - 0x20F066
; =========================================================

20EFDC:  PUSH            {R4-R7,LR}
20EFDE:  ADD             R7, SP, #0xC
20EFE0:  PUSH.W          {R6-R9,R11}
20EFE4:  MOV             R4, R0
20EFE6:  LDR             R0, =(__stack_chk_guard_ptr - 0x20EFF0)
20EFE8:  MOV             R8, R2
20EFEA:  CMP             R4, R1
20EFEC:  ADD             R0, PC; __stack_chk_guard_ptr
20EFEE:  LDR             R0, [R0]; __stack_chk_guard
20EFF0:  LDR             R0, [R0]
20EFF2:  STR             R0, [SP,#0x20+var_1C]
20EFF4:  BEQ             loc_20F02A
20EFF6:  MOV             R5, R1
20EFF8:  BLX             __errno
20EFFC:  MOV             R6, R0
20EFFE:  LDR.W           R9, [R0]
20F002:  MOVS            R0, #0
20F004:  MOV             R1, SP
20F006:  STR             R0, [R6]
20F008:  MOV             R0, R4
20F00A:  BL              sub_20F070
20F00E:  VMOV            D16, R0, R1
20F012:  LDR             R0, [R6]
20F014:  CBZ             R0, loc_20F032
20F016:  LDR             R1, [SP,#0x20+var_20]
20F018:  VMOV.I32        D17, #0
20F01C:  CMP             R1, R5
20F01E:  BNE             loc_20F040
20F020:  VMOV            D17, D16
20F024:  CMP             R0, #0x22 ; '"'
20F026:  BEQ             loc_20F040
20F028:  B               loc_20F04A
20F02A:  VMOV.I32        D16, #0
20F02E:  MOVS            R0, #4
20F030:  B               loc_20F046
20F032:  LDR             R0, [SP,#0x20+var_20]
20F034:  VMOV.I32        D17, #0
20F038:  STR.W           R9, [R6]
20F03C:  CMP             R0, R5
20F03E:  BEQ             loc_20F04A
20F040:  MOVS            R0, #4
20F042:  VMOV            D16, D17
20F046:  STR.W           R0, [R8]
20F04A:  LDR             R0, [SP,#0x20+var_1C]
20F04C:  LDR             R1, =(__stack_chk_guard_ptr - 0x20F052)
20F04E:  ADD             R1, PC; __stack_chk_guard_ptr
20F050:  LDR             R1, [R1]; __stack_chk_guard
20F052:  LDR             R1, [R1]
20F054:  CMP             R1, R0
20F056:  ITTT EQ
20F058:  VMOVEQ          R0, R1, D16
20F05C:  POPEQ.W         {R2,R3,R8,R9,R11}
20F060:  POPEQ           {R4-R7,PC}
20F062:  BLX             __stack_chk_fail
