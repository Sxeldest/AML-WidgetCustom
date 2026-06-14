; =========================================================
; Game Engine Function: _ZN5CBoat9DebugCodeEv
; Address            : 0x56BDC0 - 0x56BE42
; =========================================================

56BDC0:  PUSH            {R4,R6,R7,LR}
56BDC2:  ADD             R7, SP, #8
56BDC4:  MOV             R4, R0
56BDC6:  MOV.W           R0, #0xFFFFFFFF; int
56BDCA:  MOVS            R1, #0; bool
56BDCC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
56BDD0:  CMP             R0, R4
56BDD2:  BNE             locret_56BDF4
56BDD4:  LDRB.W          R0, [R4,#0x651]; this
56BDD8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56BDDC:  LDRH            R0, [R0,#0x18]
56BDDE:  CBNZ            R0, locret_56BDF4
56BDE0:  MOVS            R0, #0; this
56BDE2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56BDE6:  LDRH            R1, [R0,#0x14]
56BDE8:  CMP             R1, #0
56BDEA:  IT EQ
56BDEC:  POPEQ           {R4,R6,R7,PC}
56BDEE:  LDRH.W          R0, [R0,#0x44]
56BDF2:  CBZ             R0, loc_56BDF6
56BDF4:  POP             {R4,R6,R7,PC}
56BDF6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56BE04)
56BDF8:  VMOV.I32        Q8, #0
56BDFC:  LDRSH.W         R1, [R4,#0x26]
56BE00:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56BE02:  LDR             R2, =(mod_HandlingManager_ptr - 0x56BE0A)
56BE04:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56BE06:  ADD             R2, PC; mod_HandlingManager_ptr
56BE08:  LDR             R2, [R2]; mod_HandlingManager
56BE0A:  LDR.W           R1, [R0,R1,LSL#2]
56BE0E:  LDR             R0, [R4,#0x18]
56BE10:  LDRB.W          R3, [R1,#0x62]
56BE14:  ADDW            R1, R4, #0x5E4
56BE18:  VST1.32         {D16-D17}, [R1]
56BE1C:  ADDW            R1, R4, #0x5D4
56BE20:  RSB.W           R3, R3, R3,LSL#3
56BE24:  VST1.32         {D16-D17}, [R1]
56BE28:  ADDW            R1, R4, #0x5C4
56BE2C:  ADD.W           R2, R2, R3,LSL#5
56BE30:  VST1.32         {D16-D17}, [R1]
56BE34:  ADDS            R2, #0x14
56BE36:  STR.W           R2, [R4,#0x388]
56BE3A:  POP.W           {R4,R6,R7,LR}
56BE3E:  B.W             sub_18AB14
