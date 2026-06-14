; =========================================================
; Game Engine Function: _ZN9CTheZones19PointLiesWithinZoneEPK7CVectorP5CZone
; Address            : 0x42D92C - 0x42D9C4
; =========================================================

42D92C:  LDRSH.W         R2, [R1,#0x10]
42D930:  VMOV            S0, R2
42D934:  VCVT.F32.S32    S2, S0
42D938:  VLDR            S0, [R0]
42D93C:  VCMPE.F32       S0, S2
42D940:  VMRS            APSR_nzcv, FPSCR
42D944:  BLT             loc_42D9C0
42D946:  LDRSH.W         R2, [R1,#0x16]
42D94A:  VMOV            S2, R2
42D94E:  VCVT.F32.S32    S2, S2
42D952:  VCMPE.F32       S0, S2
42D956:  VMRS            APSR_nzcv, FPSCR
42D95A:  BGT             loc_42D9C0
42D95C:  LDRSH.W         R2, [R1,#0x12]
42D960:  VMOV            S0, R2
42D964:  VCVT.F32.S32    S2, S0
42D968:  VLDR            S0, [R0,#4]
42D96C:  VCMPE.F32       S0, S2
42D970:  VMRS            APSR_nzcv, FPSCR
42D974:  BLT             loc_42D9C0
42D976:  LDRSH.W         R2, [R1,#0x18]
42D97A:  VMOV            S2, R2
42D97E:  VCVT.F32.S32    S2, S2
42D982:  VCMPE.F32       S0, S2
42D986:  VMRS            APSR_nzcv, FPSCR
42D98A:  BGT             loc_42D9C0
42D98C:  LDRSH.W         R2, [R1,#0x14]
42D990:  VMOV            S0, R2
42D994:  VCVT.F32.S32    S2, S0
42D998:  VLDR            S0, [R0,#8]
42D99C:  VCMPE.F32       S0, S2
42D9A0:  VMRS            APSR_nzcv, FPSCR
42D9A4:  BLT             loc_42D9C0
42D9A6:  LDRSH.W         R0, [R1,#0x1A]
42D9AA:  VMOV            S2, R0
42D9AE:  VCVT.F32.S32    S2, S2
42D9B2:  VCMPE.F32       S0, S2
42D9B6:  VMRS            APSR_nzcv, FPSCR
42D9BA:  ITT LE
42D9BC:  MOVLE           R0, #1
42D9BE:  BXLE            LR
42D9C0:  MOVS            R0, #0
42D9C2:  BX              LR
