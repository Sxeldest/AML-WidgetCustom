; =========================================================
; Game Engine Function: _ZN7CWeapon35EvaluateTargetForHeatSeekingMissileEP7CEntityR7CVectorS3_fbS1_
; Address            : 0x5E2FD8 - 0x5E30FC
; =========================================================

5E2FD8:  PUSH            {R4,R5,R7,LR}
5E2FDA:  ADD             R7, SP, #8
5E2FDC:  VPUSH           {D8}
5E2FE0:  SUB             SP, SP, #0x18
5E2FE2:  MOV             R4, R0
5E2FE4:  MOV             R5, R3
5E2FE6:  LDR             R3, [R4,#0x14]
5E2FE8:  VLDR            S0, [R1]
5E2FEC:  ADD.W           R0, R3, #0x30 ; '0'
5E2FF0:  CMP             R3, #0
5E2FF2:  VLDR            S2, [R1,#4]
5E2FF6:  ADD             R3, SP, #0x28+var_1C; CVector *
5E2FF8:  VLDR            S4, [R1,#8]
5E2FFC:  IT EQ
5E2FFE:  ADDEQ           R0, R4, #4
5E3000:  VLDR            S6, [R0]
5E3004:  VLDR            S8, [R0,#4]
5E3008:  VSUB.F32        S6, S6, S0
5E300C:  VLDR            S10, [R0,#8]
5E3010:  VSUB.F32        S8, S8, S2
5E3014:  VLDR            S12, [R2]
5E3018:  VSUB.F32        S10, S10, S4
5E301C:  VLDR            S14, [R2,#4]
5E3020:  VLDR            S1, [R2,#8]
5E3024:  MOV             R2, SP; CVector *
5E3026:  VMUL.F32        S6, S6, S6
5E302A:  VMUL.F32        S8, S8, S8
5E302E:  VMUL.F32        S10, S10, S10
5E3032:  VADD.F32        S6, S6, S8
5E3036:  VLDR            S8, =250.0
5E303A:  VMUL.F32        S14, S14, S8
5E303E:  VADD.F32        S6, S6, S10
5E3042:  VMUL.F32        S10, S12, S8
5E3046:  VMUL.F32        S8, S1, S8
5E304A:  VADD.F32        S2, S14, S2
5E304E:  VSQRT.F32       S16, S6
5E3052:  VADD.F32        S0, S10, S0
5E3056:  VSTR            S2, [SP,#0x28+var_18]
5E305A:  VADD.F32        S4, S8, S4
5E305E:  VSTR            S0, [SP,#0x28+var_1C]
5E3062:  VSTR            S4, [SP,#0x28+var_14]
5E3066:  VLDR            D16, [R0]
5E306A:  LDR             R0, [R0,#8]
5E306C:  STR             R0, [SP,#0x28+var_20]
5E306E:  MOV             R0, R1; this
5E3070:  MOV             R1, R3; CVector *
5E3072:  VSTR            D16, [SP,#0x28+var_28]
5E3076:  BLX.W           j__ZN10CCollision10DistToLineEPK7CVectorS2_S2_; CCollision::DistToLine(CVector const*,CVector const*,CVector const*)
5E307A:  VMOV            S0, R0
5E307E:  VMOV            S2, R5
5E3082:  VMUL.F32        S2, S0, S2
5E3086:  VCMPE.F32       S2, S16
5E308A:  VMRS            APSR_nzcv, FPSCR
5E308E:  BGE             loc_5E30EC
5E3090:  VSQRT.F32       S2, S16
5E3094:  LDRD.W          R1, R0, [R7,#arg_0]
5E3098:  CMP             R1, #1
5E309A:  VDIV.F32        S0, S0, S16
5E309E:  VLDR            S4, =0.1
5E30A2:  VMUL.F32        S2, S2, S4
5E30A6:  VADD.F32        S0, S2, S0
5E30AA:  BNE             loc_5E30CE
5E30AC:  LDRB.W          R1, [R4,#0x3A]
5E30B0:  AND.W           R1, R1, #7
5E30B4:  CMP             R1, #2
5E30B6:  BNE             loc_5E30CE
5E30B8:  VMOV.F32        S2, #0.25
5E30BC:  LDR.W           R1, [R4,#0x5A4]
5E30C0:  SUBS            R1, #3
5E30C2:  CMP             R1, #2
5E30C4:  VMUL.F32        S2, S0, S2
5E30C8:  IT CC
5E30CA:  VMOVCC.F32      S0, S2
5E30CE:  VMOV.F32        S2, #0.25
5E30D2:  CMP             R0, R4
5E30D4:  VMOV.F32        S4, S0
5E30D8:  VMUL.F32        S2, S0, S2
5E30DC:  IT EQ
5E30DE:  VMOVEQ.F32      S4, S2
5E30E2:  CMP             R0, #0
5E30E4:  IT NE
5E30E6:  VMOVNE.F32      S0, S4
5E30EA:  B               loc_5E30F0
5E30EC:  VMOV.F32        S0, #-1.0
5E30F0:  VMOV            R0, S0
5E30F4:  ADD             SP, SP, #0x18
5E30F6:  VPOP            {D8}
5E30FA:  POP             {R4,R5,R7,PC}
