; =========================================================
; Game Engine Function: _ZN19CTaskSimpleDieInCar10CreateTaskEv
; Address            : 0x49104C - 0x4910B2
; =========================================================

49104C:  PUSH            {R4,R5,R7,LR}
49104E:  ADD             R7, SP, #8
491050:  SUB             SP, SP, #0x10
491052:  LDR             R0, =(UseDataFence_ptr - 0x491058)
491054:  ADD             R0, PC; UseDataFence_ptr
491056:  LDR             R0, [R0]; UseDataFence
491058:  LDRB            R4, [R0]
49105A:  CBZ             R4, loc_491070
49105C:  LDR             R0, =(UseDataFence_ptr - 0x491064)
49105E:  MOVS            R1, #(stderr+2); void *
491060:  ADD             R0, PC; UseDataFence_ptr
491062:  LDR             R5, [R0]; UseDataFence
491064:  MOVS            R0, #0
491066:  STRB            R0, [R5]
491068:  ADD             R0, SP, #0x18+var_C; this
49106A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49106E:  STRB            R4, [R5]
491070:  ADD             R0, SP, #0x18+var_10; this
491072:  MOVS            R1, #byte_4; void *
491074:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491078:  LDR             R0, =(UseDataFence_ptr - 0x49107E)
49107A:  ADD             R0, PC; UseDataFence_ptr
49107C:  LDR             R0, [R0]; UseDataFence
49107E:  LDRB            R4, [R0]
491080:  CBZ             R4, loc_491098
491082:  LDR             R0, =(UseDataFence_ptr - 0x49108A)
491084:  MOVS            R1, #(stderr+2); void *
491086:  ADD             R0, PC; UseDataFence_ptr
491088:  LDR             R5, [R0]; UseDataFence
49108A:  MOVS            R0, #0
49108C:  STRB            R0, [R5]
49108E:  SUB.W           R0, R7, #-var_A; this
491092:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491096:  STRB            R4, [R5]
491098:  ADD             R0, SP, #0x18+var_14; this
49109A:  MOVS            R1, #byte_4; void *
49109C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4910A0:  MOVS            R0, #word_28; this
4910A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4910A6:  LDRD.W          R2, R1, [SP,#0x18+var_14]
4910AA:  BLX             j__ZN19CTaskSimpleDieInCarC2E12AssocGroupId11AnimationId; CTaskSimpleDieInCar::CTaskSimpleDieInCar(AssocGroupId,AnimationId)
4910AE:  ADD             SP, SP, #0x10
4910B0:  POP             {R4,R5,R7,PC}
