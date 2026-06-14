; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity14ControlSubTaskEP4CPed
; Address            : 0x523058 - 0x523152
; =========================================================

523058:  PUSH            {R4,R5,R7,LR}
52305A:  ADD             R7, SP, #8
52305C:  MOV             R5, R0
52305E:  MOV             R4, R1
523060:  LDR             R0, [R5,#0xC]
523062:  CBZ             R0, loc_52309E
523064:  MOV             R0, R5; this
523066:  MOV             R1, R4; CPed *
523068:  BLX             j__ZN23CTaskComplexAvoidEntity7SetUpIKEP4CPed; CTaskComplexAvoidEntity::SetUpIK(CPed *)
52306C:  LDR             R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x523076)
52306E:  LDR.W           R1, [R4,#0x440]
523072:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
523074:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
523076:  LDR.W           R1, [R1,#0x278]
52307A:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
52307C:  CMP             R1, R0
52307E:  BLE             loc_5230BC
523080:  LDRB.W          R0, [R5,#0x50]
523084:  LSLS            R0, R0, #0x1F
523086:  BEQ             loc_52314E
523088:  LDR             R0, =(g_ikChainMan_ptr - 0x523090)
52308A:  MOV             R1, R4; CPed *
52308C:  ADD             R0, PC; g_ikChainMan_ptr
52308E:  LDR             R0, [R0]; g_ikChainMan ; this
523090:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
523094:  CMP             R0, #0
523096:  BEQ             loc_52314E
523098:  LDR             R0, =(g_ikChainMan_ptr - 0x52309E)
52309A:  ADD             R0, PC; g_ikChainMan_ptr
52309C:  B               loc_523140
52309E:  LDRB.W          R0, [R5,#0x50]
5230A2:  LSLS            R0, R0, #0x1F
5230A4:  BEQ             loc_52314E
5230A6:  LDR             R0, =(g_ikChainMan_ptr - 0x5230AE)
5230A8:  MOV             R1, R4; CPed *
5230AA:  ADD             R0, PC; g_ikChainMan_ptr
5230AC:  LDR             R0, [R0]; g_ikChainMan ; this
5230AE:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
5230B2:  CMP             R0, #0
5230B4:  BEQ             loc_52314E
5230B6:  LDR             R0, =(g_ikChainMan_ptr - 0x5230BC)
5230B8:  ADD             R0, PC; g_ikChainMan_ptr
5230BA:  B               loc_523140
5230BC:  LDR             R0, [R5,#0xC]
5230BE:  LDR             R1, [R4,#0x14]
5230C0:  LDR.W           R12, =(_ZN32CObjectPotentialCollisionScanner23ms_fObjectAvoidDistanceE_ptr - 0x5230D0)
5230C4:  LDR             R3, [R0,#0x14]
5230C6:  ADD.W           R2, R1, #0x30 ; '0'
5230CA:  CMP             R1, #0
5230CC:  ADD             R12, PC; _ZN32CObjectPotentialCollisionScanner23ms_fObjectAvoidDistanceE_ptr
5230CE:  IT EQ
5230D0:  ADDEQ           R2, R4, #4
5230D2:  ADD.W           R1, R3, #0x30 ; '0'
5230D6:  CMP             R3, #0
5230D8:  VLDR            S0, [R2]
5230DC:  IT EQ
5230DE:  ADDEQ           R1, R0, #4
5230E0:  LDR.W           R0, [R12]; CObjectPotentialCollisionScanner::ms_fObjectAvoidDistance ...
5230E4:  VLDR            S2, [R1]
5230E8:  VLDR            D16, [R2,#4]
5230EC:  VSUB.F32        S0, S0, S2
5230F0:  VLDR            D17, [R1,#4]
5230F4:  VSUB.F32        D16, D16, D17
5230F8:  VLDR            S2, [R0]
5230FC:  VADD.F32        S4, S2, S2
523100:  VMUL.F32        D3, D16, D16
523104:  VMUL.F32        S0, S0, S0
523108:  VADD.F32        S4, S4, S4
52310C:  VADD.F32        S0, S0, S6
523110:  VMUL.F32        S2, S2, S4
523114:  VADD.F32        S0, S0, S7
523118:  VCMPE.F32       S0, S2
52311C:  VMRS            APSR_nzcv, FPSCR
523120:  ITT LE
523122:  LDRLE           R0, [R5,#8]
523124:  POPLE           {R4,R5,R7,PC}
523126:  LDRB.W          R0, [R5,#0x50]
52312A:  LSLS            R0, R0, #0x1F
52312C:  BEQ             loc_52314E
52312E:  LDR             R0, =(g_ikChainMan_ptr - 0x523136)
523130:  MOV             R1, R4; CPed *
523132:  ADD             R0, PC; g_ikChainMan_ptr
523134:  LDR             R0, [R0]; g_ikChainMan ; this
523136:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
52313A:  CBZ             R0, loc_52314E
52313C:  LDR             R0, =(g_ikChainMan_ptr - 0x523142)
52313E:  ADD             R0, PC; g_ikChainMan_ptr
523140:  LDR             R0, [R0]; g_ikChainMan ; this
523142:  MOV             R1, R4; CPed *
523144:  MOVS            R2, #0xFA; int
523146:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
52314A:  MOVS            R0, #0
52314C:  POP             {R4,R5,R7,PC}
52314E:  MOVS            R0, #0
523150:  POP             {R4,R5,R7,PC}
