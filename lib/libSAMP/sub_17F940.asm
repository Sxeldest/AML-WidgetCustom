; =========================================================
; Game Engine Function: sub_17F940
; Address            : 0x17F940 - 0x17F990
; =========================================================

17F940:  PUSH            {R4-R7,LR}
17F942:  ADD             R7, SP, #0xC
17F944:  PUSH.W          {R8}
17F948:  MOV             R4, R0
17F94A:  MOVS            R0, #0xC; unsigned int
17F94C:  BLX             j__Znwj; operator new(uint)
17F950:  MOV             R8, R0
17F952:  STRD.W          R0, R0, [R4,#8]
17F956:  MOVS            R0, #0xC; unsigned int
17F958:  BLX             j__Znwj; operator new(uint)
17F95C:  MOVS            R6, #6
17F95E:  MOV             R5, R8
17F960:  STR.W           R0, [R8,#8]
17F964:  LDR             R5, [R5,#8]
17F966:  MOVS            R0, #0xC; unsigned int
17F968:  STR             R5, [R4,#8]
17F96A:  BLX             j__Znwj; operator new(uint)
17F96E:  SUBS            R6, #1
17F970:  STR             R0, [R5,#8]
17F972:  BNE             loc_17F964
17F974:  STR.W           R8, [R4,#8]
17F978:  MOVS            R1, #0
17F97A:  LDR             R0, [R5,#8]
17F97C:  STRD.W          R8, R8, [R4]
17F980:  STRD.W          R1, R1, [R4,#0x10]
17F984:  STR.W           R8, [R0,#8]
17F988:  MOV             R0, R4
17F98A:  POP.W           {R8}
17F98E:  POP             {R4-R7,PC}
