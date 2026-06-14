; =========================================================
; Game Engine Function: sub_EFDC0
; Address            : 0xEFDC0 - 0xEFE18
; =========================================================

EFDC0:  PUSH            {R4-R7,LR}
EFDC2:  ADD             R7, SP, #0xC
EFDC4:  PUSH.W          {R8}
EFDC8:  SUB             SP, SP, #0x10
EFDCA:  MOV             R4, R0
EFDCC:  LDR             R0, =(__stack_chk_guard_ptr - 0xEFDD6)
EFDCE:  MOV             R8, R3
EFDD0:  MOV             R5, R2
EFDD2:  ADD             R0, PC; __stack_chk_guard_ptr
EFDD4:  MOV             R6, R1
EFDD6:  LDR             R0, [R0]; __stack_chk_guard
EFDD8:  LDR             R0, [R0]
EFDDA:  STR             R0, [SP,#0x20+var_14]
EFDDC:  LDR             R0, [R7,#arg_4]
EFDDE:  BLX             uselocale
EFDE2:  STR             R0, [SP,#0x20+var_18]
EFDE4:  LDR             R0, [R7,#arg_0]
EFDE6:  MOV             R1, R6
EFDE8:  STR             R0, [SP,#0x20+var_20]
EFDEA:  MOV             R0, R4
EFDEC:  MOV             R2, R5
EFDEE:  MOV             R3, R8
EFDF0:  BLX             wcsnrtombs
EFDF4:  MOV             R4, R0
EFDF6:  ADD             R0, SP, #0x20+var_18
EFDF8:  BL              sub_F61EC
EFDFC:  LDR             R0, [SP,#0x20+var_14]
EFDFE:  LDR             R1, =(__stack_chk_guard_ptr - 0xEFE04)
EFE00:  ADD             R1, PC; __stack_chk_guard_ptr
EFE02:  LDR             R1, [R1]; __stack_chk_guard
EFE04:  LDR             R1, [R1]
EFE06:  CMP             R1, R0
EFE08:  ITTTT EQ
EFE0A:  MOVEQ           R0, R4
EFE0C:  ADDEQ           SP, SP, #0x10
EFE0E:  POPEQ.W         {R8}
EFE12:  POPEQ           {R4-R7,PC}
EFE14:  BLX             __stack_chk_fail
