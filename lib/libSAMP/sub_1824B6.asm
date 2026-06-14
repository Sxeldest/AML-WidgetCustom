; =========================================================
; Game Engine Function: sub_1824B6
; Address            : 0x1824B6 - 0x1824FC
; =========================================================

1824B6:  PUSH            {R4-R7,LR}
1824B8:  ADD             R7, SP, #0xC
1824BA:  PUSH.W          {R11}
1824BE:  MOV             R5, R0
1824C0:  LDRD.W          R4, R0, [R0,#4]
1824C4:  LDR.W           R1, [R4,#0x120]
1824C8:  CMP             R1, R0
1824CA:  BEQ             loc_1824D6
1824CC:  LDR.W           R0, [R4,#0x120]
1824D0:  LDRB.W          R0, [R0,#0x11C]
1824D4:  CBZ             R0, loc_1824EE
1824D6:  MOV.W           R0, #0x124; unsigned int
1824DA:  LDR.W           R6, [R4,#0x120]
1824DE:  BLX             j__Znwj; operator new(uint)
1824E2:  STR.W           R0, [R4,#0x120]
1824E6:  LDR.W           R0, [R4,#0x120]
1824EA:  STR.W           R6, [R0,#0x120]
1824EE:  LDR.W           R0, [R4,#0x120]
1824F2:  STR             R0, [R5,#4]
1824F4:  MOV             R0, R4
1824F6:  POP.W           {R11}
1824FA:  POP             {R4-R7,PC}
