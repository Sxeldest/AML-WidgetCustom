; =========================================================
; Game Engine Function: _ZN11CAutomobile20SetupDamageAfterLoadEv
; Address            : 0x55D816 - 0x55D8C4
; =========================================================

55D816:  PUSH            {R4,R6,R7,LR}
55D818:  ADD             R7, SP, #8
55D81A:  MOV             R4, R0
55D81C:  LDR.W           R0, [R4,#0x68C]
55D820:  CBZ             R0, loc_55D82C
55D822:  MOV             R0, R4
55D824:  MOVS            R1, #5
55D826:  MOVS            R2, #0
55D828:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
55D82C:  LDR.W           R0, [R4,#0x69C]
55D830:  CBZ             R0, loc_55D83C
55D832:  MOV             R0, R4
55D834:  MOVS            R1, #0
55D836:  MOVS            R2, #0
55D838:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55D83C:  LDR.W           R0, [R4,#0x690]
55D840:  CBZ             R0, loc_55D84C
55D842:  MOV             R0, R4
55D844:  MOVS            R1, #6
55D846:  MOVS            R2, #0
55D848:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
55D84C:  LDR.W           R0, [R4,#0x6A0]
55D850:  CBZ             R0, loc_55D85C
55D852:  MOV             R0, R4
55D854:  MOVS            R1, #1
55D856:  MOVS            R2, #0
55D858:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55D85C:  LDR.W           R0, [R4,#0x684]
55D860:  CBZ             R0, loc_55D86C
55D862:  MOV             R0, R4
55D864:  MOVS            R1, #2
55D866:  MOVS            R2, #0
55D868:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55D86C:  LDR.W           R0, [R4,#0x67C]
55D870:  CBZ             R0, loc_55D87C
55D872:  MOV             R0, R4
55D874:  MOVS            R1, #3
55D876:  MOVS            R2, #0
55D878:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55D87C:  LDR.W           R0, [R4,#0x688]
55D880:  CBZ             R0, loc_55D88C
55D882:  MOV             R0, R4
55D884:  MOVS            R1, #4
55D886:  MOVS            R2, #0
55D888:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55D88C:  LDR.W           R0, [R4,#0x680]
55D890:  CBZ             R0, loc_55D89C
55D892:  MOV             R0, R4
55D894:  MOVS            R1, #5
55D896:  MOVS            R2, #0
55D898:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
55D89C:  LDR.W           R0, [R4,#0x698]
55D8A0:  CBZ             R0, loc_55D8AC
55D8A2:  MOV             R0, R4
55D8A4:  MOVS            R1, #0
55D8A6:  MOVS            R2, #0
55D8A8:  BLX             j__ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
55D8AC:  LDR.W           R0, [R4,#0x694]
55D8B0:  CMP             R0, #0
55D8B2:  IT EQ
55D8B4:  POPEQ           {R4,R6,R7,PC}
55D8B6:  MOV             R0, R4
55D8B8:  MOVS            R1, #1
55D8BA:  MOVS            R2, #0
55D8BC:  POP.W           {R4,R6,R7,LR}
55D8C0:  B.W             _ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
