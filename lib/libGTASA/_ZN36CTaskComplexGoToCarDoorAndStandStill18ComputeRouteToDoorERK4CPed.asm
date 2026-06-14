; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStill18ComputeRouteToDoorERK4CPed
; Address            : 0x5000DC - 0x5002C0
; =========================================================

5000DC:  PUSH            {R4-R7,LR}
5000DE:  ADD             R7, SP, #0xC
5000E0:  PUSH.W          {R8-R11}
5000E4:  SUB             SP, SP, #0xCC; float *
5000E6:  MOV             R4, R0
5000E8:  MOV             R11, R1
5000EA:  LDR             R0, [R4,#0x4C]
5000EC:  CBNZ            R0, loc_5000FA
5000EE:  MOVS            R0, #dword_64; this
5000F0:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
5000F4:  MOVS            R1, #0
5000F6:  STR             R1, [R0]
5000F8:  STR             R0, [R4,#0x4C]
5000FA:  MOVS            R5, #0
5000FC:  ADD.W           R8, R11, #4
500100:  STR             R5, [R0]
500102:  LDR.W           R2, [R11,#0x14]; CEntity *
500106:  MOV             R0, R8
500108:  LDR             R1, [R4,#0xC]; CVector *
50010A:  CMP             R2, #0
50010C:  IT NE
50010E:  ADDNE.W         R0, R2, #0x30 ; '0'; this
500112:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
500116:  LDR             R1, [R4,#0xC]; CVector *
500118:  MOV             R6, R0
50011A:  ADD.W           R0, R4, #0x38 ; '8'; this
50011E:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
500122:  MOV             R9, R0
500124:  LDR.W           R0, [R11,#0x14]
500128:  MOV             R1, R8
50012A:  ADD.W           R10, SP, #0xE8+var_4C
50012E:  CMP             R0, #0
500130:  ADD             R3, SP, #0xE8+var_5C; CVector *
500132:  IT NE
500134:  ADDNE.W         R1, R0, #0x30 ; '0'
500138:  MOV             R2, R10; CEntity *
50013A:  LDR             R0, [R1,#8]; this
50013C:  LDR             R1, [R4,#0xC]; float
50013E:  BLX             j__ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxPlanesEfR7CEntityP7CVectorPf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanes(float,CEntity &,CVector *,float *)
500142:  ADD.W           R0, R6, R6,LSL#1
500146:  ADD             R1, SP, #0xE8+var_5C
500148:  ADD             R3, SP, #0xE8+var_78; CEntity *
50014A:  ADD.W           R0, R10, R0,LSL#2
50014E:  VLDR            S0, [R0]
500152:  VLDR            S2, [R0,#4]
500156:  VLDR            S4, [R0,#8]
50015A:  LDR.W           R0, [R11,#0x14]
50015E:  CMP             R0, #0
500160:  IT NE
500162:  ADDNE.W         R8, R0, #0x30 ; '0'
500166:  ADD.W           R0, R1, R6,LSL#2
50016A:  VLDR            S6, [R8]
50016E:  VLDR            S8, [R8,#4]
500172:  VMUL.F32        S14, S0, S6
500176:  VLDR            S10, [R8,#8]
50017A:  VMUL.F32        S12, S2, S8
50017E:  ADD.W           R8, SP, #0xE8+var_DC
500182:  VMUL.F32        S1, S4, S10
500186:  VADD.F32        S12, S14, S12
50018A:  VLDR            S14, [R0]
50018E:  ADD.W           R0, R9, R9,LSL#1
500192:  ADD.W           R0, R10, R0,LSL#2
500196:  VADD.F32        S12, S12, S1
50019A:  VADD.F32        S12, S14, S12
50019E:  VMUL.F32        S2, S2, S12
5001A2:  VMUL.F32        S0, S0, S12
5001A6:  VMUL.F32        S4, S4, S12
5001AA:  VSUB.F32        S2, S8, S2
5001AE:  VSUB.F32        S0, S6, S0
5001B2:  VSUB.F32        S4, S10, S4
5001B6:  VSTR            S2, [SP,#0xE8+var_68+4]
5001BA:  VSTR            S0, [SP,#0xE8+var_68]
5001BE:  VSTR            S4, [SP,#0xE8+var_60]
5001C2:  VLDR            S0, [R0]
5001C6:  VLDR            S6, [R4,#0x38]
5001CA:  VLDR            S2, [R0,#4]
5001CE:  VLDR            S8, [R4,#0x3C]
5001D2:  VMUL.F32        S14, S0, S6
5001D6:  VLDR            S4, [R0,#8]
5001DA:  ADD.W           R0, R1, R9,LSL#2
5001DE:  VMUL.F32        S12, S2, S8
5001E2:  VLDR            S10, [R4,#0x40]
5001E6:  STR             R5, [SP,#0xE8+var_DC]
5001E8:  ADD             R1, SP, #0xE8+var_68; CPed *
5001EA:  VMUL.F32        S1, S4, S10
5001EE:  VADD.F32        S12, S14, S12
5001F2:  VLDR            S14, [R0]
5001F6:  MOV             R0, R11; this
5001F8:  VADD.F32        S12, S12, S1
5001FC:  VADD.F32        S12, S14, S12
500200:  VMUL.F32        S2, S2, S12
500204:  VMUL.F32        S0, S0, S12
500208:  VMUL.F32        S4, S4, S12
50020C:  VSUB.F32        S2, S8, S2
500210:  VSUB.F32        S0, S6, S0
500214:  VSUB.F32        S4, S10, S4
500218:  VSTR            S2, [SP,#0xE8+var_78+4]
50021C:  VSTR            S0, [SP,#0xE8+var_78]
500220:  VSTR            S4, [SP,#0xE8+var_70]
500224:  LDR             R2, [R4,#0xC]; CVector *
500226:  STRD.W          R8, R5, [SP,#0xE8+var_E8]; CVector *
50022A:  BLX             j__ZN20CPedGeometryAnalyser34ComputeRouteRoundEntityBoundingBoxERK4CPedRK7CVectorR7CEntityS5_R11CPointRoutei; CPedGeometryAnalyser::ComputeRouteRoundEntityBoundingBox(CPed const&,CVector const&,CEntity &,CVector const&,CPointRoute &,int)
50022E:  LDR             R0, [R4,#0x4C]
500230:  LDR             R1, [R0]
500232:  CMP             R1, #7
500234:  BGT             loc_500254
500236:  ADD.W           R1, R1, R1,LSL#1
50023A:  VLDR            D16, [SP,#0xE8+var_68]
50023E:  LDR             R2, [SP,#0xE8+var_60]
500240:  ADD.W           R1, R0, R1,LSL#2
500244:  STR             R2, [R1,#0xC]
500246:  VSTR            D16, [R1,#4]
50024A:  LDR             R1, [R0]
50024C:  ADDS            R1, #1
50024E:  STR             R1, [R0]
500250:  LDR             R0, [R4,#0x4C]
500252:  LDR             R1, [R0]
500254:  LDR             R6, [SP,#0xE8+var_DC]
500256:  CMP             R1, #8
500258:  IT LT
50025A:  MOVLT           R5, #1
50025C:  CMP             R6, #1
50025E:  BLT             loc_50029A
500260:  ADD.W           R2, R8, #4
500264:  MOVS            R3, #0
500266:  LSLS            R5, R5, #0x1F
500268:  BEQ             loc_500288
50026A:  ADD.W           R1, R1, R1,LSL#1
50026E:  VLDR            D16, [R2]
500272:  LDR             R6, [R2,#8]
500274:  ADD.W           R1, R0, R1,LSL#2
500278:  STR             R6, [R1,#0xC]
50027A:  VSTR            D16, [R1,#4]
50027E:  LDR             R1, [R0]
500280:  ADDS            R1, #1
500282:  STR             R1, [R0]
500284:  LDR             R0, [R4,#0x4C]
500286:  LDR             R6, [SP,#0xE8+var_DC]
500288:  LDR             R1, [R0]
50028A:  MOVS            R5, #0
50028C:  ADDS            R2, #0xC
50028E:  ADDS            R3, #1
500290:  CMP             R1, #8
500292:  IT LT
500294:  MOVLT           R5, #1
500296:  CMP             R3, R6
500298:  BLT             loc_500266
50029A:  CMP             R5, #1
50029C:  BNE             loc_5002B8
50029E:  ADD.W           R1, R1, R1,LSL#1
5002A2:  VLDR            D16, [SP,#0xE8+var_78]
5002A6:  LDR             R2, [SP,#0xE8+var_70]
5002A8:  ADD.W           R1, R0, R1,LSL#2
5002AC:  STR             R2, [R1,#0xC]
5002AE:  VSTR            D16, [R1,#4]
5002B2:  LDR             R1, [R0]
5002B4:  ADDS            R1, #1
5002B6:  STR             R1, [R0]
5002B8:  ADD             SP, SP, #0xCC
5002BA:  POP.W           {R8-R11}
5002BE:  POP             {R4-R7,PC}
