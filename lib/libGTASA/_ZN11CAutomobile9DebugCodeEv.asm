; =========================================================
; Game Engine Function: _ZN11CAutomobile9DebugCodeEv
; Address            : 0x55CAA0 - 0x55CB2E
; =========================================================

55CAA0:  PUSH            {R4,R5,R7,LR}
55CAA2:  ADD             R7, SP, #8
55CAA4:  MOV             R4, R0
55CAA6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55CAB0)
55CAA8:  LDRSH.W         R1, [R4,#0x26]
55CAAC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55CAAE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55CAB0:  LDR.W           R5, [R0,R1,LSL#2]
55CAB4:  MOV.W           R0, #0xFFFFFFFF; int
55CAB8:  MOVS            R1, #0; bool
55CABA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55CABE:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x55CACC)
55CAC0:  MOV.W           R3, #0x194
55CAC4:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x55CACE)
55CAC6:  EORS            R0, R4
55CAC8:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
55CACA:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
55CACC:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
55CACE:  LDR             R2, [R2]; CWorld::Players ...
55CAD0:  LDR             R1, [R1]; CWorld::PlayerInFocus
55CAD2:  SMLABB.W        R1, R1, R3, R2
55CAD6:  LDR.W           R1, [R1,#0xB0]
55CADA:  ORRS            R0, R1
55CADC:  ITT NE
55CADE:  CMPNE           R1, R4
55CAE0:  POPNE           {R4,R5,R7,PC}
55CAE2:  LDR             R0, =(mod_HandlingManager_ptr - 0x55CAEC)
55CAE4:  LDRB.W          R1, [R5,#0x62]
55CAE8:  ADD             R0, PC; mod_HandlingManager_ptr
55CAEA:  VLDR            S2, =0.01
55CAEE:  LDR             R0, [R0]; mod_HandlingManager
55CAF0:  RSB.W           R1, R1, R1,LSL#3
55CAF4:  ADD.W           R0, R0, R1,LSL#5
55CAF8:  LDR             R1, [R0,#0x18]
55CAFA:  STR.W           R1, [R4,#0x90]
55CAFE:  LDR             R1, [R0,#0x20]
55CB00:  STR.W           R1, [R4,#0x94]
55CB04:  LDR             R1, [R0,#0x38]
55CB06:  STR.W           R1, [R4,#0xA4]
55CB0A:  VLDR            S0, [R0,#0x24]
55CB0E:  VCMPE.F32       S0, S2
55CB12:  VMRS            APSR_nzcv, FPSCR
55CB16:  BLE             loc_55CB28
55CB18:  VMOV.F32        S2, #0.5
55CB1C:  VMUL.F32        S0, S0, S2
55CB20:  VLDR            S2, =1000.0
55CB24:  VDIV.F32        S0, S0, S2
55CB28:  VSTR            S0, [R4,#0x9C]
55CB2C:  POP             {R4,R5,R7,PC}
