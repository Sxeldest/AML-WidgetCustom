; =========================================================
; Game Engine Function: sub_13C270
; Address            : 0x13C270 - 0x13C2C4
; =========================================================

13C270:  PUSH            {R4-R7,LR}
13C272:  ADD             R7, SP, #0xC
13C274:  PUSH.W          {R11}
13C278:  MOV             R4, R0
13C27A:  MOVS            R0, #0
13C27C:  MOV             R6, R2
13C27E:  MOV             R5, R1
13C280:  STRD.W          R0, R3, [R4,#0xC]
13C284:  CBZ             R1, loc_13C29C
13C286:  MOV             R0, #0x15555556
13C28E:  CMP             R5, R0
13C290:  BCS             loc_13C2BC
13C292:  ADD.W           R0, R5, R5,LSL#1
13C296:  LSLS            R0, R0, #2; unsigned int
13C298:  BLX             j__Znwj; operator new(uint)
13C29C:  ADD.W           R1, R6, R6,LSL#1
13C2A0:  ADD.W           R2, R5, R5,LSL#1
13C2A4:  ADD.W           R1, R0, R1,LSL#2
13C2A8:  ADD.W           R2, R0, R2,LSL#2
13C2AC:  STRD.W          R0, R1, [R4]
13C2B0:  MOV             R0, R4
13C2B2:  STRD.W          R1, R2, [R4,#8]
13C2B6:  POP.W           {R11}
13C2BA:  POP             {R4-R7,PC}
13C2BC:  LDR             R0, =(aAllocatorTAllo - 0x13C2C2); "allocator<T>::allocate(size_t n) 'n' ex"... ...
13C2BE:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
13C2C0:  BL              sub_DC8D4
