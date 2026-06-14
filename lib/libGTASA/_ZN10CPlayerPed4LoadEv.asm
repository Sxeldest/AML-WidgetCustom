; =========================================================
; Game Engine Function: _ZN10CPlayerPed4LoadEv
; Address            : 0x485178 - 0x4851F4
; =========================================================

485178:  PUSH            {R4-R7,LR}
48517A:  ADD             R7, SP, #0xC
48517C:  PUSH.W          {R8}
485180:  SUB.W           SP, SP, #0x230
485184:  MOV             R8, SP
485186:  ADD.W           R4, R8, #8
48518A:  MOV             R5, R0
48518C:  MOV             R0, R4; this
48518E:  BLX             j__ZN15CPedClothesDescC2Ev; CPedClothesDesc::CPedClothesDesc(void)
485192:  ADD             R0, SP, #0x240+var_14; this
485194:  MOVS            R1, #byte_4; void *
485196:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48519A:  ADD             R6, SP, #0x240+var_1B8
48519C:  MOV.W           R1, #(elf_hash_bucket+0xA8); void *
4851A0:  MOV             R0, R6; this
4851A2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4851A6:  MOV             R0, R6; this
4851A8:  MOV             R1, R5; CPed *
4851AA:  BLX             j__ZN17CPedSaveStructure7ExtractEP4CPed; CPedSaveStructure::Extract(CPed *)
4851AE:  ADD             R0, SP, #0x240+var_1B8; this
4851B0:  MOVS            R1, #byte_4; void *
4851B2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4851B6:  MOV             R0, R8; this
4851B8:  MOVS            R1, #dword_88; void *
4851BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4851BE:  LDR.W           R5, [R5,#0x444]
4851C2:  MOVS            R2, #0x78 ; 'x'; size_t
4851C4:  LDR             R1, [SP,#0x240+var_240]
4851C6:  LDR             R0, [R5]
4851C8:  STR             R1, [R0]
4851CA:  LDR             R0, [R5]
4851CC:  LDRB.W          R1, [SP,#0x240+var_23C]
4851D0:  STR             R1, [R0,#0x2C]
4851D2:  MOV             R1, R4; void *
4851D4:  LDR             R0, [R5,#4]; void *
4851D6:  BLX             memcpy_0
4851DA:  LDR             R0, [R5]
4851DC:  LDRB.W          R1, [SP,#0x240+var_1C0]
4851E0:  STRB.W          R1, [R5,#0x20]
4851E4:  LDR             R1, [SP,#0x240+var_1BC]
4851E6:  STR             R1, [R0,#0x14]
4851E8:  MOVS            R0, #1
4851EA:  ADD.W           SP, SP, #0x230
4851EE:  POP.W           {R8}
4851F2:  POP             {R4-R7,PC}
