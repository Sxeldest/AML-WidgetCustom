; =========================================================
; Game Engine Function: resampling_factor
; Address            : 0x18E7D4 - 0x18E816
; =========================================================

18E7D4:  CMP.W           R0, #0x3E80
18E7D8:  BLT             loc_18E7F8
18E7DA:  BEQ             loc_18E812
18E7DC:  MOVW            R1, #0xBB80
18E7E0:  CMP             R0, R1
18E7E2:  ITT EQ
18E7E4:  MOVEQ           R0, #1
18E7E6:  BXEQ            LR
18E7E8:  MOVW            R1, #0x5DC0
18E7EC:  CMP             R0, R1
18E7EE:  ITT EQ
18E7F0:  MOVEQ           R0, #2
18E7F2:  BXEQ            LR
18E7F4:  MOVS            R0, #0
18E7F6:  BX              LR
18E7F8:  CMP.W           R0, #0x1F40
18E7FC:  ITT EQ
18E7FE:  MOVEQ           R0, #6
18E800:  BXEQ            LR
18E802:  MOVW            R1, #0x2EE0
18E806:  CMP             R0, R1
18E808:  ITT EQ
18E80A:  MOVEQ           R0, #4
18E80C:  BXEQ            LR
18E80E:  MOVS            R0, #0
18E810:  BX              LR
18E812:  MOVS            R0, #3
18E814:  BX              LR
