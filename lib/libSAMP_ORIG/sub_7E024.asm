; =========================================================
; Game Engine Function: sub_7E024
; Address            : 0x7E024 - 0x7E088
; =========================================================

7E024:  PUSH            {R4,R6,R7,LR}
7E026:  ADD             R7, SP, #8
7E028:  SUB             SP, SP, #0x18
7E02A:  MOV             R4, R0
7E02C:  LDR             R0, =(__stack_chk_guard_ptr - 0x7E036)
7E02E:  MOV             R3, R1
7E030:  MOVS            R1, #0
7E032:  ADD             R0, PC; __stack_chk_guard_ptr
7E034:  LDR             R0, [R0]; __stack_chk_guard
7E036:  LDR             R0, [R0]
7E038:  STR             R0, [SP,#0x20+var_C]
7E03A:  LDR             R0, [R2,#8]
7E03C:  VLDR            D16, [R2]
7E040:  STR             R0, [SP,#0x20+var_10]
7E042:  ADD             R0, SP, #0x20+var_18
7E044:  STRD.W          R1, R1, [R2]
7E048:  STR             R1, [R2,#8]
7E04A:  MOVS            R1, #0
7E04C:  STR             R0, [SP,#0x20+var_20]
7E04E:  MOV             R0, R4
7E050:  MOVS            R2, #1
7E052:  VSTR            D16, [SP,#0x20+var_18]
7E056:  BL              sub_849F8
7E05A:  LDRB.W          R0, [SP,#0x20+var_18]
7E05E:  LSLS            R0, R0, #0x1F
7E060:  ITT NE
7E062:  LDRNE           R0, [SP,#0x20+var_10]; void *
7E064:  BLXNE           j__ZdlPv; operator delete(void *)
7E068:  LDR             R0, =(_ZTV12GlobalStream - 0x7E06E); `vtable for'GlobalStream ...
7E06A:  ADD             R0, PC; `vtable for'GlobalStream
7E06C:  ADDS            R0, #8
7E06E:  STR             R0, [R4]
7E070:  LDR             R0, [SP,#0x20+var_C]
7E072:  LDR             R1, =(__stack_chk_guard_ptr - 0x7E078)
7E074:  ADD             R1, PC; __stack_chk_guard_ptr
7E076:  LDR             R1, [R1]; __stack_chk_guard
7E078:  LDR             R1, [R1]
7E07A:  CMP             R1, R0
7E07C:  ITTT EQ
7E07E:  MOVEQ           R0, R4
7E080:  ADDEQ           SP, SP, #0x18
7E082:  POPEQ           {R4,R6,R7,PC}
7E084:  BLX             __stack_chk_fail
