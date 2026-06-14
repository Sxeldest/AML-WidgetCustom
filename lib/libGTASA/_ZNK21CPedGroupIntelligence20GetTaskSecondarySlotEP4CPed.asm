; =========================================================
; Game Engine Function: _ZNK21CPedGroupIntelligence20GetTaskSecondarySlotEP4CPed
; Address            : 0x4B3854 - 0x4B38C6
; =========================================================

4B3854:  LDR.W           R2, [R0,#0xAC]
4B3858:  CMP             R2, R1
4B385A:  BEQ             loc_4B389E
4B385C:  LDR.W           R2, [R0,#0xC0]
4B3860:  CMP             R2, R1
4B3862:  BEQ             loc_4B38A2
4B3864:  LDR.W           R2, [R0,#0xD4]
4B3868:  CMP             R2, R1
4B386A:  BEQ             loc_4B38A6
4B386C:  LDR.W           R2, [R0,#0xE8]
4B3870:  CMP             R2, R1
4B3872:  BEQ             loc_4B38AA
4B3874:  LDR.W           R2, [R0,#0xFC]
4B3878:  CMP             R2, R1
4B387A:  BEQ             loc_4B38AE
4B387C:  LDR.W           R2, [R0,#0x110]
4B3880:  CMP             R2, R1
4B3882:  BEQ             loc_4B38B2
4B3884:  LDR.W           R2, [R0,#0x124]
4B3888:  CMP             R2, R1
4B388A:  BEQ             loc_4B38B6
4B388C:  LDR.W           R2, [R0,#0x138]
4B3890:  CMP             R2, R1
4B3892:  ITT NE
4B3894:  MOVNE.W         R0, #0xFFFFFFFF
4B3898:  BXNE            LR
4B389A:  MOVS            R1, #7
4B389C:  B               loc_4B38B8
4B389E:  MOVS            R1, #0
4B38A0:  B               loc_4B38B8
4B38A2:  MOVS            R1, #1
4B38A4:  B               loc_4B38B8
4B38A6:  MOVS            R1, #2
4B38A8:  B               loc_4B38B8
4B38AA:  MOVS            R1, #3
4B38AC:  B               loc_4B38B8
4B38AE:  MOVS            R1, #4
4B38B0:  B               loc_4B38B8
4B38B2:  MOVS            R1, #5
4B38B4:  B               loc_4B38B8
4B38B6:  MOVS            R1, #6
4B38B8:  ADD.W           R1, R1, R1,LSL#2
4B38BC:  ADD.W           R0, R0, R1,LSL#2
4B38C0:  LDR.W           R0, [R0,#0xB4]
4B38C4:  BX              LR
