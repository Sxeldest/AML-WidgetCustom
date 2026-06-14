; =========================================================
; Game Engine Function: _ZN17CStuntJumpManager8ShutdownEv
; Address            : 0x361590 - 0x3615DC
; =========================================================

361590:  PUSH            {R4,R5,R7,LR}
361592:  ADD             R7, SP, #8
361594:  LDR             R0, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x36159A)
361596:  ADD             R0, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
361598:  LDR             R0, [R0]; CStuntJumpManager::mp_poolStuntJumps ...
36159A:  LDR             R4, [R0]; CStuntJumpManager::mp_poolStuntJumps
36159C:  CBZ             R4, loc_3615D0
36159E:  LDR             R0, [R4,#8]
3615A0:  CMP             R0, #1
3615A2:  BLT             loc_3615CA
3615A4:  LDRB            R0, [R4,#0x10]
3615A6:  CBZ             R0, loc_3615C2
3615A8:  LDR             R0, [R4]; void *
3615AA:  CMP             R0, #0
3615AC:  IT NE
3615AE:  BLXNE           _ZdaPv; operator delete[](void *)
3615B2:  MOV             R5, R4
3615B4:  LDR.W           R0, [R5,#4]!; void *
3615B8:  CMP             R0, #0
3615BA:  IT NE
3615BC:  BLXNE           _ZdaPv; operator delete[](void *)
3615C0:  B               loc_3615C4
3615C2:  ADDS            R5, R4, #4
3615C4:  MOVS            R0, #0
3615C6:  STR             R0, [R4]
3615C8:  STR             R0, [R5]
3615CA:  MOV             R0, R4; void *
3615CC:  BLX             _ZdlPv; operator delete(void *)
3615D0:  LDR             R0, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x3615D8)
3615D2:  MOVS            R1, #0
3615D4:  ADD             R0, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
3615D6:  LDR             R0, [R0]; CStuntJumpManager::mp_poolStuntJumps ...
3615D8:  STR             R1, [R0]; CStuntJumpManager::mp_poolStuntJumps
3615DA:  POP             {R4,R5,R7,PC}
