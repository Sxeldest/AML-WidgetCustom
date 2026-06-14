; =========================================================
; Game Engine Function: _ZN10ArrayStateD2Ev
; Address            : 0x1BD29C - 0x1BD34E
; =========================================================

1BD29C:  PUSH            {R4,R5,R7,LR}; Alternative name is 'ArrayState::~ArrayState()'
1BD29E:  ADD             R7, SP, #8
1BD2A0:  MOV             R4, R0
1BD2A2:  LDRB.W          R0, [R4,#0x20]
1BD2A6:  CMP             R0, #0
1BD2A8:  BEQ             loc_1BD33A
1BD2AA:  LDR             R0, [R4]; p
1BD2AC:  CBZ             R0, loc_1BD2B6
1BD2AE:  BLX             free
1BD2B2:  MOVS            R0, #0
1BD2B4:  STR             R0, [R4]
1BD2B6:  LDR             R0, [R4,#0x10]; p
1BD2B8:  CBZ             R0, loc_1BD2C2
1BD2BA:  BLX             free
1BD2BE:  MOVS            R0, #0
1BD2C0:  STR             R0, [R4,#0x10]
1BD2C2:  LDR             R5, [R4,#0x24]
1BD2C4:  CBZ             R5, loc_1BD30A
1BD2C6:  LDR             R0, [R5]
1BD2C8:  SUBS            R0, #1
1BD2CA:  STR             R0, [R5]
1BD2CC:  BNE             loc_1BD306
1BD2CE:  LDRD.W          R0, R2, [R5,#4]; RQVertexBuffer *
1BD2D2:  LDR             R1, [R5,#0xC]; RQIndexBuffer *
1BD2D4:  BLX             j__ZN19PreallocatedBuffers15ForceDeallocateEP13RQIndexBufferP14RQVertexBuffer; PreallocatedBuffers::ForceDeallocate(RQIndexBuffer *,RQVertexBuffer *)
1BD2D8:  CMP             R0, #1
1BD2DA:  BNE             loc_1BD300
1BD2DC:  LDR             R0, [R5,#4]; void *
1BD2DE:  CBZ             R0, loc_1BD2E8
1BD2E0:  BLX             _ZdlPv; operator delete(void *)
1BD2E4:  LDR             R0, [R5,#4]
1BD2E6:  B               loc_1BD2EA
1BD2E8:  MOVS            R0, #0
1BD2EA:  LDR             R1, =(curPreallocSource_ptr - 0x1BD2F0)
1BD2EC:  ADD             R1, PC; curPreallocSource_ptr
1BD2EE:  LDR             R1, [R1]; curPreallocSource
1BD2F0:  LDR             R1, [R1]
1BD2F2:  CMP             R0, R1
1BD2F4:  BNE             loc_1BD300
1BD2F6:  LDR             R0, =(curPreallocSource_ptr - 0x1BD2FE)
1BD2F8:  MOVS            R1, #0
1BD2FA:  ADD             R0, PC; curPreallocSource_ptr
1BD2FC:  LDR             R0, [R0]; curPreallocSource
1BD2FE:  STR             R1, [R0]
1BD300:  MOV             R0, R5; void *
1BD302:  BLX             _ZdlPv; operator delete(void *)
1BD306:  MOVS            R0, #0
1BD308:  STR             R0, [R4,#0x24]
1BD30A:  LDR.W           R0, [R4,#0xBC]; this
1BD30E:  CMP             R0, #0
1BD310:  IT NE
1BD312:  BLXNE           j__ZN13RQVertexState6DeleteEPS_; RQVertexState::Delete(RQVertexState*)
1BD316:  LDR             R0, =(curGPUResource_ptr - 0x1BD31C)
1BD318:  ADD             R0, PC; curGPUResource_ptr
1BD31A:  LDR             R0, [R0]; curGPUResource
1BD31C:  LDR             R0, [R0]
1BD31E:  CBZ             R0, loc_1BD33A
1BD320:  ADDS            R0, #0x10
1BD322:  MOVS            R2, #0
1BD324:  MOV             R3, R0
1BD326:  MOV             R1, R2
1BD328:  LDR             R2, [R3]
1BD32A:  CMP             R2, #0
1BD32C:  ITT NE
1BD32E:  ADDNE.W         R3, R2, #0x28 ; '('
1BD332:  CMPNE           R2, R4
1BD334:  BNE             loc_1BD326
1BD336:  CMP             R2, R4
1BD338:  BEQ             loc_1BD33E
1BD33A:  MOV             R0, R4
1BD33C:  POP             {R4,R5,R7,PC}
1BD33E:  CMP             R1, #0
1BD340:  LDR             R2, [R4,#0x28]
1BD342:  IT NE
1BD344:  ADDNE.W         R0, R1, #0x28 ; '('
1BD348:  STR             R2, [R0]
1BD34A:  MOV             R0, R4
1BD34C:  POP             {R4,R5,R7,PC}
