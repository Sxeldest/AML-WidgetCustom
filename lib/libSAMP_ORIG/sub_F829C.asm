; =========================================================
; Game Engine Function: sub_F829C
; Address            : 0xF829C - 0xF82D6
; =========================================================

F829C:  PUSH            {R4-R7,LR}
F829E:  ADD             R7, SP, #0xC
F82A0:  PUSH.W          {R11}
F82A4:  MOV             R5, R0
F82A6:  MOV             R0, R1; s
F82A8:  MOV             R4, R1
F82AA:  BLX             strlen
F82AE:  MOV             R6, R0
F82B0:  ADDS            R0, #0xD; unsigned int
F82B2:  BLX             j__Znwj; operator new(uint)
F82B6:  STRD.W          R6, R6, [R0]
F82BA:  ADDS            R2, R6, #1; n
F82BC:  ADD.W           R6, R0, #0xC
F82C0:  MOVS            R1, #0
F82C2:  STR             R1, [R0,#8]
F82C4:  MOV             R1, R4; src
F82C6:  MOV             R0, R6; dest
F82C8:  BLX             j_memcpy
F82CC:  STR             R6, [R5]
F82CE:  MOV             R0, R5
F82D0:  POP.W           {R11}
F82D4:  POP             {R4-R7,PC}
