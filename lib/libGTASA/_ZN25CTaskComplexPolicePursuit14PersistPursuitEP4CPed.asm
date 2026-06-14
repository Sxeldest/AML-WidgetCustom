; =========================================================
; Game Engine Function: _ZN25CTaskComplexPolicePursuit14PersistPursuitEP4CPed
; Address            : 0x53DCF4 - 0x53DD8A
; =========================================================

53DCF4:  PUSH            {R4-R7,LR}
53DCF6:  ADD             R7, SP, #0xC
53DCF8:  PUSH.W          {R11}
53DCFC:  MOV             R6, R0
53DCFE:  MOV.W           R0, #0xFFFFFFFF; int
53DD02:  MOV             R4, R1
53DD04:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53DD08:  MOV             R5, R0
53DD0A:  ADDW            R0, R4, #0x544; this
53DD0E:  VLDR            S0, [R0]
53DD12:  VCMPE.F32       S0, #0.0
53DD16:  VMRS            APSR_nzcv, FPSCR
53DD1A:  BLE             loc_53DD5C
53DD1C:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
53DD20:  LDRB            R1, [R6,#0xC]
53DD22:  CMP             R0, #1
53DD24:  IT EQ
53DD26:  ANDSEQ.W        R0, R1, #1
53DD2A:  BNE             loc_53DD3A
53DD2C:  LDRB.W          R0, [R4,#0x485]
53DD30:  LSLS            R0, R0, #0x1C
53DD32:  BPL             loc_53DD74
53DD34:  ORR.W           R0, R1, #3
53DD38:  B               loc_53DD5A
53DD3A:  LSLS            R0, R1, #0x1E; this
53DD3C:  BPL             loc_53DD44
53DD3E:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
53DD42:  CBZ             R0, loc_53DD54
53DD44:  LDR             R0, [R5,#0x2C]
53DD46:  CBNZ            R0, loc_53DD74
53DD48:  LDRB            R0, [R6,#0xC]
53DD4A:  AND.W           R1, R0, #3
53DD4E:  CMP             R1, #1
53DD50:  BEQ             loc_53DD56
53DD52:  B               loc_53DD74
53DD54:  LDRB            R0, [R6,#0xC]
53DD56:  AND.W           R0, R0, #0xFC
53DD5A:  STRB            R0, [R6,#0xC]
53DD5C:  MOV.W           R0, #0xFFFFFFFF; int
53DD60:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53DD64:  CBZ             R0, loc_53DD74
53DD66:  MOV.W           R0, #0xFFFFFFFF; int
53DD6A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53DD6E:  MOV             R1, R4
53DD70:  BLX             j__ZN7CWanted16RemovePursuitCopEP7CCopPed; CWanted::RemovePursuitCop(CCopPed *)
53DD74:  MOV             R0, R5; this
53DD76:  BLX             j__ZN7CWanted23RemoveExcessPursuitCopsEv; CWanted::RemoveExcessPursuitCops(void)
53DD7A:  MOV             R0, R5
53DD7C:  MOV             R1, R4
53DD7E:  POP.W           {R11}
53DD82:  POP.W           {R4-R7,LR}
53DD86:  B.W             sub_18DA70
