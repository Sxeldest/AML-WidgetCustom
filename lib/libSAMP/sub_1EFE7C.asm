; =========================================================
; Game Engine Function: sub_1EFE7C
; Address            : 0x1EFE7C - 0x1EFEE6
; =========================================================

1EFE7C:  PUSH            {R4-R7,LR}
1EFE7E:  ADD             R7, SP, #0xC
1EFE80:  PUSH.W          {R8}
1EFE84:  SUB             SP, SP, #0x18
1EFE86:  MOV             R6, R0
1EFE88:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EFE92)
1EFE8A:  MOV             R8, R3
1EFE8C:  MOV             R4, R2
1EFE8E:  ADD             R0, PC; __stack_chk_guard_ptr
1EFE90:  MOV             R5, R1
1EFE92:  LDR             R0, [R0]; __stack_chk_guard
1EFE94:  LDR             R0, [R0]
1EFE96:  STR             R0, [SP,#0x28+var_14]
1EFE98:  MOVS            R0, #0; this
1EFE9A:  STR             R0, [SP,#0x28+var_20]
1EFE9C:  BLX             j__ZNSt6__ndk115system_categoryEv; std::system_category(void)
1EFEA0:  LDRB            R1, [R5]
1EFEA2:  STR             R0, [SP,#0x28+var_1C]
1EFEA4:  LSLS            R1, R1, #0x1F
1EFEA6:  LDR             R0, [R5,#8]
1EFEA8:  MOV             R1, R4; buf
1EFEAA:  IT EQ
1EFEAC:  ADDEQ           R0, R5, #1; file
1EFEAE:  BLX             lstat
1EFEB2:  ADDS            R0, #1
1EFEB4:  ITT EQ
1EFEB6:  ADDEQ           R0, SP, #0x28+var_20
1EFEB8:  BLEQ            sub_1EFB50
1EFEBC:  STR.W           R8, [SP,#0x28+var_28]
1EFEC0:  ADD             R1, SP, #0x28+var_20
1EFEC2:  MOV             R0, R6
1EFEC4:  MOV             R2, R5
1EFEC6:  MOV             R3, R4
1EFEC8:  BL              sub_1F2DD4
1EFECC:  LDR             R0, [SP,#0x28+var_14]
1EFECE:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EFED4)
1EFED0:  ADD             R1, PC; __stack_chk_guard_ptr
1EFED2:  LDR             R1, [R1]; __stack_chk_guard
1EFED4:  LDR             R1, [R1]
1EFED6:  CMP             R1, R0
1EFED8:  ITTT EQ
1EFEDA:  ADDEQ           SP, SP, #0x18
1EFEDC:  POPEQ.W         {R8}
1EFEE0:  POPEQ           {R4-R7,PC}
1EFEE2:  BLX             __stack_chk_fail
