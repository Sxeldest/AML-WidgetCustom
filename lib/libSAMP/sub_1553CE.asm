; =========================================================
; Game Engine Function: sub_1553CE
; Address            : 0x1553CE - 0x155408
; =========================================================

1553CE:  PUSH            {R4-R7,LR}
1553D0:  ADD             R7, SP, #0xC
1553D2:  PUSH.W          {R8,R9,R11}
1553D6:  MOV             R5, R1
1553D8:  MOV             R9, R0
1553DA:  MOVS            R0, #0x58 ; 'X'; unsigned int
1553DC:  BLX             j__Znwj; operator new(uint)
1553E0:  MOV             R6, R0
1553E2:  MOV             R1, R9
1553E4:  BL              sub_152400
1553E8:  MOV             R4, R9
1553EA:  LDR.W           R1, [R4,#0x58]!
1553EE:  STR             R6, [R4]
1553F0:  CBZ             R1, loc_1553FA
1553F2:  MOV             R0, R4
1553F4:  BL              sub_1561D2
1553F8:  LDR             R6, [R4]
1553FA:  MOV             R0, R6
1553FC:  MOV             R1, R5
1553FE:  BL              sub_15246E
155402:  POP.W           {R8,R9,R11}
155406:  POP             {R4-R7,PC}
