; =========================================================
; Game Engine Function: _ZN13CMonsterTruck16ExtendSuspensionEv
; Address            : 0x574AEC - 0x574C2A
; =========================================================

574AEC:  LDR             R1, =(fWheelExtensionRate_ptr - 0x574AF8)
574AEE:  ADDW            R3, R0, #0x9AC
574AF2:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x574AFE)
574AF4:  ADD             R1, PC; fWheelExtensionRate_ptr
574AF6:  VLDR            S0, [R3]
574AFA:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
574AFC:  LDR             R1, [R1]; fWheelExtensionRate
574AFE:  VLDR            S2, [R1]
574B02:  LDR             R1, [R2]; CTimer::ms_fTimeStep ...
574B04:  ADDW            R2, R0, #0x89C
574B08:  VMUL.F32        S0, S2, S0
574B0C:  VLDR            S2, [R1]
574B10:  ADDW            R1, R0, #0x84C
574B14:  VMUL.F32        S0, S0, S2
574B18:  VLDR            S2, [R1]
574B1C:  VSUB.F32        S4, S2, S0
574B20:  VLDR            S2, [R2]
574B24:  VCMPE.F32       S4, S2
574B28:  VSTR            S4, [R1]
574B2C:  VMRS            APSR_nzcv, FPSCR
574B30:  BGE             loc_574B38
574B32:  VSTR            S2, [R1]
574B36:  B               loc_574B4E
574B38:  ADDW            R2, R0, #0x88C
574B3C:  VLDR            S2, [R2]
574B40:  VCMPE.F32       S4, S2
574B44:  VMRS            APSR_nzcv, FPSCR
574B48:  IT GT
574B4A:  VSTRGT          S2, [R1]
574B4E:  ADD.W           R1, R0, #0x850
574B52:  ADD.W           R2, R0, #0x8A0
574B56:  VLDR            S2, [R1]
574B5A:  VSUB.F32        S4, S2, S0
574B5E:  VLDR            S2, [R2]
574B62:  MOV.W           R2, #0x3F800000
574B66:  STR.W           R2, [R0,#0x7E8]
574B6A:  VCMPE.F32       S4, S2
574B6E:  VSTR            S4, [R1]
574B72:  VMRS            APSR_nzcv, FPSCR
574B76:  BGE             loc_574B7E
574B78:  VSTR            S2, [R1]
574B7C:  B               loc_574B94
574B7E:  ADD.W           R2, R0, #0x890
574B82:  VLDR            S2, [R2]
574B86:  VCMPE.F32       S4, S2
574B8A:  VMRS            APSR_nzcv, FPSCR
574B8E:  IT GT
574B90:  VSTRGT          S2, [R1]
574B94:  ADDW            R1, R0, #0x854
574B98:  ADDW            R2, R0, #0x8A4
574B9C:  VLDR            S2, [R1]
574BA0:  VSUB.F32        S4, S2, S0
574BA4:  VLDR            S2, [R2]
574BA8:  MOV.W           R2, #0x3F800000
574BAC:  STR.W           R2, [R0,#0x7EC]
574BB0:  VCMPE.F32       S4, S2
574BB4:  VSTR            S4, [R1]
574BB8:  VMRS            APSR_nzcv, FPSCR
574BBC:  BGE             loc_574BC4
574BBE:  VSTR            S2, [R1]
574BC2:  B               loc_574BDA
574BC4:  ADDW            R2, R0, #0x894
574BC8:  VLDR            S2, [R2]
574BCC:  VCMPE.F32       S4, S2
574BD0:  VMRS            APSR_nzcv, FPSCR
574BD4:  IT GT
574BD6:  VSTRGT          S2, [R1]
574BDA:  ADDW            R1, R0, #0x858
574BDE:  ADDW            R2, R0, #0x8A8
574BE2:  VLDR            S2, [R1]
574BE6:  VSUB.F32        S2, S2, S0
574BEA:  VLDR            S0, [R2]
574BEE:  MOV.W           R2, #0x3F800000
574BF2:  STR.W           R2, [R0,#0x7F0]
574BF6:  VCMPE.F32       S2, S0
574BFA:  VSTR            S2, [R1]
574BFE:  VMRS            APSR_nzcv, FPSCR
574C02:  BGE             loc_574C0A
574C04:  VSTR            S0, [R1]
574C08:  B               loc_574C20
574C0A:  ADDW            R2, R0, #0x898
574C0E:  VLDR            S0, [R2]
574C12:  VCMPE.F32       S2, S0
574C16:  VMRS            APSR_nzcv, FPSCR
574C1A:  IT GT
574C1C:  VSTRGT          S0, [R1]
574C20:  MOV.W           R1, #0x3F800000
574C24:  STR.W           R1, [R0,#0x7F4]
574C28:  BX              LR
