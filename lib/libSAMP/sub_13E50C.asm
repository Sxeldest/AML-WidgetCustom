; =========================================================
; Game Engine Function: sub_13E50C
; Address            : 0x13E50C - 0x13E560
; =========================================================

13E50C:  PUSH            {R4-R7,LR}
13E50E:  ADD             R7, SP, #0xC
13E510:  PUSH.W          {R11}
13E514:  MOV             R4, R0
13E516:  MOVS            R0, #0
13E518:  MOV             R6, R2
13E51A:  MOV             R5, R1
13E51C:  STRD.W          R0, R3, [R4,#0xC]
13E520:  CBZ             R1, loc_13E538
13E522:  MOV             R0, #0x4444445
13E52A:  CMP             R5, R0
13E52C:  BCS             loc_13E558
13E52E:  RSB.W           R0, R5, R5,LSL#4
13E532:  LSLS            R0, R0, #2; unsigned int
13E534:  BLX             j__Znwj; operator new(uint)
13E538:  RSB.W           R1, R6, R6,LSL#4
13E53C:  RSB.W           R2, R5, R5,LSL#4
13E540:  ADD.W           R1, R0, R1,LSL#2
13E544:  ADD.W           R2, R0, R2,LSL#2
13E548:  STRD.W          R0, R1, [R4]
13E54C:  MOV             R0, R4
13E54E:  STRD.W          R1, R2, [R4,#8]
13E552:  POP.W           {R11}
13E556:  POP             {R4-R7,PC}
13E558:  LDR             R0, =(aAllocatorTAllo - 0x13E55E); "allocator<T>::allocate(size_t n) 'n' ex"... ...
13E55A:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
13E55C:  BL              sub_DC8D4
