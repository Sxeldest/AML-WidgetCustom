; =========================================================
; Game Engine Function: _ZNK21CPedGroupIntelligence16GetTaskSecondaryEP4CPed
; Address            : 0x4B37E4 - 0x4B3854
; =========================================================

4B37E4:  LDR.W           R2, [R0,#0xAC]
4B37E8:  CMP             R2, R1
4B37EA:  BEQ             loc_4B382C
4B37EC:  LDR.W           R2, [R0,#0xC0]
4B37F0:  CMP             R2, R1
4B37F2:  BEQ             loc_4B3830
4B37F4:  LDR.W           R2, [R0,#0xD4]
4B37F8:  CMP             R2, R1
4B37FA:  BEQ             loc_4B3834
4B37FC:  LDR.W           R2, [R0,#0xE8]
4B3800:  CMP             R2, R1
4B3802:  BEQ             loc_4B3838
4B3804:  LDR.W           R2, [R0,#0xFC]
4B3808:  CMP             R2, R1
4B380A:  BEQ             loc_4B383C
4B380C:  LDR.W           R2, [R0,#0x110]
4B3810:  CMP             R2, R1
4B3812:  BEQ             loc_4B3840
4B3814:  LDR.W           R2, [R0,#0x124]
4B3818:  CMP             R2, R1
4B381A:  BEQ             loc_4B3844
4B381C:  LDR.W           R2, [R0,#0x138]
4B3820:  CMP             R2, R1
4B3822:  ITT NE
4B3824:  MOVNE           R0, #0
4B3826:  BXNE            LR
4B3828:  MOVS            R1, #7
4B382A:  B               loc_4B3846
4B382C:  MOVS            R1, #0
4B382E:  B               loc_4B3846
4B3830:  MOVS            R1, #1
4B3832:  B               loc_4B3846
4B3834:  MOVS            R1, #2
4B3836:  B               loc_4B3846
4B3838:  MOVS            R1, #3
4B383A:  B               loc_4B3846
4B383C:  MOVS            R1, #4
4B383E:  B               loc_4B3846
4B3840:  MOVS            R1, #5
4B3842:  B               loc_4B3846
4B3844:  MOVS            R1, #6
4B3846:  ADD.W           R1, R1, R1,LSL#2
4B384A:  ADD.W           R0, R0, R1,LSL#2
4B384E:  LDR.W           R0, [R0,#0xB0]
4B3852:  BX              LR
