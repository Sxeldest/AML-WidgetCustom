; =========================================================
; Game Engine Function: _ZN4CBug10SetProductEPKc
; Address            : 0x3BE138 - 0x3BE1BE
; =========================================================

3BE138:  PUSH            {R4-R7,LR}
3BE13A:  ADD             R7, SP, #0xC
3BE13C:  PUSH.W          {R8-R10}
3BE140:  MOV             R4, R1
3BE142:  MOV             R9, R0
3BE144:  MOV             R0, R4; char *
3BE146:  BLX             strlen
3BE14A:  MOV             R5, R0
3BE14C:  ADD.W           R8, R5, #8
3BE150:  MOV             R0, R8; unsigned int
3BE152:  BLX             _Znaj; operator new[](uint)
3BE156:  MOV             R10, R0
3BE158:  MOVS            R0, #0xA
3BE15A:  STR.W           R0, [R10]
3BE15E:  ADD.W           R0, R10, #8; void *
3BE162:  MOV             R1, R4; void *
3BE164:  MOV             R2, R5; size_t
3BE166:  STR.W           R5, [R10,#4]
3BE16A:  BLX             memcpy_1
3BE16E:  LDR.W           R4, [R9,#4]
3BE172:  ADD.W           R6, R4, R8
3BE176:  MOV             R0, R6; unsigned int
3BE178:  BLX             _Znaj; operator new[](uint)
3BE17C:  MOV             R1, R6
3BE17E:  MOV             R5, R0
3BE180:  BLX             j___aeabi_memclr8_1
3BE184:  LDR.W           R6, [R9]
3BE188:  MOV             R0, R5; void *
3BE18A:  MOV             R2, R4; size_t
3BE18C:  MOV             R1, R6; void *
3BE18E:  BLX             memcpy_1
3BE192:  ADDS            R0, R5, R4; void *
3BE194:  MOV             R1, R10; void *
3BE196:  MOV             R2, R8; size_t
3BE198:  BLX             memcpy_1
3BE19C:  CBZ             R6, loc_3BE1A8
3BE19E:  MOV             R0, R6; void *
3BE1A0:  BLX             _ZdaPv; operator delete[](void *)
3BE1A4:  LDR.W           R4, [R9,#4]
3BE1A8:  ADD.W           R0, R4, R8
3BE1AC:  STRD.W          R5, R0, [R9]
3BE1B0:  MOV             R0, R10; void *
3BE1B2:  POP.W           {R8-R10}
3BE1B6:  POP.W           {R4-R7,LR}
3BE1BA:  B.W             sub_18E920
