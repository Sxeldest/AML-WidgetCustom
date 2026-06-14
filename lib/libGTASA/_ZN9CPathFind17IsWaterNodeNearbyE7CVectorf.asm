; =========================================================
; Game Engine Function: _ZN9CPathFind17IsWaterNodeNearbyE7CVectorf
; Address            : 0x31A080 - 0x31A114
; =========================================================

31A080:  PUSH            {R4,R5,R7,LR}
31A082:  ADD             R7, SP, #8
31A084:  VMOV.F32        S6, #0.125
31A088:  VLDR            S0, [R7,#arg_0]
31A08C:  VMOV            S4, R1
31A090:  MOVS            R1, #0
31A092:  VMOV            S2, R2
31A096:  MOVW            R12, #0x1104
31A09A:  MOV             LR, R1
31A09C:  ADD.W           R2, R0, LR,LSL#2
31A0A0:  LDR.W           R1, [R2,#0x804]
31A0A4:  CBZ             R1, loc_31A102
31A0A6:  LDR.W           R3, [R2,R12]
31A0AA:  CMP             R3, #1
31A0AC:  BLT             loc_31A102
31A0AE:  ADDS            R1, #0x18
31A0B0:  MOVS            R2, #0
31A0B2:  LDRH            R4, [R1]
31A0B4:  LSLS            R4, R4, #0x18
31A0B6:  BPL             loc_31A0FA
31A0B8:  LDRSH.W         R4, [R1,#-0x10]
31A0BC:  LDRSH.W         R5, [R1,#-0xE]
31A0C0:  VMOV            S10, R4
31A0C4:  VMOV            S8, R5
31A0C8:  VCVT.F32.S32    S8, S8
31A0CC:  VCVT.F32.S32    S10, S10
31A0D0:  VMUL.F32        S8, S8, S6
31A0D4:  VMUL.F32        S10, S10, S6
31A0D8:  VSUB.F32        S8, S2, S8
31A0DC:  VSUB.F32        S10, S4, S10
31A0E0:  VMUL.F32        S8, S8, S8
31A0E4:  VMUL.F32        S10, S10, S10
31A0E8:  VADD.F32        S8, S10, S8
31A0EC:  VSQRT.F32       S8, S8
31A0F0:  VCMPE.F32       S8, S0
31A0F4:  VMRS            APSR_nzcv, FPSCR
31A0F8:  BLT             loc_31A110
31A0FA:  ADDS            R2, #1
31A0FC:  ADDS            R1, #0x1C
31A0FE:  CMP             R2, R3
31A100:  BLT             loc_31A0B2
31A102:  ADD.W           R1, LR, #1
31A106:  CMP.W           LR, #0x3F ; '?'
31A10A:  BLT             loc_31A09A
31A10C:  MOVS            R0, #0
31A10E:  POP             {R4,R5,R7,PC}
31A110:  MOVS            R0, #1
31A112:  POP             {R4,R5,R7,PC}
