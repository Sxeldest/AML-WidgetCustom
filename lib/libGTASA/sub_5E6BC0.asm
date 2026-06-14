; =========================================================
; Game Engine Function: sub_5E6BC0
; Address            : 0x5E6BC0 - 0x5E6C02
; =========================================================

5E6BC0:  SUB             SP, SP, #8
5E6BC2:  PUSH            {R7,LR}
5E6BC4:  MOV             R7, SP
5E6BC6:  SUB             SP, SP, #8
5E6BC8:  LDR.W           R12, =(__stack_chk_guard_ptr - 0x5E6BD2)
5E6BCC:  STR             R3, [R7,#0xC]
5E6BCE:  ADD             R12, PC; __stack_chk_guard_ptr
5E6BD0:  LDR.W           R12, [R12]; __stack_chk_guard
5E6BD4:  LDR.W           R3, [R12]
5E6BD8:  STR             R2, [R7,#8]
5E6BDA:  ADD.W           R2, R7, #8
5E6BDE:  STR             R3, [SP,#0x18+var_14]
5E6BE0:  STR             R2, [SP,#0x18+var_18]
5E6BE2:  BL              sub_5E6C0C
5E6BE6:  LDR             R1, =(__stack_chk_guard_ptr - 0x5E6BEE)
5E6BE8:  LDR             R2, [SP,#0x18+var_14]
5E6BEA:  ADD             R1, PC; __stack_chk_guard_ptr
5E6BEC:  LDR             R1, [R1]; __stack_chk_guard
5E6BEE:  LDR             R1, [R1]
5E6BF0:  SUBS            R1, R1, R2
5E6BF2:  ITTTT EQ
5E6BF4:  ADDEQ           SP, SP, #8
5E6BF6:  POPEQ.W         {R7,LR}
5E6BFA:  ADDEQ           SP, SP, #8
5E6BFC:  BXEQ            LR
5E6BFE:  BLX.W           __stack_chk_fail
