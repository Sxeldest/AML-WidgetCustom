; =========================================================
; Game Engine Function: _ZNK35CEventLeaderQuitEnteringCarAsDriver15AffectsPedGroupEP9CPedGroup
; Address            : 0x37690C - 0x37692C
; =========================================================

37690C:  LDR             R0, [R1,#0x34]
37690E:  CBZ             R0, loc_376928
376910:  PUSH            {R7,LR}
376912:  MOV             R7, SP
376914:  LDR             R0, [R0,#0x10]
376916:  LDR             R1, [R0]
376918:  LDR             R1, [R1,#8]
37691A:  BLX             R1
37691C:  CMP             R0, #0x36 ; '6'
37691E:  POP.W           {R7,LR}
376922:  ITT EQ
376924:  MOVEQ           R0, #1
376926:  BXEQ            LR
376928:  MOVS            R0, #0
37692A:  BX              LR
