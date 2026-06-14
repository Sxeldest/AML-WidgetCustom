; =========================================================
; Game Engine Function: sub_17F8F0
; Address            : 0x17F8F0 - 0x17F940
; =========================================================

17F8F0:  PUSH            {R4-R7,LR}
17F8F2:  ADD             R7, SP, #0xC
17F8F4:  PUSH.W          {R8}
17F8F8:  MOV             R4, R0
17F8FA:  MOVS            R0, #0x40 ; '@'; unsigned int
17F8FC:  BLX             j__Znwj; operator new(uint)
17F900:  MOV             R8, R0
17F902:  STRD.W          R0, R0, [R4,#8]
17F906:  MOVS            R0, #0x40 ; '@'; unsigned int
17F908:  BLX             j__Znwj; operator new(uint)
17F90C:  MOVS            R6, #6
17F90E:  MOV             R5, R8
17F910:  STR.W           R0, [R8,#0x3C]
17F914:  LDR             R5, [R5,#0x3C]
17F916:  MOVS            R0, #0x40 ; '@'; unsigned int
17F918:  STR             R5, [R4,#8]
17F91A:  BLX             j__Znwj; operator new(uint)
17F91E:  SUBS            R6, #1
17F920:  STR             R0, [R5,#0x3C]
17F922:  BNE             loc_17F914
17F924:  STR.W           R8, [R4,#8]
17F928:  MOVS            R1, #0
17F92A:  LDR             R0, [R5,#0x3C]
17F92C:  STRD.W          R8, R8, [R4]
17F930:  STRD.W          R1, R1, [R4,#0x10]
17F934:  STR.W           R8, [R0,#0x3C]
17F938:  MOV             R0, R4
17F93A:  POP.W           {R8}
17F93E:  POP             {R4-R7,PC}
