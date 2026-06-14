; =========================================================
; Game Engine Function: sub_20EB78
; Address            : 0x20EB78 - 0x20EC20
; =========================================================

20EB78:  PUSH            {R4-R7,LR}
20EB7A:  ADD             R7, SP, #0xC
20EB7C:  PUSH.W          {R5-R11}
20EB80:  MOV             R4, R0
20EB82:  LDR             R0, =(__stack_chk_guard_ptr - 0x20EB8C)
20EB84:  MOV             R8, R2
20EB86:  CMP             R4, R1
20EB88:  ADD             R0, PC; __stack_chk_guard_ptr
20EB8A:  LDR             R0, [R0]; __stack_chk_guard
20EB8C:  LDR             R0, [R0]
20EB8E:  STR             R0, [SP,#0x28+var_20]
20EB90:  BEQ             loc_20EBDE
20EB92:  LDRB.W          R10, [R4]
20EB96:  MOV             R9, R3
20EB98:  MOV             R5, R1
20EB9A:  CMP.W           R10, #0x2D ; '-'
20EB9E:  ITT EQ
20EBA0:  ADDEQ           R4, #1
20EBA2:  CMPEQ           R4, R5
20EBA4:  BEQ             loc_20EBDE
20EBA6:  BLX             __errno
20EBAA:  MOV             R6, R0
20EBAC:  LDR.W           R11, [R0]
20EBB0:  MOVS            R0, #0; this
20EBB2:  STR             R0, [R6]
20EBB4:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20EBB8:  ADD             R1, SP, #0x28+var_24
20EBBA:  MOV             R3, R0
20EBBC:  MOV             R0, R4
20EBBE:  MOV             R2, R9
20EBC0:  BL              sub_220340
20EBC4:  LDR             R2, [R6]
20EBC6:  CBZ             R2, loc_20EBD4
20EBC8:  LDR             R3, [SP,#0x28+var_24]
20EBCA:  CMP             R3, R5
20EBCC:  BNE             loc_20EBDE
20EBCE:  CMP             R2, #0x22 ; '"'
20EBD0:  BNE             loc_20EC00
20EBD2:  B               loc_20EC0A
20EBD4:  LDR             R2, [SP,#0x28+var_24]
20EBD6:  STR.W           R11, [R6]
20EBDA:  CMP             R2, R5
20EBDC:  BEQ             loc_20EC00
20EBDE:  MOVS            R0, #4
20EBE0:  STR.W           R0, [R8]
20EBE4:  MOVS            R0, #0
20EBE6:  LDR             R1, [SP,#0x28+var_20]
20EBE8:  LDR             R2, =(__stack_chk_guard_ptr - 0x20EBEE)
20EBEA:  ADD             R2, PC; __stack_chk_guard_ptr
20EBEC:  LDR             R2, [R2]; __stack_chk_guard
20EBEE:  LDR             R2, [R2]
20EBF0:  CMP             R2, R1
20EBF2:  ITTT EQ
20EBF4:  UXTHEQ          R0, R0
20EBF6:  POPEQ.W         {R1-R3,R8-R11}
20EBFA:  POPEQ           {R4-R7,PC}
20EBFC:  BLX             __stack_chk_fail
20EC00:  SUBS.W          R2, R0, #0x10000
20EC04:  SBCS.W          R1, R1, #0
20EC08:  BCC             loc_20EC16
20EC0A:  MOVS            R0, #4
20EC0C:  STR.W           R0, [R8]
20EC10:  MOVW            R0, #0xFFFF
20EC14:  B               loc_20EBE6
20EC16:  CMP.W           R10, #0x2D ; '-'
20EC1A:  IT EQ
20EC1C:  NEGEQ           R0, R0
20EC1E:  B               loc_20EBE6
