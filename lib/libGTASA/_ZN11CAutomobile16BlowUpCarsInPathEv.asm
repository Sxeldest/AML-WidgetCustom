; =========================================================
; Game Engine Function: _ZN11CAutomobile16BlowUpCarsInPathEv
; Address            : 0x55E268 - 0x55E320
; =========================================================

55E268:  PUSH            {R4-R7,LR}
55E26A:  ADD             R7, SP, #0xC
55E26C:  PUSH.W          {R8}
55E270:  MOV             R4, R0
55E272:  VLDR            S0, [R4,#0x48]
55E276:  VLDR            S2, [R4,#0x4C]
55E27A:  VMUL.F32        S0, S0, S0
55E27E:  VLDR            S4, [R4,#0x50]
55E282:  VMUL.F32        S2, S2, S2
55E286:  VMUL.F32        S4, S4, S4
55E28A:  VADD.F32        S0, S0, S2
55E28E:  VLDR            S2, =0.1
55E292:  VADD.F32        S0, S0, S4
55E296:  VSQRT.F32       S0, S0
55E29A:  VCMPE.F32       S0, S2
55E29E:  VMRS            APSR_nzcv, FPSCR
55E2A2:  BLE             loc_55E31A
55E2A4:  LDRB.W          R0, [R4,#0x87C]
55E2A8:  LSLS            R0, R0, #0x1A
55E2AA:  BPL             loc_55E31A
55E2AC:  LDRB.W          R0, [R4,#0xBD]
55E2B0:  CBZ             R0, loc_55E31A
55E2B2:  ADD.W           R6, R4, #0xC0
55E2B6:  MOVS            R5, #0
55E2B8:  LDR.W           R1, [R6,R5,LSL#2]
55E2BC:  CBZ             R1, loc_55E312
55E2BE:  LDRB.W          R2, [R1,#0x3A]
55E2C2:  AND.W           R2, R2, #7
55E2C6:  CMP             R2, #2
55E2C8:  BNE             loc_55E312
55E2CA:  LDRH            R2, [R1,#0x26]
55E2CC:  CMP.W           R2, #0x1B0
55E2D0:  BEQ             loc_55E312
55E2D2:  LDRB.W          R1, [R1,#0x47]
55E2D6:  LSLS            R1, R1, #0x1A
55E2D8:  BMI             loc_55E312
55E2DA:  MOV.W           R0, #0xFFFFFFFF; int
55E2DE:  MOVS            R1, #0; bool
55E2E0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55E2E4:  CMP             R4, R0
55E2E6:  BNE             loc_55E2FE
55E2E8:  MOV.W           R0, #0xFFFFFFFF; int
55E2EC:  LDR.W           R8, [R6,R5,LSL#2]
55E2F0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
55E2F4:  MOV             R2, R0
55E2F6:  MOVS            R0, #0x11
55E2F8:  MOV             R1, R8
55E2FA:  BLX             j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
55E2FE:  LDR.W           R0, [R6,R5,LSL#2]
55E302:  MOVS            R2, #0
55E304:  LDR             R1, [R0]
55E306:  LDR.W           R3, [R1,#0xA8]
55E30A:  MOV             R1, R4
55E30C:  BLX             R3
55E30E:  LDRB.W          R0, [R4,#0xBD]
55E312:  ADDS            R5, #1
55E314:  UXTB            R1, R0
55E316:  CMP             R5, R1
55E318:  BLT             loc_55E2B8
55E31A:  POP.W           {R8}
55E31E:  POP             {R4-R7,PC}
