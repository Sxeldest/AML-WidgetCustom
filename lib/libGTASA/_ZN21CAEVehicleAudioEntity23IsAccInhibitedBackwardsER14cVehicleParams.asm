; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity23IsAccInhibitedBackwardsER14cVehicleParams
; Address            : 0x3B3968 - 0x3B3990
; =========================================================

3B3968:  VMOV.F32        S0, #5.0
3B396C:  VLDR            S2, [R1,#0x40]
3B3970:  LDRB.W          R0, [R1,#0x46]
3B3974:  MOVS            R2, #0
3B3976:  MOVS            R1, #0
3B3978:  VCMPE.F32       S2, S0
3B397C:  VMRS            APSR_nzcv, FPSCR
3B3980:  IT GT
3B3982:  MOVGT           R2, #1
3B3984:  CMP             R0, #0
3B3986:  IT EQ
3B3988:  MOVEQ           R1, #1
3B398A:  ORR.W           R0, R2, R1
3B398E:  BX              LR
