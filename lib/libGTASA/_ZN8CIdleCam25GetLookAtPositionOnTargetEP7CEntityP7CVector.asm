; =========================================================
; Game Engine Function: _ZN8CIdleCam25GetLookAtPositionOnTargetEP7CEntityP7CVector
; Address            : 0x3D384C - 0x3D389C
; =========================================================

3D384C:  LDR             R0, [R1,#0x14]
3D384E:  ADD.W           R3, R0, #0x30 ; '0'
3D3852:  CMP             R0, #0
3D3854:  IT EQ
3D3856:  ADDEQ           R3, R1, #4
3D3858:  VLDR            D16, [R3]
3D385C:  LDR             R0, [R3,#8]
3D385E:  STR             R0, [R2,#8]
3D3860:  VSTR            D16, [R2]
3D3864:  LDRB.W          R0, [R1,#0x3A]
3D3868:  AND.W           R0, R0, #7
3D386C:  CMP             R0, #3
3D386E:  IT NE
3D3870:  BXNE            LR
3D3872:  LDR.W           R0, [R1,#0x59C]
3D3876:  VMOV.F32        S0, #0.5
3D387A:  VLDR            S2, =0.1
3D387E:  CMP             R0, #5
3D3880:  IT EQ
3D3882:  VMOVEQ.F32      S0, S2
3D3886:  CMP             R0, #0x16
3D3888:  IT EQ
3D388A:  VMOVEQ.F32      S0, S2
3D388E:  VLDR            S2, [R2,#8]
3D3892:  VADD.F32        S0, S2, S0
3D3896:  VSTR            S0, [R2,#8]
3D389A:  BX              LR
