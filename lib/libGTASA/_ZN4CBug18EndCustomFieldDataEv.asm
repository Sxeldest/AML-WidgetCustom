; =========================================================
; Game Engine Function: _ZN4CBug18EndCustomFieldDataEv
; Address            : 0x3BE4E8 - 0x3BE534
; =========================================================

3BE4E8:  PUSH            {R4-R7,LR}
3BE4EA:  ADD             R7, SP, #0xC
3BE4EC:  PUSH.W          {R8,R9,R11}
3BE4F0:  MOV             R9, R0
3BE4F2:  LDR.W           R6, [R9,#4]
3BE4F6:  ADDS            R4, R6, #4
3BE4F8:  MOV             R0, R4; unsigned int
3BE4FA:  BLX             _Znaj; operator new[](uint)
3BE4FE:  MOV             R1, R4
3BE500:  MOV             R5, R0
3BE502:  BLX             j___aeabi_memclr8_1
3BE506:  LDR.W           R8, [R9]
3BE50A:  MOV             R0, R5; void *
3BE50C:  MOV             R2, R6; size_t
3BE50E:  MOV             R1, R8; void *
3BE510:  BLX             memcpy_1
3BE514:  MOVS            R0, #0
3BE516:  CMP.W           R8, #0
3BE51A:  STR             R0, [R5,R6]
3BE51C:  BEQ             loc_3BE528
3BE51E:  MOV             R0, R8; void *
3BE520:  BLX             _ZdaPv; operator delete[](void *)
3BE524:  LDR.W           R6, [R9,#4]
3BE528:  ADDS            R0, R6, #4
3BE52A:  STRD.W          R5, R0, [R9]
3BE52E:  POP.W           {R8,R9,R11}
3BE532:  POP             {R4-R7,PC}
