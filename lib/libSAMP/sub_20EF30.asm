; =========================================================
; Game Engine Function: sub_20EF30
; Address            : 0x20EF30 - 0x20EFBA
; =========================================================

20EF30:  PUSH            {R4-R7,LR}
20EF32:  ADD             R7, SP, #0xC
20EF34:  PUSH.W          {R6-R9,R11}
20EF38:  MOV             R4, R0
20EF3A:  LDR             R0, =(__stack_chk_guard_ptr - 0x20EF44)
20EF3C:  MOV             R8, R2
20EF3E:  CMP             R4, R1
20EF40:  ADD             R0, PC; __stack_chk_guard_ptr
20EF42:  LDR             R0, [R0]; __stack_chk_guard
20EF44:  LDR             R0, [R0]
20EF46:  STR             R0, [SP,#0x20+var_1C]
20EF48:  BEQ             loc_20EF7E
20EF4A:  MOV             R5, R1
20EF4C:  BLX             __errno
20EF50:  MOV             R6, R0
20EF52:  LDR.W           R9, [R0]
20EF56:  MOVS            R0, #0
20EF58:  MOV             R1, SP
20EF5A:  STR             R0, [R6]
20EF5C:  MOV             R0, R4
20EF5E:  BL              sub_20EFC4
20EF62:  VMOV            D16, R0, R1
20EF66:  LDR             R0, [R6]
20EF68:  CBZ             R0, loc_20EF86
20EF6A:  LDR             R1, [SP,#0x20+var_20]
20EF6C:  VMOV.I32        D17, #0
20EF70:  CMP             R1, R5
20EF72:  BNE             loc_20EF94
20EF74:  VMOV            D17, D16
20EF78:  CMP             R0, #0x22 ; '"'
20EF7A:  BEQ             loc_20EF94
20EF7C:  B               loc_20EF9E
20EF7E:  VMOV.I32        D16, #0
20EF82:  MOVS            R0, #4
20EF84:  B               loc_20EF9A
20EF86:  LDR             R0, [SP,#0x20+var_20]
20EF88:  VMOV.I32        D17, #0
20EF8C:  STR.W           R9, [R6]
20EF90:  CMP             R0, R5
20EF92:  BEQ             loc_20EF9E
20EF94:  MOVS            R0, #4
20EF96:  VMOV            D16, D17
20EF9A:  STR.W           R0, [R8]
20EF9E:  LDR             R0, [SP,#0x20+var_1C]
20EFA0:  LDR             R1, =(__stack_chk_guard_ptr - 0x20EFA6)
20EFA2:  ADD             R1, PC; __stack_chk_guard_ptr
20EFA4:  LDR             R1, [R1]; __stack_chk_guard
20EFA6:  LDR             R1, [R1]
20EFA8:  CMP             R1, R0
20EFAA:  ITTT EQ
20EFAC:  VMOVEQ          R0, R1, D16
20EFB0:  POPEQ.W         {R2,R3,R8,R9,R11}
20EFB4:  POPEQ           {R4-R7,PC}
20EFB6:  BLX             __stack_chk_fail
