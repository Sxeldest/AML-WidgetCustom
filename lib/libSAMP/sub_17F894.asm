; =========================================================
; Game Engine Function: sub_17F894
; Address            : 0x17F894 - 0x17F8F0
; =========================================================

17F894:  PUSH            {R4-R7,LR}
17F896:  ADD             R7, SP, #0xC
17F898:  PUSH.W          {R8}
17F89C:  MOV             R4, R0
17F89E:  MOV.W           R0, #0x124; unsigned int
17F8A2:  BLX             j__Znwj; operator new(uint)
17F8A6:  MOV             R8, R0
17F8A8:  STRD.W          R0, R0, [R4,#8]
17F8AC:  MOV.W           R0, #0x124; unsigned int
17F8B0:  BLX             j__Znwj; operator new(uint)
17F8B4:  MOVS            R6, #6
17F8B6:  MOV             R5, R8
17F8B8:  STR.W           R0, [R8,#0x120]
17F8BC:  LDR.W           R5, [R5,#0x120]
17F8C0:  MOV.W           R0, #0x124; unsigned int
17F8C4:  STR             R5, [R4,#8]
17F8C6:  BLX             j__Znwj; operator new(uint)
17F8CA:  SUBS            R6, #1
17F8CC:  STR.W           R0, [R5,#0x120]
17F8D0:  BNE             loc_17F8BC
17F8D2:  STR.W           R8, [R4,#8]
17F8D6:  MOVS            R1, #0
17F8D8:  LDR.W           R0, [R5,#0x120]
17F8DC:  STRD.W          R8, R8, [R4]
17F8E0:  STRD.W          R1, R1, [R4,#0x10]
17F8E4:  STR.W           R8, [R0,#0x120]
17F8E8:  MOV             R0, R4
17F8EA:  POP.W           {R8}
17F8EE:  POP             {R4-R7,PC}
