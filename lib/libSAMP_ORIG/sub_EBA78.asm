; =========================================================
; Game Engine Function: sub_EBA78
; Address            : 0xEBA78 - 0xEBAB4
; =========================================================

EBA78:  PUSH            {R3-R7,LR}
EBA7A:  ADD             R7, SP, #0x10
EBA7C:  MOV             R3, R1
EBA7E:  LDR             R1, =(__stack_chk_guard_ptr - 0xEBA84)
EBA80:  ADD             R1, PC; __stack_chk_guard_ptr
EBA82:  LDR             R1, [R1]; __stack_chk_guard
EBA84:  LDR             R1, [R1]
EBA86:  STR             R1, [SP,#0x10+var_4]
EBA88:  ADD.W           R1, R7, #8
EBA8C:  STR             R1, [SP,#0x10+var_8]
EBA8E:  LDR             R2, =(a0lf - 0xEBA94); "%.0Lf" ...
EBA90:  ADD             R2, PC; "%.0Lf"
EBA92:  STRD.W          R2, R1, [SP,#0x10+var_10]
EBA96:  MOVS            R1, #0x64 ; 'd'
EBA98:  MOVS            R2, #0
EBA9A:  BLX             __vsnprintf_chk
EBA9E:  LDR             R1, [SP,#0x10+var_4]
EBAA0:  LDR             R2, =(__stack_chk_guard_ptr - 0xEBAA6)
EBAA2:  ADD             R2, PC; __stack_chk_guard_ptr
EBAA4:  LDR             R2, [R2]; __stack_chk_guard
EBAA6:  LDR             R2, [R2]
EBAA8:  CMP             R2, R1
EBAAA:  ITT EQ
EBAAC:  ADDEQ           SP, SP, #0x10
EBAAE:  POPEQ           {R7,PC}
EBAB0:  BLX             __stack_chk_fail
