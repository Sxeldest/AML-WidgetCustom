; =========================================================
; Game Engine Function: sub_17E686
; Address            : 0x17E686 - 0x17E6EE
; =========================================================

17E686:  PUSH            {R4-R7,LR}
17E688:  ADD             R7, SP, #0xC
17E68A:  PUSH.W          {R8-R10}
17E68E:  LDRD.W          R6, R4, [R0]
17E692:  MOV             R9, R3
17E694:  MOV             R8, R2
17E696:  MOV             R5, R1
17E698:  MOV             R10, R0
17E69A:  CBZ             R4, loc_17E6B0
17E69C:  MOVS            R0, #0
17E69E:  LDR.W           R1, [R6,R0,LSL#2]
17E6A2:  CBZ             R1, loc_17E6AA
17E6A4:  LDR             R1, [R1]
17E6A6:  CMP             R1, R5
17E6A8:  BEQ             loc_17E6E2
17E6AA:  ADDS            R0, #1
17E6AC:  CMP             R4, R0
17E6AE:  BNE             loc_17E69E
17E6B0:  MOVS            R0, #0xC; unsigned int
17E6B2:  BLX             j__Znwj; operator new(uint)
17E6B6:  MOV             R1, R0
17E6B8:  STRB.W          R9, [R0,#8]
17E6BC:  LDR             R0, [R5]
17E6BE:  STRD.W          R0, R8, [R1]
17E6C2:  CBZ             R4, loc_17E6D0
17E6C4:  LDR             R0, [R6]
17E6C6:  CBZ             R0, loc_17E6DE
17E6C8:  SUBS            R4, #1
17E6CA:  ADD.W           R6, R6, #4
17E6CE:  BNE             loc_17E6C4
17E6D0:  MOV             R0, R10
17E6D2:  POP.W           {R8-R10}
17E6D6:  POP.W           {R4-R7,LR}
17E6DA:  B.W             sub_17E6EE
17E6DE:  STR             R1, [R6]
17E6E0:  B               loc_17E6E8
17E6E2:  UXTB            R0, R0
17E6E4:  CMP             R0, #0xFF
17E6E6:  BEQ             loc_17E6B0
17E6E8:  POP.W           {R8-R10}
17E6EC:  POP             {R4-R7,PC}
