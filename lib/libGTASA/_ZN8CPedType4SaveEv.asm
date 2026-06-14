; =========================================================
; Game Engine Function: _ZN8CPedType4SaveEv
; Address            : 0x48E168 - 0x48E23E
; =========================================================

48E168:  PUSH            {R4-R7,LR}
48E16A:  ADD             R7, SP, #0xC
48E16C:  PUSH.W          {R8}
48E170:  LDR             R0, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x48E178)
48E172:  MOVS            R6, #0
48E174:  ADD             R0, PC; _ZN8CPedType13ms_apPedTypesE_ptr
48E176:  LDR.W           R8, [R0]; CPedType::ms_apPedTypes ...
48E17A:  LDR.W           R0, [R8]; CPedType::ms_apPedTypes
48E17E:  MOVS            R1, #0; int
48E180:  ADD             R0, R6; this
48E182:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
48E186:  MOV             R4, R0
48E188:  MOVS            R0, #4; byte_count
48E18A:  BLX             malloc
48E18E:  MOV             R5, R0
48E190:  MOVS            R1, #byte_4; void *
48E192:  STR             R4, [R5]
48E194:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E198:  MOV             R0, R5; p
48E19A:  BLX             free
48E19E:  LDR.W           R0, [R8]; CPedType::ms_apPedTypes
48E1A2:  MOVS            R1, #1; int
48E1A4:  ADD             R0, R6; this
48E1A6:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
48E1AA:  MOV             R4, R0
48E1AC:  MOVS            R0, #4; byte_count
48E1AE:  BLX             malloc
48E1B2:  MOV             R5, R0
48E1B4:  MOVS            R1, #byte_4; void *
48E1B6:  STR             R4, [R5]
48E1B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E1BC:  MOV             R0, R5; p
48E1BE:  BLX             free
48E1C2:  LDR.W           R0, [R8]; CPedType::ms_apPedTypes
48E1C6:  MOVS            R1, #2; int
48E1C8:  ADD             R0, R6; this
48E1CA:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
48E1CE:  MOV             R4, R0
48E1D0:  MOVS            R0, #4; byte_count
48E1D2:  BLX             malloc
48E1D6:  MOV             R5, R0
48E1D8:  MOVS            R1, #byte_4; void *
48E1DA:  STR             R4, [R5]
48E1DC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E1E0:  MOV             R0, R5; p
48E1E2:  BLX             free
48E1E6:  LDR.W           R0, [R8]; CPedType::ms_apPedTypes
48E1EA:  MOVS            R1, #3; int
48E1EC:  ADD             R0, R6; this
48E1EE:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
48E1F2:  MOV             R4, R0
48E1F4:  MOVS            R0, #4; byte_count
48E1F6:  BLX             malloc
48E1FA:  MOV             R5, R0
48E1FC:  MOVS            R1, #byte_4; void *
48E1FE:  STR             R4, [R5]
48E200:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E204:  MOV             R0, R5; p
48E206:  BLX             free
48E20A:  LDR.W           R0, [R8]; CPedType::ms_apPedTypes
48E20E:  MOVS            R1, #4; int
48E210:  ADD             R0, R6; this
48E212:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
48E216:  MOV             R4, R0
48E218:  MOVS            R0, #4; byte_count
48E21A:  BLX             malloc
48E21E:  MOV             R5, R0
48E220:  MOVS            R1, #byte_4; void *
48E222:  STR             R4, [R5]
48E224:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E228:  MOV             R0, R5; p
48E22A:  BLX             free
48E22E:  ADDS            R6, #0x14
48E230:  CMP.W           R6, #0x280
48E234:  BNE             loc_48E17A
48E236:  MOVS            R0, #1
48E238:  POP.W           {R8}
48E23C:  POP             {R4-R7,PC}
