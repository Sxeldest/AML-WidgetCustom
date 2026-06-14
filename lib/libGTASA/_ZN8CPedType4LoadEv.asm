; =========================================================
; Game Engine Function: _ZN8CPedType4LoadEv
; Address            : 0x48E244 - 0x48E2CE
; =========================================================

48E244:  PUSH            {R4-R7,LR}
48E246:  ADD             R7, SP, #0xC
48E248:  PUSH.W          {R11}
48E24C:  SUB             SP, SP, #8
48E24E:  LDR             R0, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x48E258)
48E250:  ADD             R4, SP, #0x18+var_14
48E252:  MOVS            R5, #0
48E254:  ADD             R0, PC; _ZN8CPedType13ms_apPedTypesE_ptr
48E256:  LDR             R6, [R0]; CPedType::ms_apPedTypes ...
48E258:  MOV             R0, R4; this
48E25A:  MOVS            R1, #byte_4; void *
48E25C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E260:  LDR             R0, [R6]; CPedType::ms_apPedTypes
48E262:  MOVS            R1, #0; int
48E264:  LDR             R2, [SP,#0x18+var_14]; unsigned int
48E266:  ADD             R0, R5; this
48E268:  BLX             j__ZN13CAcquaintance16SetAcquaintancesEij; CAcquaintance::SetAcquaintances(int,uint)
48E26C:  MOV             R0, R4; this
48E26E:  MOVS            R1, #byte_4; void *
48E270:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E274:  LDR             R0, [R6]; CPedType::ms_apPedTypes
48E276:  MOVS            R1, #1; int
48E278:  LDR             R2, [SP,#0x18+var_14]; unsigned int
48E27A:  ADD             R0, R5; this
48E27C:  BLX             j__ZN13CAcquaintance16SetAcquaintancesEij; CAcquaintance::SetAcquaintances(int,uint)
48E280:  MOV             R0, R4; this
48E282:  MOVS            R1, #byte_4; void *
48E284:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E288:  LDR             R0, [R6]; CPedType::ms_apPedTypes
48E28A:  MOVS            R1, #2; int
48E28C:  LDR             R2, [SP,#0x18+var_14]; unsigned int
48E28E:  ADD             R0, R5; this
48E290:  BLX             j__ZN13CAcquaintance16SetAcquaintancesEij; CAcquaintance::SetAcquaintances(int,uint)
48E294:  MOV             R0, R4; this
48E296:  MOVS            R1, #byte_4; void *
48E298:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E29C:  LDR             R0, [R6]; CPedType::ms_apPedTypes
48E29E:  MOVS            R1, #3; int
48E2A0:  LDR             R2, [SP,#0x18+var_14]; unsigned int
48E2A2:  ADD             R0, R5; this
48E2A4:  BLX             j__ZN13CAcquaintance16SetAcquaintancesEij; CAcquaintance::SetAcquaintances(int,uint)
48E2A8:  MOV             R0, R4; this
48E2AA:  MOVS            R1, #byte_4; void *
48E2AC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E2B0:  LDR             R0, [R6]; CPedType::ms_apPedTypes
48E2B2:  MOVS            R1, #4; int
48E2B4:  LDR             R2, [SP,#0x18+var_14]; unsigned int
48E2B6:  ADD             R0, R5; this
48E2B8:  BLX             j__ZN13CAcquaintance16SetAcquaintancesEij; CAcquaintance::SetAcquaintances(int,uint)
48E2BC:  ADDS            R5, #0x14
48E2BE:  CMP.W           R5, #0x280
48E2C2:  BNE             loc_48E258
48E2C4:  MOVS            R0, #1
48E2C6:  ADD             SP, SP, #8
48E2C8:  POP.W           {R11}
48E2CC:  POP             {R4-R7,PC}
