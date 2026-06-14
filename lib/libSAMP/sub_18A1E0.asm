; =========================================================
; Game Engine Function: sub_18A1E0
; Address            : 0x18A1E0 - 0x18A206
; =========================================================

18A1E0:  PUSH            {R4,R5,R7,LR}
18A1E2:  ADD             R7, SP, #8
18A1E4:  LDR             R2, [R0,#8]
18A1E6:  CMP             R2, R1
18A1E8:  IT CS
18A1EA:  POPCS           {R4,R5,R7,PC}
18A1EC:  ADDS            R4, R0, #4
18A1EE:  SUBS            R5, R1, R2
18A1F0:  MOV.W           R0, #0x154; unsigned int
18A1F4:  BLX             j__Znwj; operator new(uint)
18A1F8:  MOV             R1, R0
18A1FA:  MOV             R0, R4
18A1FC:  BL              sub_18A206
18A200:  SUBS            R5, #1
18A202:  BNE             loc_18A1F0
18A204:  POP             {R4,R5,R7,PC}
