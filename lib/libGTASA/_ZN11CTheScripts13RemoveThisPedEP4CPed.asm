; =========================================================
; Game Engine Function: _ZN11CTheScripts13RemoveThisPedEP4CPed
; Address            : 0x34DBE8 - 0x34DCB0
; =========================================================

34DBE8:  PUSH            {R4-R7,LR}
34DBEA:  ADD             R7, SP, #0xC
34DBEC:  PUSH.W          {R8}
34DBF0:  MOV             R4, R0
34DBF2:  CMP             R4, #0
34DBF4:  BEQ             loc_34DCAA
34DBF6:  LDRB.W          R0, [R4,#0x485]
34DBFA:  LDRB.W          R8, [R4,#0x448]
34DBFE:  LSLS            R0, R0, #0x1F
34DC00:  ITT NE
34DC02:  LDRNE.W         R0, [R4,#0x590]; this
34DC06:  CMPNE           R0, #0
34DC08:  BEQ             loc_34DC60
34DC0A:  LDR.W           R1, [R0,#0x464]
34DC0E:  CMP             R1, R4
34DC10:  BEQ             loc_34DC1A
34DC12:  MOV             R1, R4; CPed *
34DC14:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
34DC18:  B               loc_34DC60
34DC1A:  MOVS            R1, #0; bool
34DC1C:  BLX             j__ZN8CVehicle12RemoveDriverEb; CVehicle::RemoveDriver(bool)
34DC20:  LDR.W           R0, [R4,#0x590]
34DC24:  MOVS            R2, #4
34DC26:  LDRB.W          R1, [R0,#0x3A]
34DC2A:  BFI.W           R1, R2, #3, #0x1D
34DC2E:  STRB.W          R1, [R0,#0x3A]
34DC32:  LDR.W           R0, [R4,#0x590]
34DC36:  LDR.W           R1, [R0,#0x508]
34DC3A:  CMP             R1, #5
34DC3C:  ITT EQ
34DC3E:  MOVEQ           R1, #1
34DC40:  STREQ.W         R1, [R0,#0x508]
34DC44:  LDR.W           R0, [R4,#0x59C]
34DC48:  CMP             R0, #6
34DC4A:  BNE             loc_34DC60
34DC4C:  LDR.W           R0, [R4,#0x590]; this
34DC50:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
34DC54:  CBZ             R0, loc_34DC60
34DC56:  LDR.W           R0, [R4,#0x590]; this
34DC5A:  MOVS            R1, #0; unsigned __int8
34DC5C:  BLX             j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
34DC60:  LDR             R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x34DC6C)
34DC62:  MOVS            R0, #0
34DC64:  LDR             R2, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x34DC6E)
34DC66:  MOVS            R3, #0
34DC68:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
34DC6A:  ADD             R2, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
34DC6C:  LDR             R1, [R1]; CEntity *
34DC6E:  LDR             R2, [R2]; CTheScripts::ScriptEffectSystemArray ...
34DC70:  LDRB.W          R5, [R1,R3,LSL#3]
34DC74:  CBZ             R5, loc_34DC84
34DC76:  ADD.W           R5, R2, R3,LSL#3
34DC7A:  LDR             R5, [R5,#4]
34DC7C:  LDR             R6, [R5,#0x10]
34DC7E:  CMP             R6, R4
34DC80:  IT EQ
34DC82:  STREQ           R0, [R5,#0xC]
34DC84:  ADDS            R3, #1
34DC86:  CMP             R3, #0x20 ; ' '
34DC88:  BNE             loc_34DC70
34DC8A:  MOV             R0, R4; this
34DC8C:  BLX             j__ZN6CWorld31RemoveReferencesToDeletedObjectEP7CEntity; CWorld::RemoveReferencesToDeletedObject(CEntity *)
34DC90:  LDR             R0, [R4]
34DC92:  LDR             R1, [R0,#4]
34DC94:  MOV             R0, R4
34DC96:  BLX             R1
34DC98:  CMP.W           R8, #2
34DC9C:  BNE             loc_34DCAA
34DC9E:  LDR             R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x34DCA4)
34DCA0:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
34DCA2:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
34DCA4:  LDR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
34DCA6:  SUBS            R1, #1
34DCA8:  STR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
34DCAA:  POP.W           {R8}
34DCAE:  POP             {R4-R7,PC}
