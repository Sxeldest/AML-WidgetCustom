; =========================================================
; Game Engine Function: _ZN12CCivilianPed14ProcessControlEv
; Address            : 0x49E580 - 0x49E5C0
; =========================================================

49E580:  PUSH            {R4,R6,R7,LR}
49E582:  ADD             R7, SP, #8
49E584:  MOV             R4, R0
49E586:  LDRB.W          R0, [R4,#0x448]
49E58A:  CMP             R0, #3
49E58C:  BEQ             locret_49E5A4
49E58E:  MOV             R0, R4; this
49E590:  BLX             j__ZN4CPed14ProcessControlEv; CPed::ProcessControl(void)
49E594:  LDRB            R0, [R4,#0x1C]
49E596:  LSLS            R0, R0, #0x19
49E598:  IT MI
49E59A:  POPMI           {R4,R6,R7,PC}
49E59C:  LDR.W           R0, [R4,#0x44C]
49E5A0:  CMP             R0, #0x37 ; '7'
49E5A2:  BNE             loc_49E5A6
49E5A4:  POP             {R4,R6,R7,PC}
49E5A6:  LDRSB.W         R0, [R4,#0x71C]
49E5AA:  MOV             R1, R4; CPed *
49E5AC:  RSB.W           R0, R0, R0,LSL#3
49E5B0:  ADD.W           R0, R4, R0,LSL#2
49E5B4:  ADDW            R0, R0, #0x5A4; this
49E5B8:  POP.W           {R4,R6,R7,LR}
49E5BC:  B.W             sub_18FD4C
