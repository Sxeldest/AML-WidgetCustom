; =========================================================
; Game Engine Function: _ZN5CBoat13SetModelIndexEj
; Address            : 0x56B190 - 0x56B1C0
; =========================================================

56B190:  PUSH            {R4,R6,R7,LR}
56B192:  ADD             R7, SP, #8
56B194:  MOV             R4, R0
56B196:  BLX             j__ZN8CVehicle13SetModelIndexEj; CVehicle::SetModelIndex(uint)
56B19A:  VMOV.I32        Q8, #0
56B19E:  ADDW            R1, R4, #0x5E4
56B1A2:  LDR             R0, [R4,#0x18]
56B1A4:  VST1.32         {D16-D17}, [R1]
56B1A8:  ADDW            R1, R4, #0x5D4
56B1AC:  VST1.32         {D16-D17}, [R1]
56B1B0:  ADDW            R1, R4, #0x5C4
56B1B4:  VST1.32         {D16-D17}, [R1]
56B1B8:  POP.W           {R4,R6,R7,LR}
56B1BC:  B.W             sub_18AB14
