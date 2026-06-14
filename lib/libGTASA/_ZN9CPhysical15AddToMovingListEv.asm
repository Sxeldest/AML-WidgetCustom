; =========================================================
; Game Engine Function: _ZN9CPhysical15AddToMovingListEv
; Address            : 0x3FD2E4 - 0x3FD324
; =========================================================

3FD2E4:  PUSH            {R4,R6,R7,LR}
3FD2E6:  ADD             R7, SP, #8
3FD2E8:  MOV             R4, R0
3FD2EA:  LDR.W           R0, [R4,#0xB8]
3FD2EE:  CMP             R0, #0
3FD2F0:  IT NE
3FD2F2:  POPNE           {R4,R6,R7,PC}
3FD2F4:  LDRB            R0, [R4,#0x1E]
3FD2F6:  LSLS            R0, R0, #0x1D
3FD2F8:  BMI             locret_3FD322
3FD2FA:  MOVS            R0, #(byte_9+3); this
3FD2FC:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
3FD300:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3FD30A)
3FD302:  MOVS            R2, #0
3FD304:  STR             R4, [R0]
3FD306:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3FD308:  STR.W           R0, [R4,#0xB8]
3FD30C:  STR             R2, [R0,#8]
3FD30E:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3FD310:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs
3FD312:  STR             R1, [R0,#4]
3FD314:  CMP             R1, #0
3FD316:  IT NE
3FD318:  STRNE           R0, [R1,#8]
3FD31A:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3FD320)
3FD31C:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3FD31E:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3FD320:  STR             R0, [R1]; CWorld::ms_listMovingEntityPtrs
3FD322:  POP             {R4,R6,R7,PC}
