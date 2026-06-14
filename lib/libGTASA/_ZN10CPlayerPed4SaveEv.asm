; =========================================================
; Game Engine Function: _ZN10CPlayerPed4SaveEv
; Address            : 0x4850F2 - 0x485178
; =========================================================

4850F2:  PUSH            {R4-R7,LR}
4850F4:  ADD             R7, SP, #0xC
4850F6:  PUSH.W          {R11}
4850FA:  SUB             SP, SP, #0x88
4850FC:  MOV             R5, R0
4850FE:  MOV             R4, SP
485100:  ADD.W           R0, R4, #8; this
485104:  BLX             j__ZN15CPedClothesDescC2Ev; CPedClothesDesc::CPedClothesDesc(void)
485108:  LDR.W           R6, [R5,#0x444]
48510C:  MOVS            R2, #0x78 ; 'x'; size_t
48510E:  LDR             R1, [R6]
485110:  LDR             R1, [R1]
485112:  STR             R1, [SP,#0x98+var_98]
485114:  LDR             R1, [R6]
485116:  LDR             R1, [R1,#0x2C]
485118:  STRB.W          R1, [SP,#0x98+var_94]
48511C:  LDR             R1, [R6,#4]; void *
48511E:  BLX             memcpy_0
485122:  LDRB.W          R0, [R6,#0x20]
485126:  STRB.W          R0, [SP,#0x98+var_18]
48512A:  LDR             R0, [R6]
48512C:  LDR             R0, [R0,#0x14]
48512E:  STR             R0, [SP,#0x98+var_14]
485130:  MOV             R0, R5; this
485132:  BLX             j__ZN4CPed4SaveEv; CPed::Save(void)
485136:  MOVS            R0, #4; byte_count
485138:  BLX             malloc
48513C:  MOV             R5, R0
48513E:  MOVS            R0, #0x88
485140:  STR             R0, [R5]
485142:  MOV             R0, R5; this
485144:  MOVS            R1, #byte_4; void *
485146:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48514A:  MOV             R0, R5; p
48514C:  BLX             free
485150:  MOVS            R0, #0x88; byte_count
485152:  BLX             malloc
485156:  MOV             R1, R4; void *
485158:  MOVS            R2, #0x88; size_t
48515A:  MOV             R5, R0
48515C:  BLX             memcpy_1
485160:  MOV             R0, R5; this
485162:  MOVS            R1, #dword_88; void *
485164:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
485168:  MOV             R0, R5; p
48516A:  BLX             free
48516E:  MOVS            R0, #1
485170:  ADD             SP, SP, #0x88
485172:  POP.W           {R11}
485176:  POP             {R4-R7,PC}
