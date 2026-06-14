; =========================================================
; Game Engine Function: sub_87112
; Address            : 0x87112 - 0x8713E
; =========================================================

87112:  PUSH            {R4-R7,LR}
87114:  ADD             R7, SP, #0xC
87116:  PUSH.W          {R8}
8711A:  LDR             R6, [R0]
8711C:  MOV             R5, R0
8711E:  MOV             R8, R1
87120:  ADDS            R0, R6, #7
87122:  ASRS            R4, R0, #3
87124:  MOV             R0, R4; unsigned int
87126:  BLX             j__Znaj; operator new[](uint)
8712A:  STR.W           R0, [R8]
8712E:  MOV             R2, R4; n
87130:  LDR             R1, [R5,#0xC]; src
87132:  BLX             j_memcpy
87136:  MOV             R0, R6
87138:  POP.W           {R8}
8713C:  POP             {R4-R7,PC}
