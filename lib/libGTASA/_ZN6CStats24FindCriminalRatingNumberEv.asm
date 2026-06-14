; =========================================================
; Game Engine Function: _ZN6CStats24FindCriminalRatingNumberEv
; Address            : 0x416A68 - 0x416C02
; =========================================================

416A68:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x416A78)
416A6A:  VMOV.F32        S8, #3.0
416A6E:  VMOV.F32        S12, #30.0
416A72:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x416A7C)
416A74:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
416A76:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x416A84)
416A78:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
416A7A:  MOV.W           R3, #0x194
416A7E:  LDR             R0, [R0]; CStats::StatTypesInt ...
416A80:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
416A82:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
416A84:  LDR             R2, [R2]; CWorld::Players ...
416A86:  VLDR            S2, [R0,#0x34]
416A8A:  VLDR            S0, [R0,#0x10]
416A8E:  VLDR            S4, [R0,#0x3C]
416A92:  VLDR            S6, [R0,#0x7C]
416A96:  VCVT.F32.S32    S2, S2
416A9A:  VLDR            S10, [R0,#0xE4]
416A9E:  VCVT.F32.S32    S4, S4
416AA2:  VCVT.F32.S32    S10, S10
416AA6:  VCVT.F32.S32    S0, S0
416AAA:  VMUL.F32        S2, S2, S8
416AAE:  VMUL.F32        S4, S4, S8
416AB2:  VMOV.F32        S8, #10.0
416AB6:  VMUL.F32        S0, S0, S12
416ABA:  VSUB.F32        S2, S10, S2
416ABE:  VSUB.F32        S2, S2, S4
416AC2:  VCVT.F32.S32    S4, S6
416AC6:  VLDR            S6, [R0,#0x80]
416ACA:  VADD.F32        S0, S2, S0
416ACE:  VLDR            S2, [R0,#0x98]
416AD2:  VCVT.F32.S32    S2, S2
416AD6:  VCVT.F32.S32    S6, S6
416ADA:  VADD.F32        S0, S0, S4
416ADE:  VLDR            S4, [R0,#0x9C]
416AE2:  VCVT.F32.S32    S4, S4
416AE6:  LDR             R1, [R1]; CWorld::PlayerInFocus
416AE8:  VMUL.F32        S2, S2, S8
416AEC:  SMLABB.W        R1, R1, R3, R2
416AF0:  MOV             R2, #0x68DB8BAD
416AF8:  VADD.F32        S0, S0, S6
416AFC:  VMUL.F32        S4, S4, S8
416B00:  LDR.W           R1, [R1,#0xB8]
416B04:  SMMUL.W         R1, R1, R2
416B08:  VADD.F32        S0, S0, S2
416B0C:  VLDR            S2, [R0,#0x84]
416B10:  VCVT.F32.S32    S2, S2
416B14:  ASRS            R2, R1, #0xB
416B16:  ADD.W           R1, R2, R1,LSR#31
416B1A:  VADD.F32        S0, S0, S4
416B1E:  VMOV            S4, R1
416B22:  LDR             R1, =(_ZN6CCheat19m_bHasPlayerCheatedE_ptr - 0x416B2C)
416B24:  VCVT.F32.S32    S4, S4
416B28:  ADD             R1, PC; _ZN6CCheat19m_bHasPlayerCheatedE_ptr
416B2A:  LDR             R2, [R1]; CCheat::m_bHasPlayerCheated ...
416B2C:  LDR             R1, [R0,#(dword_964970 - 0x96492C)]
416B2E:  VADD.F32        S0, S0, S2
416B32:  LDRB            R2, [R2]; CCheat::m_bHasPlayerCheated
416B34:  CMP             R2, #0
416B36:  VADD.F32        S0, S0, S4
416B3A:  VCVT.S32.F32    S0, S0
416B3E:  VMOV            R0, S0
416B42:  BNE             loc_416B50
416B44:  CMP             R1, #1
416B46:  BGE             loc_416B50
416B48:  CMP             R0, #0
416B4A:  IT LE
416B4C:  MOVLE           R0, #0
416B4E:  B               loc_416B7E
416B50:  VMOV            S4, R1
416B54:  MOVW            R0, #0xD8F0
416B58:  VMOV.F32        S2, #-10.0
416B5C:  MOVT            R0, #0xFFFF
416B60:  VCVT.F32.S32    S4, S4
416B64:  VCVT.F32.S32    S0, S0
416B68:  VMUL.F32        S2, S4, S2
416B6C:  VADD.F32        S0, S0, S2
416B70:  VCVT.S32.F32    S0, S0
416B74:  VMOV            R1, S0
416B78:  CMP             R1, R0
416B7A:  IT GT
416B7C:  MOVGT           R0, R1
416B7E:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x416B84)
416B80:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
416B82:  LDR             R1, [R1]; CStats::StatTypesInt ...
416B84:  LDR             R1, [R1,#(dword_964944 - 0x96492C)]
416B86:  CMP             R1, #0x65 ; 'e'
416B88:  BLT             loc_416BC0
416B8A:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x416B98)
416B8C:  VMOV            S2, R1
416B90:  VMOV            S4, R0
416B94:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
416B96:  LDR             R2, [R2]; CStats::StatTypesInt ...
416B98:  VLDR            S0, [R2,#0x20]
416B9C:  VCVT.F32.S32    S2, S2
416BA0:  VCVT.F32.S32    S0, S0
416BA4:  VCVT.F32.S32    S4, S4
416BA8:  VDIV.F32        S0, S0, S2
416BAC:  VLDR            S2, =500.0
416BB0:  VMUL.F32        S0, S0, S2
416BB4:  VADD.F32        S0, S0, S4
416BB8:  VCVT.S32.F32    S0, S0
416BBC:  VMOV            R0, S0
416BC0:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416BC6)
416BC2:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
416BC4:  LDR             R1, [R1]; CStats::StatTypesFloat ...
416BC6:  VLDR            S0, [R1,#4]
416BCA:  VCMP.F32        S0, #0.0
416BCE:  VMRS            APSR_nzcv, FPSCR
416BD2:  IT EQ
416BD4:  BXEQ            LR
416BD6:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416BE0)
416BD8:  VMOV            S4, R0
416BDC:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
416BDE:  LDR             R1, [R1]; CStats::StatTypesFloat ...
416BE0:  VLDR            S2, [R1]
416BE4:  VCVT.F32.S32    S4, S4
416BE8:  VDIV.F32        S0, S2, S0
416BEC:  VLDR            S2, =1000.0
416BF0:  VMUL.F32        S0, S0, S2
416BF4:  VADD.F32        S0, S0, S4
416BF8:  VCVT.S32.F32    S0, S0
416BFC:  VMOV            R0, S0
416C00:  BX              LR
