; =========================================================
; Game Engine Function: _ZN6CTrain13SetModelIndexEj
; Address            : 0x57C758 - 0x57C796
; =========================================================

57C758:  PUSH            {R4,R6,R7,LR}
57C75A:  ADD             R7, SP, #8
57C75C:  MOV             R4, R0
57C75E:  BLX             j__ZN8CVehicle13SetModelIndexEj; CVehicle::SetModelIndex(uint)
57C762:  VMOV.I32        Q8, #0
57C766:  MOVS            R0, #0
57C768:  ADDW            R1, R4, #0x6AC
57C76C:  STR.W           R0, [R4,#0x6BC]
57C770:  LDR             R0, [R4,#0x18]
57C772:  VST1.32         {D16-D17}, [R1]
57C776:  ADDW            R1, R4, #0x69C
57C77A:  VST1.32         {D16-D17}, [R1]
57C77E:  ADDW            R1, R4, #0x68C
57C782:  VST1.32         {D16-D17}, [R1]
57C786:  ADDW            R1, R4, #0x67C
57C78A:  VST1.32         {D16-D17}, [R1]
57C78E:  POP.W           {R4,R6,R7,LR}
57C792:  B.W             sub_18AB14
