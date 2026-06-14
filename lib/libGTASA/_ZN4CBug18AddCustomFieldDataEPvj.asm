; =========================================================
; Game Engine Function: _ZN4CBug18AddCustomFieldDataEPvj
; Address            : 0x3BE534 - 0x3BE5AA
; =========================================================

3BE534:  PUSH            {R4-R7,LR}
3BE536:  ADD             R7, SP, #0xC
3BE538:  PUSH.W          {R8-R10}
3BE53C:  MOV             R4, R2
3BE53E:  ADD.W           R9, R4, #4
3BE542:  MOV             R10, R0
3BE544:  MOV             R5, R1
3BE546:  MOV             R0, R9; unsigned int
3BE548:  BLX             _Znaj; operator new[](uint)
3BE54C:  MOV             R8, R0
3BE54E:  STR.W           R4, [R0],#4; void *
3BE552:  MOV             R1, R5; void *
3BE554:  MOV             R2, R4; size_t
3BE556:  BLX             memcpy_1
3BE55A:  LDR.W           R5, [R10,#4]
3BE55E:  ADD.W           R4, R5, R9
3BE562:  MOV             R0, R4; unsigned int
3BE564:  BLX             _Znaj; operator new[](uint)
3BE568:  MOV             R1, R4
3BE56A:  MOV             R6, R0
3BE56C:  BLX             j___aeabi_memclr8_1
3BE570:  LDR.W           R4, [R10]
3BE574:  MOV             R0, R6; void *
3BE576:  MOV             R2, R5; size_t
3BE578:  MOV             R1, R4; void *
3BE57A:  BLX             memcpy_1
3BE57E:  ADDS            R0, R6, R5; void *
3BE580:  MOV             R1, R8; void *
3BE582:  MOV             R2, R9; size_t
3BE584:  BLX             memcpy_1
3BE588:  CBZ             R4, loc_3BE594
3BE58A:  MOV             R0, R4; void *
3BE58C:  BLX             _ZdaPv; operator delete[](void *)
3BE590:  LDR.W           R5, [R10,#4]
3BE594:  ADD.W           R0, R5, R9
3BE598:  STRD.W          R6, R0, [R10]
3BE59C:  MOV             R0, R8; void *
3BE59E:  POP.W           {R8-R10}
3BE5A2:  POP.W           {R4-R7,LR}
3BE5A6:  B.W             sub_18E920
