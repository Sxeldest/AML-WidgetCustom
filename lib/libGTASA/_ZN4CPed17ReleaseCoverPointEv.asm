; =========================================================
; Game Engine Function: _ZN4CPed17ReleaseCoverPointEv
; Address            : 0x49F7A8 - 0x49F7C6
; =========================================================

49F7A8:  PUSH            {R4,R6,R7,LR}
49F7AA:  ADD             R7, SP, #8
49F7AC:  MOV             R4, R0
49F7AE:  LDR.W           R0, [R4,#0x790]; this
49F7B2:  CMP             R0, #0
49F7B4:  IT EQ
49F7B6:  POPEQ           {R4,R6,R7,PC}
49F7B8:  MOV             R1, R4; CPed *
49F7BA:  BLX             j__ZN11CCoverPoint23ReleaseCoverPointForPedEP4CPed; CCoverPoint::ReleaseCoverPointForPed(CPed *)
49F7BE:  MOVS            R0, #0
49F7C0:  STR.W           R0, [R4,#0x790]
49F7C4:  POP             {R4,R6,R7,PC}
