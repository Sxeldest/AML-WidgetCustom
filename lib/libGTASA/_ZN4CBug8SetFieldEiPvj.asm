; =========================================================
; Game Engine Function: _ZN4CBug8SetFieldEiPvj
; Address            : 0x3BDEB8 - 0x3BDF38
; =========================================================

3BDEB8:  PUSH            {R4-R7,LR}
3BDEBA:  ADD             R7, SP, #0xC
3BDEBC:  PUSH.W          {R8-R10}
3BDEC0:  MOV             R4, R3
3BDEC2:  ADD.W           R8, R4, #8
3BDEC6:  MOV             R9, R0
3BDEC8:  MOV             R5, R2
3BDECA:  MOV             R0, R8; unsigned int
3BDECC:  MOV             R6, R1
3BDECE:  BLX             _Znaj; operator new[](uint)
3BDED2:  MOV             R10, R0
3BDED4:  ADD.W           R0, R10, #8; void *
3BDED8:  MOV             R1, R5; void *
3BDEDA:  MOV             R2, R4; size_t
3BDEDC:  STR.W           R6, [R10]
3BDEE0:  STR.W           R4, [R10,#4]
3BDEE4:  BLX             memcpy_1
3BDEE8:  LDR.W           R4, [R9,#4]
3BDEEC:  ADD.W           R6, R4, R8
3BDEF0:  MOV             R0, R6; unsigned int
3BDEF2:  BLX             _Znaj; operator new[](uint)
3BDEF6:  MOV             R1, R6
3BDEF8:  MOV             R5, R0
3BDEFA:  BLX             j___aeabi_memclr8_1
3BDEFE:  LDR.W           R6, [R9]
3BDF02:  MOV             R0, R5; void *
3BDF04:  MOV             R2, R4; size_t
3BDF06:  MOV             R1, R6; void *
3BDF08:  BLX             memcpy_1
3BDF0C:  ADDS            R0, R5, R4; void *
3BDF0E:  MOV             R1, R10; void *
3BDF10:  MOV             R2, R8; size_t
3BDF12:  BLX             memcpy_1
3BDF16:  CBZ             R6, loc_3BDF22
3BDF18:  MOV             R0, R6; void *
3BDF1A:  BLX             _ZdaPv; operator delete[](void *)
3BDF1E:  LDR.W           R4, [R9,#4]
3BDF22:  ADD.W           R0, R4, R8
3BDF26:  STRD.W          R5, R0, [R9]
3BDF2A:  MOV             R0, R10; void *
3BDF2C:  POP.W           {R8-R10}
3BDF30:  POP.W           {R4-R7,LR}
3BDF34:  B.W             sub_18E920
