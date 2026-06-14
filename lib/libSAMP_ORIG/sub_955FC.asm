; =========================================================
; Game Engine Function: sub_955FC
; Address            : 0x955FC - 0x95626
; =========================================================

955FC:  LDR             R0, =(dword_1ACF68 - 0x95602)
955FE:  ADD             R0, PC; dword_1ACF68
95600:  LDR             R1, [R0]
95602:  MOVW            R0, #0x19D0
95606:  LDR             R0, [R1,R0]
95608:  CMP             R0, #0
9560A:  ITT EQ
9560C:  MOVEQ           R0, #0
9560E:  BXEQ            LR
95610:  MOVW            R2, #0x19AC
95614:  ADD             R1, R2
95616:  LDR             R1, [R1]
95618:  LDR.W           R1, [R1,#0x108]
9561C:  SUBS            R0, R0, R1
9561E:  CLZ.W           R0, R0
95622:  LSRS            R0, R0, #5
95624:  BX              LR
