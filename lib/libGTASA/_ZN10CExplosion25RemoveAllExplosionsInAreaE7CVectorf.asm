; =========================================================
; Game Engine Function: _ZN10CExplosion25RemoveAllExplosionsInAreaE7CVectorf
; Address            : 0x5D912C - 0x5D91AA
; =========================================================

5D912C:  PUSH            {R7,LR}
5D912E:  MOV             R7, SP
5D9130:  VMOV            S0, R3
5D9134:  LDR.W           LR, =(dword_A84370 - 0x5D9146)
5D9138:  VMOV            S4, R1
5D913C:  LDR             R1, =(dword_A84370 - 0x5D914C)
5D913E:  VMUL.F32        S0, S0, S0
5D9142:  ADD             LR, PC; dword_A84370
5D9144:  VMOV            S2, R2
5D9148:  ADD             R1, PC; dword_A84370
5D914A:  VMOV            S6, R0
5D914E:  MOV.W           R12, #0
5D9152:  MOVS            R3, #0
5D9154:  B               loc_5D9160
5D9156:  ADDS            R3, #0x7C ; '|'
5D9158:  CMP.W           R3, #0x7C0
5D915C:  IT EQ
5D915E:  POPEQ           {R7,PC}
5D9160:  ADDS            R0, R1, R3
5D9162:  LDRB.W          R2, [R0,#0x28]
5D9166:  CMP             R2, #0
5D9168:  BEQ             loc_5D9156
5D916A:  ADD.W           R2, LR, R3
5D916E:  VLDR            S8, [R2,#4]
5D9172:  VLDR            S10, [R2,#8]
5D9176:  VSUB.F32        S8, S6, S8
5D917A:  VLDR            S12, [R2,#0xC]
5D917E:  VSUB.F32        S10, S4, S10
5D9182:  VSUB.F32        S12, S2, S12
5D9186:  VMUL.F32        S8, S8, S8
5D918A:  VMUL.F32        S10, S10, S10
5D918E:  VMUL.F32        S12, S12, S12
5D9192:  VADD.F32        S8, S8, S10
5D9196:  VADD.F32        S8, S8, S12
5D919A:  VCMPE.F32       S8, S0
5D919E:  VMRS            APSR_nzcv, FPSCR
5D91A2:  IT LT
5D91A4:  STRBLT.W        R12, [R0,#0x28]
5D91A8:  B               loc_5D9156
