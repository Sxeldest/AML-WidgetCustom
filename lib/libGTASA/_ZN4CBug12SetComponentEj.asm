; =========================================================
; Game Engine Function: _ZN4CBug12SetComponentEj
; Address            : 0x3BE350 - 0x3BE40A
; =========================================================

3BE350:  PUSH            {R4-R7,LR}
3BE352:  ADD             R7, SP, #0xC
3BE354:  PUSH.W          {R8-R10}
3BE358:  SUB.W           SP, SP, #0x800
3BE35C:  SUB             SP, SP, #8
3BE35E:  MOV             R8, R0
3BE360:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE36A)
3BE362:  MOV             R2, R1
3BE364:  MOV             R4, SP
3BE366:  ADD             R0, PC; __stack_chk_guard_ptr
3BE368:  ADR             R1, dword_3BE410
3BE36A:  LDR             R0, [R0]; __stack_chk_guard
3BE36C:  LDR             R0, [R0]
3BE36E:  STR.W           R0, [R7,#var_1C]
3BE372:  MOV             R0, R4
3BE374:  BL              sub_5E6BC0
3BE378:  MOV             R0, R4; char *
3BE37A:  BLX             strlen
3BE37E:  MOV             R5, R0
3BE380:  ADD.W           R9, R5, #8
3BE384:  MOV             R0, R9; unsigned int
3BE386:  BLX             _Znaj; operator new[](uint)
3BE38A:  MOV             R10, R0
3BE38C:  MOVS            R0, #0xE
3BE38E:  STR.W           R0, [R10]
3BE392:  ADD.W           R0, R10, #8; void *
3BE396:  MOV             R1, R4; void *
3BE398:  MOV             R2, R5; size_t
3BE39A:  STR.W           R5, [R10,#4]
3BE39E:  BLX             memcpy_1
3BE3A2:  LDR.W           R6, [R8,#4]
3BE3A6:  ADD.W           R5, R6, R9
3BE3AA:  MOV             R0, R5; unsigned int
3BE3AC:  BLX             _Znaj; operator new[](uint)
3BE3B0:  MOV             R1, R5
3BE3B2:  MOV             R4, R0
3BE3B4:  BLX             j___aeabi_memclr8_1
3BE3B8:  LDR.W           R5, [R8]
3BE3BC:  MOV             R0, R4; void *
3BE3BE:  MOV             R2, R6; size_t
3BE3C0:  MOV             R1, R5; void *
3BE3C2:  BLX             memcpy_1
3BE3C6:  ADDS            R0, R4, R6; void *
3BE3C8:  MOV             R1, R10; void *
3BE3CA:  MOV             R2, R9; size_t
3BE3CC:  BLX             memcpy_1
3BE3D0:  CBZ             R5, loc_3BE3DC
3BE3D2:  MOV             R0, R5; void *
3BE3D4:  BLX             _ZdaPv; operator delete[](void *)
3BE3D8:  LDR.W           R6, [R8,#4]
3BE3DC:  ADD.W           R0, R6, R9
3BE3E0:  STRD.W          R4, R0, [R8]
3BE3E4:  MOV             R0, R10; void *
3BE3E6:  BLX             _ZdaPv; operator delete[](void *)
3BE3EA:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE3F4)
3BE3EC:  LDR.W           R1, [R7,#var_1C]
3BE3F0:  ADD             R0, PC; __stack_chk_guard_ptr
3BE3F2:  LDR             R0, [R0]; __stack_chk_guard
3BE3F4:  LDR             R0, [R0]
3BE3F6:  SUBS            R0, R0, R1
3BE3F8:  ITTTT EQ
3BE3FA:  ADDEQ.W         SP, SP, #0x800
3BE3FE:  ADDEQ           SP, SP, #8
3BE400:  POPEQ.W         {R8-R10}
3BE404:  POPEQ           {R4-R7,PC}
3BE406:  BLX             __stack_chk_fail
