; =========================================================
; Game Engine Function: _ZN5CBike13SetModelIndexEj
; Address            : 0x560748 - 0x56077A
; =========================================================

560748:  PUSH            {R4,R6,R7,LR}
56074A:  ADD             R7, SP, #8
56074C:  MOV             R4, R0
56074E:  BLX             j__ZN8CVehicle13SetModelIndexEj; CVehicle::SetModelIndex(uint)
560752:  VMOV.I32        Q8, #0
560756:  MOVS            R0, #0
560758:  ADDW            R1, R4, #0x5C4
56075C:  STR.W           R0, [R4,#0x5D4]
560760:  STR.W           R0, [R4,#0x5D8]
560764:  LDR             R0, [R4,#0x18]
560766:  VST1.32         {D16-D17}, [R1]
56076A:  ADDW            R1, R4, #0x5B4
56076E:  VST1.32         {D16-D17}, [R1]
560772:  POP.W           {R4,R6,R7,LR}
560776:  B.W             sub_18AB14
