; =========================================================
; Game Engine Function: _ZN8CShadows19UpdateStaticShadowsEv
; Address            : 0x5BD22C - 0x5BD2F6
; =========================================================

5BD22C:  PUSH            {R4-R7,LR}
5BD22E:  ADD             R7, SP, #0xC
5BD230:  PUSH.W          {R8-R11}
5BD234:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5BD244)
5BD236:  VMOV.F32        S0, #15.0
5BD23A:  VLDR            S2, =32.0
5BD23E:  MOVS            R6, #0
5BD240:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5BD242:  LDR             R2, =(MAX_DISTANCE_PED_SHADOWS_SQR_ptr - 0x5BD24C)
5BD244:  LDR             R1, =(MAX_DISTANCE_PED_SHADOWS_ptr - 0x5BD24E)
5BD246:  LDR             R0, [R0]; MobileSettings::settings ...
5BD248:  ADD             R2, PC; MAX_DISTANCE_PED_SHADOWS_SQR_ptr
5BD24A:  ADD             R1, PC; MAX_DISTANCE_PED_SHADOWS_ptr
5BD24C:  LDR             R2, [R2]; MAX_DISTANCE_PED_SHADOWS_SQR
5BD24E:  LDR.W           R0, [R0,#(dword_6E049C - 0x6E03F4)]
5BD252:  LDR             R1, [R1]; MAX_DISTANCE_PED_SHADOWS
5BD254:  CMP             R0, #2
5BD256:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BD262)
5BD258:  IT EQ
5BD25A:  VMOVEQ.F32      S0, S2
5BD25E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BD260:  VMUL.F32        S2, S0, S0
5BD264:  VSTR            S0, [R1]
5BD268:  MOVS            R1, #0
5BD26A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5BD26C:  LDR.W           R12, [R0]; CTimer::m_snTimeInMilliseconds
5BD270:  LDR             R0, =(_ZN8CShadows14aStaticShadowsE_ptr - 0x5BD27A)
5BD272:  VSTR            S2, [R2]
5BD276:  ADD             R0, PC; _ZN8CShadows14aStaticShadowsE_ptr
5BD278:  LDR             R2, [R0]; CShadows::aStaticShadows ...
5BD27A:  LDR             R0, =(_ZN8CShadows14aStaticShadowsE_ptr - 0x5BD280)
5BD27C:  ADD             R0, PC; _ZN8CShadows14aStaticShadowsE_ptr
5BD27E:  LDR.W           R10, [R0]; CShadows::aStaticShadows ...
5BD282:  LDR             R0, =(_ZN8CShadows15pEmptyBunchListE_ptr - 0x5BD288)
5BD284:  ADD             R0, PC; _ZN8CShadows15pEmptyBunchListE_ptr
5BD286:  LDR.W           R11, [R0]; CShadows::pEmptyBunchList ...
5BD28A:  LDR             R0, =(_ZN8CShadows14aStaticShadowsE_ptr - 0x5BD290)
5BD28C:  ADD             R0, PC; _ZN8CShadows14aStaticShadowsE_ptr
5BD28E:  LDR.W           LR, [R0]; CShadows::aStaticShadows ...
5BD292:  LDR             R0, =(_ZN8CShadows14aStaticShadowsE_ptr - 0x5BD298)
5BD294:  ADD             R0, PC; _ZN8CShadows14aStaticShadowsE_ptr
5BD296:  LDR.W           R9, [R0]; CShadows::aStaticShadows ...
5BD29A:  ADD.W           R4, R2, R6,LSL#6
5BD29E:  LDR.W           R8, [R4,#4]!
5BD2A2:  ADD.W           R5, R4, #0x36 ; '6'
5BD2A6:  CMP.W           R8, #0
5BD2AA:  BEQ             loc_5BD2E8
5BD2AC:  LDRB            R0, [R5]
5BD2AE:  CBNZ            R0, loc_5BD2E8
5BD2B0:  ADD.W           R0, R10, R6,LSL#6
5BD2B4:  LDRB.W          R0, [R0,#0x3C]
5BD2B8:  CBZ             R0, loc_5BD2CA
5BD2BA:  ADD.W           R0, R9, R6,LSL#6
5BD2BE:  MOVW            R3, #0x1388
5BD2C2:  LDR             R0, [R0,#8]
5BD2C4:  ADD             R0, R3
5BD2C6:  CMP             R12, R0
5BD2C8:  BLS             loc_5BD2E8
5BD2CA:  LDR.W           R0, [R11]; CShadows::pEmptyBunchList
5BD2CE:  STR.W           R8, [R11]; CShadows::pEmptyBunchList
5BD2D2:  MOV             R3, R8
5BD2D4:  LDR.W           R8, [R3,#0x54]
5BD2D8:  CMP.W           R8, #0
5BD2DC:  BNE             loc_5BD2D2
5BD2DE:  STR             R0, [R3,#0x54]
5BD2E0:  LSLS            R0, R6, #6
5BD2E2:  STR             R1, [R4]
5BD2E4:  STR.W           R1, [LR,R0]
5BD2E8:  ADDS            R6, #1
5BD2EA:  STRB            R1, [R5]
5BD2EC:  CMP             R6, #0x30 ; '0'
5BD2EE:  BNE             loc_5BD29A
5BD2F0:  POP.W           {R8-R11}
5BD2F4:  POP             {R4-R7,PC}
