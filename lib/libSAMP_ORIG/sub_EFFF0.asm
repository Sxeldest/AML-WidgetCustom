; =========================================================
; Game Engine Function: sub_EFFF0
; Address            : 0xEFFF0 - 0xF0048
; =========================================================

EFFF0:  PUSH            {R4-R7,LR}
EFFF2:  ADD             R7, SP, #0xC
EFFF4:  PUSH.W          {R8}
EFFF8:  SUB             SP, SP, #0x10
EFFFA:  MOV             R4, R0
EFFFC:  LDR             R0, =(__stack_chk_guard_ptr - 0xF0006)
EFFFE:  MOV             R8, R3
F0000:  MOV             R5, R2
F0002:  ADD             R0, PC; __stack_chk_guard_ptr
F0004:  MOV             R6, R1
F0006:  LDR             R0, [R0]; __stack_chk_guard
F0008:  LDR             R0, [R0]
F000A:  STR             R0, [SP,#0x20+var_14]
F000C:  LDR             R0, [R7,#arg_4]
F000E:  BLX             uselocale
F0012:  STR             R0, [SP,#0x20+var_18]
F0014:  LDR             R0, [R7,#arg_0]
F0016:  MOV             R1, R6
F0018:  STR             R0, [SP,#0x20+var_20]
F001A:  MOV             R0, R4
F001C:  MOV             R2, R5
F001E:  MOV             R3, R8
F0020:  BLX             mbsnrtowcs
F0024:  MOV             R4, R0
F0026:  ADD             R0, SP, #0x20+var_18
F0028:  BL              sub_F61EC
F002C:  LDR             R0, [SP,#0x20+var_14]
F002E:  LDR             R1, =(__stack_chk_guard_ptr - 0xF0034)
F0030:  ADD             R1, PC; __stack_chk_guard_ptr
F0032:  LDR             R1, [R1]; __stack_chk_guard
F0034:  LDR             R1, [R1]
F0036:  CMP             R1, R0
F0038:  ITTTT EQ
F003A:  MOVEQ           R0, R4
F003C:  ADDEQ           SP, SP, #0x10
F003E:  POPEQ.W         {R8}
F0042:  POPEQ           {R4-R7,PC}
F0044:  BLX             __stack_chk_fail
