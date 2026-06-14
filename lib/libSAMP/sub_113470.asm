; =========================================================
; Game Engine Function: sub_113470
; Address            : 0x113470 - 0x1134B2
; =========================================================

113470:  PUSH            {R4-R7,LR}
113472:  ADD             R7, SP, #0xC
113474:  PUSH.W          {R11}
113478:  MOV             R4, R0
11347A:  MOVS            R0, #0
11347C:  MOV             R6, R2
11347E:  MOV             R5, R1
113480:  STRD.W          R0, R3, [R4,#0xC]
113484:  CBZ             R1, loc_113492
113486:  CMP.W           R5, #0x20000000
11348A:  BCS             loc_1134AA
11348C:  LSLS            R0, R5, #3; unsigned int
11348E:  BLX             j__Znwj; operator new(uint)
113492:  ADD.W           R1, R0, R6,LSL#3
113496:  ADD.W           R2, R0, R5,LSL#3
11349A:  STRD.W          R0, R1, [R4]
11349E:  MOV             R0, R4
1134A0:  STRD.W          R1, R2, [R4,#8]
1134A4:  POP.W           {R11}
1134A8:  POP             {R4-R7,PC}
1134AA:  LDR             R0, =(aAllocatorTAllo - 0x1134B0); "allocator<T>::allocate(size_t n) 'n' ex"... ...
1134AC:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
1134AE:  BL              sub_DC8D4
