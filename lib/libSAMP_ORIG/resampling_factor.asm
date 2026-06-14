; =========================================================
; Game Engine Function: resampling_factor
; Address            : 0xBB8D8 - 0xBB91A
; =========================================================

BB8D8:  CMP.W           R0, #0x3E80
BB8DC:  BLT             loc_BB8FC
BB8DE:  BEQ             loc_BB916
BB8E0:  MOVW            R1, #0xBB80
BB8E4:  CMP             R0, R1
BB8E6:  ITT EQ
BB8E8:  MOVEQ           R0, #1
BB8EA:  BXEQ            LR
BB8EC:  MOVW            R1, #0x5DC0
BB8F0:  CMP             R0, R1
BB8F2:  ITT EQ
BB8F4:  MOVEQ           R0, #2
BB8F6:  BXEQ            LR
BB8F8:  MOVS            R0, #0
BB8FA:  BX              LR
BB8FC:  CMP.W           R0, #0x1F40
BB900:  ITT EQ
BB902:  MOVEQ           R0, #6
BB904:  BXEQ            LR
BB906:  MOVW            R1, #0x2EE0
BB90A:  CMP             R0, R1
BB90C:  ITT EQ
BB90E:  MOVEQ           R0, #4
BB910:  BXEQ            LR
BB912:  MOVS            R0, #0
BB914:  BX              LR
BB916:  MOVS            R0, #3
BB918:  BX              LR
