; =========================================================
; Game Engine Function: _ZN4CBug10SetVersionEj
; Address            : 0x3BE288 - 0x3BE342
; =========================================================

3BE288:  PUSH            {R4-R7,LR}
3BE28A:  ADD             R7, SP, #0xC
3BE28C:  PUSH.W          {R8-R10}
3BE290:  SUB.W           SP, SP, #0x800
3BE294:  SUB             SP, SP, #8
3BE296:  MOV             R8, R0
3BE298:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE2A2)
3BE29A:  MOV             R2, R1
3BE29C:  MOV             R4, SP
3BE29E:  ADD             R0, PC; __stack_chk_guard_ptr
3BE2A0:  ADR             R1, dword_3BE348
3BE2A2:  LDR             R0, [R0]; __stack_chk_guard
3BE2A4:  LDR             R0, [R0]
3BE2A6:  STR.W           R0, [R7,#var_1C]
3BE2AA:  MOV             R0, R4
3BE2AC:  BL              sub_5E6BC0
3BE2B0:  MOV             R0, R4; char *
3BE2B2:  BLX             strlen
3BE2B6:  MOV             R5, R0
3BE2B8:  ADD.W           R9, R5, #8
3BE2BC:  MOV             R0, R9; unsigned int
3BE2BE:  BLX             _Znaj; operator new[](uint)
3BE2C2:  MOV             R10, R0
3BE2C4:  MOVS            R0, #0xC
3BE2C6:  STR.W           R0, [R10]
3BE2CA:  ADD.W           R0, R10, #8; void *
3BE2CE:  MOV             R1, R4; void *
3BE2D0:  MOV             R2, R5; size_t
3BE2D2:  STR.W           R5, [R10,#4]
3BE2D6:  BLX             memcpy_1
3BE2DA:  LDR.W           R6, [R8,#4]
3BE2DE:  ADD.W           R5, R6, R9
3BE2E2:  MOV             R0, R5; unsigned int
3BE2E4:  BLX             _Znaj; operator new[](uint)
3BE2E8:  MOV             R1, R5
3BE2EA:  MOV             R4, R0
3BE2EC:  BLX             j___aeabi_memclr8_1
3BE2F0:  LDR.W           R5, [R8]
3BE2F4:  MOV             R0, R4; void *
3BE2F6:  MOV             R2, R6; size_t
3BE2F8:  MOV             R1, R5; void *
3BE2FA:  BLX             memcpy_1
3BE2FE:  ADDS            R0, R4, R6; void *
3BE300:  MOV             R1, R10; void *
3BE302:  MOV             R2, R9; size_t
3BE304:  BLX             memcpy_1
3BE308:  CBZ             R5, loc_3BE314
3BE30A:  MOV             R0, R5; void *
3BE30C:  BLX             _ZdaPv; operator delete[](void *)
3BE310:  LDR.W           R6, [R8,#4]
3BE314:  ADD.W           R0, R6, R9
3BE318:  STRD.W          R4, R0, [R8]
3BE31C:  MOV             R0, R10; void *
3BE31E:  BLX             _ZdaPv; operator delete[](void *)
3BE322:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE32C)
3BE324:  LDR.W           R1, [R7,#var_1C]
3BE328:  ADD             R0, PC; __stack_chk_guard_ptr
3BE32A:  LDR             R0, [R0]; __stack_chk_guard
3BE32C:  LDR             R0, [R0]
3BE32E:  SUBS            R0, R0, R1
3BE330:  ITTTT EQ
3BE332:  ADDEQ.W         SP, SP, #0x800
3BE336:  ADDEQ           SP, SP, #8
3BE338:  POPEQ.W         {R8-R10}
3BE33C:  POPEQ           {R4-R7,PC}
3BE33E:  BLX             __stack_chk_fail
