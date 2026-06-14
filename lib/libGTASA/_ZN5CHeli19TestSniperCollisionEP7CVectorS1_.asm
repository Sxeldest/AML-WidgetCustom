; =========================================================
; Game Engine Function: _ZN5CHeli19TestSniperCollisionEP7CVectorS1_
; Address            : 0x573F00 - 0x5740C8
; =========================================================

573F00:  PUSH            {R4-R7,LR}
573F02:  ADD             R7, SP, #0xC
573F04:  PUSH.W          {R8-R10}
573F08:  SUB             SP, SP, #0x18
573F0A:  MOV             R4, R1
573F0C:  MOV             R5, R0
573F0E:  VLD1.32         {D16}, [R0]!
573F12:  VLD1.32         {D17}, [R1]!
573F16:  VSUB.F32        D16, D17, D16
573F1A:  VLDR            S0, [R0]
573F1E:  VLDR            S2, [R1]
573F22:  VSUB.F32        S0, S2, S0
573F26:  VMUL.F32        D1, D16, D16
573F2A:  VADD.F32        S2, S2, S3
573F2E:  VMUL.F32        S4, S0, S0
573F32:  VADD.F32        S2, S2, S4
573F36:  VMOV.F32        S4, #0.5
573F3A:  VSQRT.F32       S2, S2
573F3E:  VMUL.F32        S2, S2, S4
573F42:  VCMPE.F32       S0, S2
573F46:  VMRS            APSR_nzcv, FPSCR
573F4A:  BGE             loc_574002
573F4C:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x573F52)
573F4E:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
573F50:  LDR             R0, [R0]; CHeli::pHelis ...
573F52:  LDR             R0, [R0]; CHeli::pHelis
573F54:  CMP             R0, #0
573F56:  BEQ             loc_574006
573F58:  LDRB.W          R1, [R0,#0x46]
573F5C:  LSLS            R1, R1, #0x1D
573F5E:  BMI             loc_574006
573F60:  LDR             R1, [R0,#0x14]
573F62:  MOV             R0, #0x3FBEB852
573F6A:  ADD             R6, SP, #0x30+var_24
573F6C:  STR             R0, [SP,#0x30+var_2C]
573F6E:  MOV             R0, #0xBEDC28F6
573F76:  MOV             R2, SP
573F78:  STR             R0, [SP,#0x30+var_30]
573F7A:  MOV.W           R0, #0x3FC00000
573F7E:  STR             R0, [SP,#0x30+var_28]
573F80:  MOV             R0, R6
573F82:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
573F86:  MOV             R0, R5; this
573F88:  MOV             R1, R4; CVector *
573F8A:  MOV             R2, R6; CVector *
573F8C:  BLX             j__ZN10CCollision10DistToLineEPK7CVectorS2_S2_; CCollision::DistToLine(CVector const*,CVector const*,CVector const*)
573F90:  VLDR            S0, =0.8
573F94:  VMOV            S2, R0
573F98:  MOVS            R6, #0
573F9A:  VCMPE.F32       S2, S0
573F9E:  VMRS            APSR_nzcv, FPSCR
573FA2:  BGE             loc_574008
573FA4:  BLX             rand
573FA8:  VMOV.F32        S2, #1.0
573FAC:  TST.W           R0, #1
573FB0:  VLDR            S0, =0.0
573FB4:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x573FBA)
573FB6:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
573FB8:  LDR.W           R9, [R0]; CHeli::pHelis ...
573FBC:  IT NE
573FBE:  VMOVNE.F32      S0, S2
573FC2:  VLDR            S2, =0.1
573FC6:  VMUL.F32        S0, S0, S2
573FCA:  VLDR            S2, =-0.05
573FCE:  LDR.W           R8, [R9]; CHeli::pHelis
573FD2:  ADD.W           R1, R8, #0x8C0
573FD6:  LDR.W           R0, [R8]
573FDA:  VADD.F32        S0, S0, S2
573FDE:  VSTR            S0, [R1]
573FE2:  LDR.W           R10, [R0,#0xA8]
573FE6:  MOV.W           R0, #0xFFFFFFFF; int
573FEA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
573FEE:  MOV             R1, R0
573FF0:  MOV             R0, R8
573FF2:  MOVS            R2, #0
573FF4:  BLX             R10
573FF6:  LDR.W           R0, [R9]; CHeli::pHelis
573FFA:  STRB.W          R6, [R0,#0x9CD]
573FFE:  MOVS            R6, #1
574000:  B               loc_574008
574002:  MOVS            R6, #0
574004:  B               loc_5740BE
574006:  MOVS            R6, #0
574008:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x57400E)
57400A:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
57400C:  LDR             R0, [R0]; CHeli::pHelis ...
57400E:  LDR             R0, [R0,#(dword_A12CE0 - 0xA12CDC)]
574010:  CMP             R0, #0
574012:  BEQ             loc_5740B8
574014:  LDRB.W          R1, [R0,#0x46]
574018:  LSLS            R1, R1, #0x1D
57401A:  BMI             loc_5740B8
57401C:  LDR             R1, [R0,#0x14]
57401E:  MOV             R0, #0x3FBEB852
574026:  ADD.W           R8, SP, #0x30+var_24
57402A:  STR             R0, [SP,#0x30+var_2C]
57402C:  MOV             R0, #0xBEDC28F6
574034:  MOV             R2, SP
574036:  STR             R0, [SP,#0x30+var_30]
574038:  MOV.W           R0, #0x3FC00000
57403C:  STR             R0, [SP,#0x30+var_28]
57403E:  MOV             R0, R8
574040:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
574044:  MOV             R0, R5; this
574046:  MOV             R1, R4; CVector *
574048:  MOV             R2, R8; CVector *
57404A:  BLX             j__ZN10CCollision10DistToLineEPK7CVectorS2_S2_; CCollision::DistToLine(CVector const*,CVector const*,CVector const*)
57404E:  VLDR            S0, =0.8
574052:  VMOV            S2, R0
574056:  VCMPE.F32       S2, S0
57405A:  VMRS            APSR_nzcv, FPSCR
57405E:  BGE             loc_5740B8
574060:  BLX             rand
574064:  VMOV.F32        S2, #1.0
574068:  TST.W           R0, #1
57406C:  VLDR            S0, =0.0
574070:  LDR             R0, =(_ZN5CHeli6pHelisE_ptr - 0x574076)
574072:  ADD             R0, PC; _ZN5CHeli6pHelisE_ptr
574074:  LDR             R5, [R0]; CHeli::pHelis ...
574076:  IT NE
574078:  VMOVNE.F32      S0, S2
57407C:  VLDR            S2, =0.1
574080:  VMUL.F32        S0, S0, S2
574084:  VLDR            S2, =-0.05
574088:  LDR             R4, [R5,#(dword_A12CE0 - 0xA12CDC)]
57408A:  ADD.W           R1, R4, #0x8C0
57408E:  LDR             R0, [R4]
574090:  VADD.F32        S0, S0, S2
574094:  VSTR            S0, [R1]
574098:  LDR.W           R6, [R0,#0xA8]
57409C:  MOV.W           R0, #0xFFFFFFFF; int
5740A0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5740A4:  MOV             R1, R0
5740A6:  MOV             R0, R4
5740A8:  MOVS            R2, #0
5740AA:  MOV.W           R8, #0
5740AE:  BLX             R6
5740B0:  LDR             R0, [R5,#(dword_A12CE0 - 0xA12CDC)]
5740B2:  MOVS            R6, #1
5740B4:  STRB.W          R8, [R0,#0x9CD]
5740B8:  CMP             R6, #0
5740BA:  IT NE
5740BC:  MOVNE           R6, #1
5740BE:  MOV             R0, R6
5740C0:  ADD             SP, SP, #0x18
5740C2:  POP.W           {R8-R10}
5740C6:  POP             {R4-R7,PC}
