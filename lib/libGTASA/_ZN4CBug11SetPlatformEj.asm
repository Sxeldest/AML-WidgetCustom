; =========================================================
; Game Engine Function: _ZN4CBug11SetPlatformEj
; Address            : 0x3BE1C0 - 0x3BE27A
; =========================================================

3BE1C0:  PUSH            {R4-R7,LR}
3BE1C2:  ADD             R7, SP, #0xC
3BE1C4:  PUSH.W          {R8-R10}
3BE1C8:  SUB.W           SP, SP, #0x800
3BE1CC:  SUB             SP, SP, #8
3BE1CE:  MOV             R8, R0
3BE1D0:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE1DA)
3BE1D2:  MOV             R2, R1
3BE1D4:  MOV             R4, SP
3BE1D6:  ADD             R0, PC; __stack_chk_guard_ptr
3BE1D8:  ADR             R1, dword_3BE280
3BE1DA:  LDR             R0, [R0]; __stack_chk_guard
3BE1DC:  LDR             R0, [R0]
3BE1DE:  STR.W           R0, [R7,#var_1C]
3BE1E2:  MOV             R0, R4
3BE1E4:  BL              sub_5E6BC0
3BE1E8:  MOV             R0, R4; char *
3BE1EA:  BLX             strlen
3BE1EE:  MOV             R5, R0
3BE1F0:  ADD.W           R9, R5, #8
3BE1F4:  MOV             R0, R9; unsigned int
3BE1F6:  BLX             _Znaj; operator new[](uint)
3BE1FA:  MOV             R10, R0
3BE1FC:  MOVS            R0, #0xB
3BE1FE:  STR.W           R0, [R10]
3BE202:  ADD.W           R0, R10, #8; void *
3BE206:  MOV             R1, R4; void *
3BE208:  MOV             R2, R5; size_t
3BE20A:  STR.W           R5, [R10,#4]
3BE20E:  BLX             memcpy_1
3BE212:  LDR.W           R6, [R8,#4]
3BE216:  ADD.W           R5, R6, R9
3BE21A:  MOV             R0, R5; unsigned int
3BE21C:  BLX             _Znaj; operator new[](uint)
3BE220:  MOV             R1, R5
3BE222:  MOV             R4, R0
3BE224:  BLX             j___aeabi_memclr8_1
3BE228:  LDR.W           R5, [R8]
3BE22C:  MOV             R0, R4; void *
3BE22E:  MOV             R2, R6; size_t
3BE230:  MOV             R1, R5; void *
3BE232:  BLX             memcpy_1
3BE236:  ADDS            R0, R4, R6; void *
3BE238:  MOV             R1, R10; void *
3BE23A:  MOV             R2, R9; size_t
3BE23C:  BLX             memcpy_1
3BE240:  CBZ             R5, loc_3BE24C
3BE242:  MOV             R0, R5; void *
3BE244:  BLX             _ZdaPv; operator delete[](void *)
3BE248:  LDR.W           R6, [R8,#4]
3BE24C:  ADD.W           R0, R6, R9
3BE250:  STRD.W          R4, R0, [R8]
3BE254:  MOV             R0, R10; void *
3BE256:  BLX             _ZdaPv; operator delete[](void *)
3BE25A:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BE264)
3BE25C:  LDR.W           R1, [R7,#var_1C]
3BE260:  ADD             R0, PC; __stack_chk_guard_ptr
3BE262:  LDR             R0, [R0]; __stack_chk_guard
3BE264:  LDR             R0, [R0]
3BE266:  SUBS            R0, R0, R1
3BE268:  ITTTT EQ
3BE26A:  ADDEQ.W         SP, SP, #0x800
3BE26E:  ADDEQ           SP, SP, #8
3BE270:  POPEQ.W         {R8-R10}
3BE274:  POPEQ           {R4-R7,PC}
3BE276:  BLX             __stack_chk_fail
