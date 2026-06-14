; =========================================================
; Game Engine Function: sub_1EFEF0
; Address            : 0x1EFEF0 - 0x1EFF5A
; =========================================================

1EFEF0:  PUSH            {R4-R7,LR}
1EFEF2:  ADD             R7, SP, #0xC
1EFEF4:  PUSH.W          {R8}
1EFEF8:  SUB             SP, SP, #0x18
1EFEFA:  MOV             R6, R0
1EFEFC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EFF06)
1EFEFE:  MOV             R8, R3
1EFF00:  MOV             R4, R2
1EFF02:  ADD             R0, PC; __stack_chk_guard_ptr
1EFF04:  MOV             R5, R1
1EFF06:  LDR             R0, [R0]; __stack_chk_guard
1EFF08:  LDR             R0, [R0]
1EFF0A:  STR             R0, [SP,#0x28+var_14]
1EFF0C:  MOVS            R0, #0; this
1EFF0E:  STR             R0, [SP,#0x28+var_20]
1EFF10:  BLX             j__ZNSt6__ndk115system_categoryEv; std::system_category(void)
1EFF14:  LDRB            R1, [R5]
1EFF16:  STR             R0, [SP,#0x28+var_1C]
1EFF18:  LSLS            R1, R1, #0x1F
1EFF1A:  LDR             R0, [R5,#8]
1EFF1C:  MOV             R1, R4; buf
1EFF1E:  IT EQ
1EFF20:  ADDEQ           R0, R5, #1; file
1EFF22:  BLX             stat
1EFF26:  ADDS            R0, #1
1EFF28:  ITT EQ
1EFF2A:  ADDEQ           R0, SP, #0x28+var_20
1EFF2C:  BLEQ            sub_1EFB50
1EFF30:  STR.W           R8, [SP,#0x28+var_28]
1EFF34:  ADD             R1, SP, #0x28+var_20
1EFF36:  MOV             R0, R6
1EFF38:  MOV             R2, R5
1EFF3A:  MOV             R3, R4
1EFF3C:  BL              sub_1F2DD4
1EFF40:  LDR             R0, [SP,#0x28+var_14]
1EFF42:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EFF48)
1EFF44:  ADD             R1, PC; __stack_chk_guard_ptr
1EFF46:  LDR             R1, [R1]; __stack_chk_guard
1EFF48:  LDR             R1, [R1]
1EFF4A:  CMP             R1, R0
1EFF4C:  ITTT EQ
1EFF4E:  ADDEQ           SP, SP, #0x18
1EFF50:  POPEQ.W         {R8}
1EFF54:  POPEQ           {R4-R7,PC}
1EFF56:  BLX             __stack_chk_fail
