; =========================================================
; Game Engine Function: _ZN23CTaskComplexTrackEntity18CreateFirstSubTaskEP4CPed
; Address            : 0x517F58 - 0x517F98
; =========================================================

517F58:  VLDR            S0, [R0,#0x3C]
517F5C:  VCMPE.F32       S0, #0.0
517F60:  VMRS            APSR_nzcv, FPSCR
517F64:  BGE             loc_517F92
517F66:  LDR.W           R2, [R1,#0x450]
517F6A:  CMP             R2, #1
517F6C:  BEQ             loc_517F78
517F6E:  CMP             R2, #4
517F70:  BNE             loc_517F7E
517F72:  VMOV.F32        S0, #1.0
517F76:  B               loc_517F8E
517F78:  VLDR            S0, =0.0
517F7C:  B               loc_517F8E
517F7E:  VMOV.F32        S2, #2.0
517F82:  CMP             R2, #6
517F84:  VMOV.F32        S0, #3.0
517F88:  IT EQ
517F8A:  VMOVEQ.F32      S0, S2
517F8E:  VSTR            S0, [R0,#0x3C]
517F92:  LDR             R2, [R0]
517F94:  LDR             R2, [R2,#0x28]
517F96:  BX              R2
