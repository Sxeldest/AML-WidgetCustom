; =========================================================
; Game Engine Function: _Z20MakeAngleLessThan180Rf
; Address            : 0x3D2150 - 0x3D21A0
; =========================================================

3D2150:  VLDR            S2, =3.1416
3D2154:  VLDR            S0, [R0]
3D2158:  VCMPE.F32       S0, S2
3D215C:  VMRS            APSR_nzcv, FPSCR
3D2160:  BLT             loc_3D2178
3D2162:  VLDR            S4, =-6.2832
3D2166:  VADD.F32        S0, S0, S4
3D216A:  VCMPE.F32       S0, S2
3D216E:  VMRS            APSR_nzcv, FPSCR
3D2172:  BGE             loc_3D2166
3D2174:  VSTR            S0, [R0]
3D2178:  VLDR            S2, =-3.1416
3D217C:  VCMPE.F32       S0, S2
3D2180:  VMRS            APSR_nzcv, FPSCR
3D2184:  IT GE
3D2186:  BXGE            LR
3D2188:  VLDR            S4, =6.2832
3D218C:  VADD.F32        S0, S0, S4
3D2190:  VCMPE.F32       S0, S2
3D2194:  VMRS            APSR_nzcv, FPSCR
3D2198:  BLT             loc_3D218C
3D219A:  VSTR            S0, [R0]
3D219E:  BX              LR
