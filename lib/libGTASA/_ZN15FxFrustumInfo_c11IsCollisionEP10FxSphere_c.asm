; =========================================================
; Game Engine Function: _ZN15FxFrustumInfo_c11IsCollisionEP10FxSphere_c
; Address            : 0x36DDCE - 0x36DF22
; =========================================================

36DDCE:  VLDR            S8, [R0]
36DDD2:  VLDR            S2, [R1]
36DDD6:  VLDR            S10, [R0,#4]
36DDDA:  VLDR            S6, [R1,#4]
36DDDE:  VSUB.F32        S8, S2, S8
36DDE2:  VLDR            S12, [R0,#8]
36DDE6:  VSUB.F32        S10, S6, S10
36DDEA:  VLDR            S4, [R1,#8]
36DDEE:  VLDR            S14, [R0,#0xC]
36DDF2:  VSUB.F32        S12, S4, S12
36DDF6:  VLDR            S0, [R1,#0xC]
36DDFA:  VADD.F32        S14, S14, S0
36DDFE:  VMUL.F32        S8, S8, S8
36DE02:  VMUL.F32        S10, S10, S10
36DE06:  VMUL.F32        S12, S12, S12
36DE0A:  VADD.F32        S8, S8, S10
36DE0E:  VMUL.F32        S10, S14, S14
36DE12:  VADD.F32        S8, S8, S12
36DE16:  VCMPE.F32       S8, S10
36DE1A:  VMRS            APSR_nzcv, FPSCR
36DE1E:  BGE             loc_36DF1E
36DE20:  LDR.W           R12, [R1,#0x10]
36DE24:  AND.W           R2, R12, #3
36DE28:  ADD.W           R3, R0, R2,LSL#4
36DE2C:  VLDR            S8, [R3,#0x14]
36DE30:  VLDR            S10, [R3,#0x18]
36DE34:  VMUL.F32        S8, S8, S2
36DE38:  VLDR            S12, [R3,#0x1C]
36DE3C:  VMUL.F32        S10, S10, S6
36DE40:  VLDR            S14, [R3,#0x20]
36DE44:  VMUL.F32        S12, S12, S4
36DE48:  VADD.F32        S8, S8, S10
36DE4C:  VADD.F32        S8, S8, S12
36DE50:  VSUB.F32        S8, S8, S14
36DE54:  VCMPE.F32       S8, S0
36DE58:  VMRS            APSR_nzcv, FPSCR
36DE5C:  BGT             loc_36DF1C
36DE5E:  ADD.W           R2, R12, #1
36DE62:  AND.W           R2, R2, #3
36DE66:  ADD.W           R3, R0, R2,LSL#4
36DE6A:  VLDR            S8, [R3,#0x14]
36DE6E:  VLDR            S10, [R3,#0x18]
36DE72:  VMUL.F32        S8, S8, S2
36DE76:  VLDR            S12, [R3,#0x1C]
36DE7A:  VMUL.F32        S10, S10, S6
36DE7E:  VLDR            S14, [R3,#0x20]
36DE82:  VMUL.F32        S12, S12, S4
36DE86:  VADD.F32        S8, S8, S10
36DE8A:  VADD.F32        S8, S8, S12
36DE8E:  VSUB.F32        S8, S8, S14
36DE92:  VCMPE.F32       S8, S0
36DE96:  VMRS            APSR_nzcv, FPSCR
36DE9A:  BGT             loc_36DF1C
36DE9C:  ADD.W           R2, R12, #2
36DEA0:  AND.W           R2, R2, #3
36DEA4:  ADD.W           R3, R0, R2,LSL#4
36DEA8:  VLDR            S8, [R3,#0x14]
36DEAC:  VLDR            S10, [R3,#0x18]
36DEB0:  VMUL.F32        S8, S8, S2
36DEB4:  VLDR            S12, [R3,#0x1C]
36DEB8:  VMUL.F32        S10, S10, S6
36DEBC:  VLDR            S14, [R3,#0x20]
36DEC0:  VMUL.F32        S12, S12, S4
36DEC4:  VADD.F32        S8, S8, S10
36DEC8:  VADD.F32        S8, S8, S12
36DECC:  VSUB.F32        S8, S8, S14
36DED0:  VCMPE.F32       S8, S0
36DED4:  VMRS            APSR_nzcv, FPSCR
36DED8:  BGT             loc_36DF1C
36DEDA:  ADD.W           R2, R12, #3
36DEDE:  AND.W           R2, R2, #3
36DEE2:  ADD.W           R0, R0, R2,LSL#4
36DEE6:  VLDR            S8, [R0,#0x14]
36DEEA:  VLDR            S10, [R0,#0x18]
36DEEE:  VMUL.F32        S2, S8, S2
36DEF2:  VLDR            S12, [R0,#0x1C]
36DEF6:  VMUL.F32        S6, S10, S6
36DEFA:  VLDR            S14, [R0,#0x20]
36DEFE:  VMUL.F32        S4, S12, S4
36DF02:  VADD.F32        S2, S2, S6
36DF06:  VADD.F32        S2, S2, S4
36DF0A:  VSUB.F32        S2, S2, S14
36DF0E:  VCMPE.F32       S2, S0
36DF12:  VMRS            APSR_nzcv, FPSCR
36DF16:  ITT LE
36DF18:  MOVLE           R0, #1
36DF1A:  BXLE            LR
36DF1C:  STR             R2, [R1,#0x10]
36DF1E:  MOVS            R0, #0
36DF20:  BX              LR
