; =========================================================
; Game Engine Function: sub_13C368
; Address            : 0x13C368 - 0x13C3AA
; =========================================================

13C368:  PUSH            {R4-R7,LR}
13C36A:  ADD             R7, SP, #0xC
13C36C:  PUSH.W          {R11}
13C370:  MOV             R4, R0
13C372:  MOVS            R0, #0
13C374:  MOV             R6, R2
13C376:  MOV             R5, R1
13C378:  STRD.W          R0, R3, [R4,#0xC]
13C37C:  CBZ             R1, loc_13C38A
13C37E:  CMP.W           R5, #0x40000000
13C382:  BCS             loc_13C3A2
13C384:  LSLS            R0, R5, #2; unsigned int
13C386:  BLX             j__Znwj; operator new(uint)
13C38A:  ADD.W           R1, R0, R6,LSL#2
13C38E:  ADD.W           R2, R0, R5,LSL#2
13C392:  STRD.W          R0, R1, [R4]
13C396:  MOV             R0, R4
13C398:  STRD.W          R1, R2, [R4,#8]
13C39C:  POP.W           {R11}
13C3A0:  POP             {R4-R7,PC}
13C3A2:  LDR             R0, =(aAllocatorTAllo - 0x13C3A8); "allocator<T>::allocate(size_t n) 'n' ex"... ...
13C3A4:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
13C3A6:  BL              sub_DC8D4
