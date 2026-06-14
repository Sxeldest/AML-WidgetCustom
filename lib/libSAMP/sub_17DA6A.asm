; =========================================================
; Game Engine Function: sub_17DA6A
; Address            : 0x17DA6A - 0x17DA96
; =========================================================

17DA6A:  PUSH            {R4-R7,LR}
17DA6C:  ADD             R7, SP, #0xC
17DA6E:  PUSH.W          {R8}
17DA72:  LDR             R6, [R0]
17DA74:  MOV             R5, R0
17DA76:  MOV             R8, R1
17DA78:  ADDS            R0, R6, #7
17DA7A:  ASRS            R4, R0, #3
17DA7C:  MOV             R0, R4; unsigned int
17DA7E:  BLX             j__Znaj; operator new[](uint)
17DA82:  STR.W           R0, [R8]
17DA86:  MOV             R2, R4; n
17DA88:  LDR             R1, [R5,#0xC]; src
17DA8A:  BLX             j_memcpy
17DA8E:  MOV             R0, R6
17DA90:  POP.W           {R8}
17DA94:  POP             {R4-R7,PC}
