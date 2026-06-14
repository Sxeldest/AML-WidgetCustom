; =========================================================
; Game Engine Function: sub_17E5AA
; Address            : 0x17E5AA - 0x17E5CC
; =========================================================

17E5AA:  MOV             R2, R0
17E5AC:  LDR             R0, [R1]
17E5AE:  LDR             R3, [R2]
17E5B0:  CMP             R3, R0
17E5B2:  ITT CC
17E5B4:  MOVCC           R0, #1
17E5B6:  BXCC            LR
17E5B8:  MOV.W           R0, #0
17E5BC:  IT NE
17E5BE:  BXNE            LR
17E5C0:  LDRH            R1, [R1,#4]
17E5C2:  LDRH            R2, [R2,#4]
17E5C4:  CMP             R2, R1
17E5C6:  IT CC
17E5C8:  MOVCC           R0, #1
17E5CA:  BX              LR
