; =========================================================
; Game Engine Function: sub_159504
; Address            : 0x159504 - 0x159558
; =========================================================

159504:  PUSH            {R4-R7,LR}
159506:  ADD             R7, SP, #0xC
159508:  PUSH.W          {R11}
15950C:  MOV             R4, R0
15950E:  MOVS            R0, #0
159510:  MOV             R6, R2
159512:  MOV             R5, R1
159514:  STRD.W          R0, R3, [R4,#0xC]
159518:  CBZ             R1, loc_159530
15951A:  MOV             R0, #0x6666667
159522:  CMP             R5, R0
159524:  BCS             loc_159550
159526:  ADD.W           R0, R5, R5,LSL#2
15952A:  LSLS            R0, R0, #3; unsigned int
15952C:  BLX             j__Znwj; operator new(uint)
159530:  ADD.W           R1, R6, R6,LSL#2
159534:  ADD.W           R2, R5, R5,LSL#2
159538:  ADD.W           R1, R0, R1,LSL#3
15953C:  ADD.W           R2, R0, R2,LSL#3
159540:  STRD.W          R0, R1, [R4]
159544:  MOV             R0, R4
159546:  STRD.W          R1, R2, [R4,#8]
15954A:  POP.W           {R11}
15954E:  POP             {R4-R7,PC}
159550:  LDR             R0, =(aAllocatorTAllo - 0x159556); "allocator<T>::allocate(size_t n) 'n' ex"... ...
159552:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
159554:  BL              sub_DC8D4
