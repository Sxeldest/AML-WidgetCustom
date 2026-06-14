; =========================================================
; Game Engine Function: sub_FD2A8
; Address            : 0xFD2A8 - 0xFD320
; =========================================================

FD2A8:  PUSH            {R4-R7,LR}
FD2AA:  ADD             R7, SP, #0xC
FD2AC:  PUSH.W          {R11}
FD2B0:  SUB             SP, SP, #0x18
FD2B2:  MOV             R4, R0
FD2B4:  LDR             R0, =(__stack_chk_guard_ptr - 0xFD2BC)
FD2B6:  MOV             R5, R1
FD2B8:  ADD             R0, PC; __stack_chk_guard_ptr
FD2BA:  LDR             R0, [R0]; __stack_chk_guard
FD2BC:  LDR             R0, [R0]
FD2BE:  STR             R0, [SP,#0x28+var_14]
FD2C0:  LDRD.W          R0, R1, [R4]
FD2C4:  SUBS            R0, R1, R0
FD2C6:  MOVS            R1, #1
FD2C8:  ADD.W           R1, R1, R0,ASR#3
FD2CC:  MOV             R0, R4
FD2CE:  BL              sub_FD334
FD2D2:  MOV             R1, R0
FD2D4:  LDRD.W          R0, R2, [R4]
FD2D8:  ADD.W           R3, R4, #8
FD2DC:  MOV             R6, SP
FD2DE:  SUBS            R0, R2, R0
FD2E0:  ASRS            R2, R0, #3
FD2E2:  MOV             R0, R6
FD2E4:  BL              sub_FD364
FD2E8:  LDR             R2, [SP,#0x28+var_20]
FD2EA:  LDRD.W          R0, R1, [R5]
FD2EE:  STRD.W          R0, R1, [R2]
FD2F2:  LDR             R0, [SP,#0x28+var_20]
FD2F4:  ADDS            R0, #8
FD2F6:  STR             R0, [SP,#0x28+var_20]
FD2F8:  MOV             R0, R4
FD2FA:  MOV             R1, R6
FD2FC:  BL              sub_FD398
FD300:  MOV             R0, SP
FD302:  BL              sub_FD3C8
FD306:  LDR             R0, [SP,#0x28+var_14]
FD308:  LDR             R1, =(__stack_chk_guard_ptr - 0xFD30E)
FD30A:  ADD             R1, PC; __stack_chk_guard_ptr
FD30C:  LDR             R1, [R1]; __stack_chk_guard
FD30E:  LDR             R1, [R1]
FD310:  CMP             R1, R0
FD312:  ITTT EQ
FD314:  ADDEQ           SP, SP, #0x18
FD316:  POPEQ.W         {R11}
FD31A:  POPEQ           {R4-R7,PC}
FD31C:  BLX             __stack_chk_fail
