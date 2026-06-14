; =========================================================
; Game Engine Function: sub_86BA8
; Address            : 0x86BA8 - 0x86BF8
; =========================================================

86BA8:  PUSH            {R4-R7,LR}
86BAA:  ADD             R7, SP, #0xC
86BAC:  PUSH.W          {R11}
86BB0:  MOV             R6, R1
86BB2:  MOV             R4, R0
86BB4:  STRB            R3, [R0,#0x10]
86BB6:  MOVS            R0, #0
86BB8:  LSLS            R1, R2, #3
86BBA:  STRD.W          R1, R1, [R4]
86BBE:  STR             R0, [R4,#8]
86BC0:  CBZ             R3, loc_86BD6
86BC2:  MOV             R5, R2
86BC4:  CBZ             R2, loc_86BDA
86BC6:  CMP             R5, #0xFF
86BC8:  BHI             loc_86BE0
86BCA:  MOV.W           R0, #0x800
86BCE:  STR             R0, [R4,#4]
86BD0:  ADD.W           R0, R4, #0x11
86BD4:  B               loc_86BE6
86BD6:  STR             R6, [R4,#0xC]
86BD8:  B               loc_86BF0
86BDA:  MOVS            R0, #0
86BDC:  STR             R0, [R4,#0xC]
86BDE:  B               loc_86BF0
86BE0:  MOV             R0, R5; size
86BE2:  BLX             malloc
86BE6:  MOV             R1, R6; src
86BE8:  MOV             R2, R5; n
86BEA:  STR             R0, [R4,#0xC]
86BEC:  BLX             j_memcpy
86BF0:  MOV             R0, R4
86BF2:  POP.W           {R11}
86BF6:  POP             {R4-R7,PC}
