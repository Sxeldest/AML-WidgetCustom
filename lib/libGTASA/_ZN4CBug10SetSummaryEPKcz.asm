; =========================================================
; Game Engine Function: _ZN4CBug10SetSummaryEPKcz
; Address            : 0x3BE068 - 0x3BE12E
; =========================================================

3BE068:  SUB             SP, SP, #8
3BE06A:  PUSH            {R4-R7,LR}
3BE06C:  ADD             R7, SP, #0xC
3BE06E:  PUSH.W          {R8-R10}
3BE072:  SUB.W           SP, SP, #0x810
3BE076:  MOV             R8, R0
3BE078:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE082)
3BE07A:  STR             R3, [R7,#var_sC]
3BE07C:  ADD             R4, SP, #0x828+var_820
3BE07E:  ADD             R0, PC; __stack_chk_guard_ptr
3BE080:  LDR             R0, [R0]; __stack_chk_guard
3BE082:  LDR             R0, [R0]
3BE084:  STR             R2, [R7,#var_s8]
3BE086:  ADD.W           R2, R7, #8
3BE08A:  STR.W           R0, [R7,#var_1C]
3BE08E:  MOV             R0, R4
3BE090:  STR             R2, [SP,#0x828+var_824]
3BE092:  BL              sub_5E6C0C
3BE096:  MOV             R0, R4; char *
3BE098:  BLX             strlen
3BE09C:  MOV             R5, R0
3BE09E:  ADD.W           R9, R5, #8
3BE0A2:  MOV             R0, R9; unsigned int
3BE0A4:  BLX             _Znaj; operator new[](uint)
3BE0A8:  MOV             R10, R0
3BE0AA:  MOVS            R0, #9
3BE0AC:  STR.W           R0, [R10]
3BE0B0:  ADD.W           R0, R10, #8; void *
3BE0B4:  MOV             R1, R4; void *
3BE0B6:  MOV             R2, R5; size_t
3BE0B8:  STR.W           R5, [R10,#4]
3BE0BC:  BLX             memcpy_1
3BE0C0:  LDR.W           R6, [R8,#4]
3BE0C4:  ADD.W           R5, R6, R9
3BE0C8:  MOV             R0, R5; unsigned int
3BE0CA:  BLX             _Znaj; operator new[](uint)
3BE0CE:  MOV             R1, R5
3BE0D0:  MOV             R4, R0
3BE0D2:  BLX             j___aeabi_memclr8_1
3BE0D6:  LDR.W           R5, [R8]
3BE0DA:  MOV             R0, R4; void *
3BE0DC:  MOV             R2, R6; size_t
3BE0DE:  MOV             R1, R5; void *
3BE0E0:  BLX             memcpy_1
3BE0E4:  ADDS            R0, R4, R6; void *
3BE0E6:  MOV             R1, R10; void *
3BE0E8:  MOV             R2, R9; size_t
3BE0EA:  BLX             memcpy_1
3BE0EE:  CBZ             R5, loc_3BE0FA
3BE0F0:  MOV             R0, R5; void *
3BE0F2:  BLX             _ZdaPv; operator delete[](void *)
3BE0F6:  LDR.W           R6, [R8,#4]
3BE0FA:  ADD.W           R0, R6, R9
3BE0FE:  STRD.W          R4, R0, [R8]
3BE102:  MOV             R0, R10; void *
3BE104:  BLX             _ZdaPv; operator delete[](void *)
3BE108:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE112)
3BE10A:  LDR.W           R1, [R7,#var_1C]
3BE10E:  ADD             R0, PC; __stack_chk_guard_ptr
3BE110:  LDR             R0, [R0]; __stack_chk_guard
3BE112:  LDR             R0, [R0]
3BE114:  SUBS            R0, R0, R1
3BE116:  ITTTT EQ
3BE118:  ADDEQ.W         SP, SP, #0x810
3BE11C:  POPEQ.W         {R8-R10}
3BE120:  POPEQ.W         {R4-R7,LR}
3BE124:  ADDEQ           SP, SP, #8
3BE126:  IT EQ
3BE128:  BXEQ            LR
3BE12A:  BLX             __stack_chk_fail
