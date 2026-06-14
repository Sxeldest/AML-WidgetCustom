; =========================================================
; Game Engine Function: _ZN10BoneNode_c5LimitEf
; Address            : 0x4D1FD8 - 0x4D21F0
; =========================================================

4D1FD8:  PUSH            {R4-R7,LR}
4D1FDA:  ADD             R7, SP, #0xC
4D1FDC:  PUSH.W          {R8,R9,R11}
4D1FE0:  VPUSH           {D8-D12}
4D1FE4:  SUB             SP, SP, #0x10
4D1FE6:  MOV             R4, R0
4D1FE8:  ADD.W           R0, R4, #0x10
4D1FEC:  ADD             R1, SP, #0x50+var_4C
4D1FEE:  BLX             j__ZN10BoneNode_c11QuatToEulerEP6RtQuatP5RwV3d; BoneNode_c::QuatToEuler(RtQuat *,RwV3d *)
4D1FF2:  VLDR            S2, [R4,#0x7C]
4D1FF6:  VLDR            S0, [SP,#0x50+var_4C]
4D1FFA:  VCMPE.F32       S0, S2
4D1FFE:  VMRS            APSR_nzcv, FPSCR
4D2002:  ITT LT
4D2004:  VSTRLT          S2, [SP,#0x50+var_4C]
4D2008:  VMOVLT.F32      S0, S2
4D200C:  VLDR            S2, [R4,#0x88]
4D2010:  VCMPE.F32       S0, S2
4D2014:  VMRS            APSR_nzcv, FPSCR
4D2018:  ITT GT
4D201A:  VSTRGT          S2, [SP,#0x50+var_4C]
4D201E:  VMOVGT.F32      S0, S2
4D2022:  VLDR            S2, [SP,#0x50+var_48]
4D2026:  VLDR            S6, [R4,#0x80]
4D202A:  VLDR            S4, [R4,#0x8C]
4D202E:  VCMPE.F32       S2, S6
4D2032:  VMRS            APSR_nzcv, FPSCR
4D2036:  ITT LT
4D2038:  VSTRLT          S6, [SP,#0x50+var_48]
4D203C:  VMOVLT.F32      S2, S6
4D2040:  VCMPE.F32       S2, S4
4D2044:  VMRS            APSR_nzcv, FPSCR
4D2048:  ITT GT
4D204A:  VSTRGT          S4, [SP,#0x50+var_48]
4D204E:  VMOVGT.F32      S2, S4
4D2052:  LDR             R0, [R4,#8]
4D2054:  VLDR            S4, [R4,#0x90]
4D2058:  VLDR            S6, [R4,#0x84]
4D205C:  CMP             R0, #5
4D205E:  BNE             loc_4D20C2
4D2060:  LDR             R0, =(_ZN17BoneNodeManager_c12ms_boneInfosE_ptr - 0x4D2066)
4D2062:  ADD             R0, PC; _ZN17BoneNodeManager_c12ms_boneInfosE_ptr
4D2064:  LDR             R1, [R0]; BoneNodeManager_c::ms_boneInfos ...
4D2066:  MOVS            R0, #0
4D2068:  LDRH            R2, [R1]; BoneNodeManager_c::ms_boneInfos
4D206A:  CMP             R2, #5
4D206C:  BEQ             loc_4D207C
4D206E:  ADDS            R2, R0, #1
4D2070:  ADDS            R1, #0x28 ; '('
4D2072:  CMP             R0, #0x1F
4D2074:  MOV             R0, R2
4D2076:  BLT             loc_4D2068
4D2078:  MOV.W           R0, #0xFFFFFFFF
4D207C:  VABS.F32        S8, S0
4D2080:  VLDR            S10, =-45.0
4D2084:  LDR             R1, =(_ZN17BoneNodeManager_c12ms_boneInfosE_ptr - 0x4D2092)
4D2086:  ADD.W           R0, R0, R0,LSL#2
4D208A:  VLDR            S14, =0.0
4D208E:  ADD             R1, PC; _ZN17BoneNodeManager_c12ms_boneInfosE_ptr
4D2090:  LDR             R1, [R1]; BoneNodeManager_c::ms_boneInfos ...
4D2092:  VDIV.F32        S8, S8, S10
4D2096:  ADD.W           R0, R1, R0,LSL#3
4D209A:  VMOV.F32        S10, #1.0
4D209E:  VLDR            S12, [R0,#0xC]
4D20A2:  VSUB.F32        S4, S4, S12
4D20A6:  VSUB.F32        S6, S6, S12
4D20AA:  VADD.F32        S8, S8, S10
4D20AE:  VMAX.F32        D4, D4, D7
4D20B2:  VMUL.F32        S4, S4, S8
4D20B6:  VMUL.F32        S6, S6, S8
4D20BA:  VADD.F32        S4, S12, S4
4D20BE:  VADD.F32        S6, S12, S6
4D20C2:  VLDR            S8, [SP,#0x50+var_44]
4D20C6:  VMOV.F32        S10, #0.5
4D20CA:  VCMPE.F32       S8, S6
4D20CE:  VMRS            APSR_nzcv, FPSCR
4D20D2:  ITT LT
4D20D4:  VSTRLT          S6, [SP,#0x50+var_44]
4D20D8:  VMOVLT.F32      S8, S6
4D20DC:  VLDR            S6, =0.0055556
4D20E0:  VCMPE.F32       S8, S4
4D20E4:  VMRS            APSR_nzcv, FPSCR
4D20E8:  ITT GT
4D20EA:  VSTRGT          S4, [SP,#0x50+var_44]
4D20EE:  VMOVGT.F32      S8, S4
4D20F2:  VLDR            S4, =3.1416
4D20F6:  VMUL.F32        S0, S0, S4
4D20FA:  VMUL.F32        S8, S8, S4
4D20FE:  VMUL.F32        S0, S0, S6
4D2102:  VMUL.F32        S0, S0, S10
4D2106:  VMOV            R5, S0
4D210A:  VMUL.F32        S0, S2, S4
4D210E:  VMUL.F32        S2, S8, S6
4D2112:  VMUL.F32        S0, S0, S6
4D2116:  VMUL.F32        S16, S2, S10
4D211A:  VMUL.F32        S18, S0, S10
4D211E:  MOV             R0, R5; x
4D2120:  BLX             cosf
4D2124:  VMOV            R6, S16
4D2128:  MOV             R8, R0
4D212A:  MOV             R0, R6; x
4D212C:  BLX             cosf
4D2130:  MOV             R9, R0
4D2132:  MOV             R0, R5; x
4D2134:  BLX             sinf
4D2138:  MOV             R5, R0
4D213A:  MOV             R0, R6; x
4D213C:  BLX             sinf
4D2140:  VMOV            R6, S18
4D2144:  VMOV            S0, R0
4D2148:  VMOV            S2, R5
4D214C:  VMOV            S4, R9
4D2150:  VMOV            S6, R8
4D2154:  VMUL.F32        S16, S2, S0
4D2158:  VMUL.F32        S18, S6, S4
4D215C:  VMUL.F32        S20, S6, S0
4D2160:  VMUL.F32        S22, S4, S2
4D2164:  MOV             R0, R6; x
4D2166:  BLX             cosf
4D216A:  VMOV            S24, R0
4D216E:  MOV             R0, R6; x
4D2170:  BLX             sinf
4D2174:  VMOV            S0, R0
4D2178:  VMUL.F32        S2, S24, S16
4D217C:  VMUL.F32        S4, S18, S0
4D2180:  VMUL.F32        S6, S0, S20
4D2184:  VMUL.F32        S8, S24, S22
4D2188:  VMUL.F32        S10, S0, S22
4D218C:  VMUL.F32        S12, S24, S20
4D2190:  VMUL.F32        S0, S0, S16
4D2194:  VADD.F32        S2, S4, S2
4D2198:  VSUB.F32        S4, S8, S6
4D219C:  VMUL.F32        S6, S24, S18
4D21A0:  VSUB.F32        S8, S12, S10
4D21A4:  VMUL.F32        S10, S2, S2
4D21A8:  VMUL.F32        S12, S4, S4
4D21AC:  VADD.F32        S0, S6, S0
4D21B0:  VMUL.F32        S6, S8, S8
4D21B4:  VADD.F32        S10, S12, S10
4D21B8:  VMUL.F32        S12, S0, S0
4D21BC:  VADD.F32        S6, S6, S10
4D21C0:  VADD.F32        S6, S12, S6
4D21C4:  VDIV.F32        S4, S4, S6
4D21C8:  VDIV.F32        S8, S8, S6
4D21CC:  VDIV.F32        S2, S2, S6
4D21D0:  VDIV.F32        S0, S0, S6
4D21D4:  VSTR            S4, [R4,#0x10]
4D21D8:  VSTR            S2, [R4,#0x14]
4D21DC:  VSTR            S8, [R4,#0x18]
4D21E0:  VSTR            S0, [R4,#0x1C]
4D21E4:  ADD             SP, SP, #0x10
4D21E6:  VPOP            {D8-D12}
4D21EA:  POP.W           {R8,R9,R11}
4D21EE:  POP             {R4-R7,PC}
