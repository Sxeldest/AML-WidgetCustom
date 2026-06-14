; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUp10CreateTaskEv
; Address            : 0x490F30 - 0x490FBC
; =========================================================

490F30:  PUSH            {R4,R5,R7,LR}
490F32:  ADD             R7, SP, #8
490F34:  SUB             SP, SP, #0x10
490F36:  LDR             R0, =(UseDataFence_ptr - 0x490F3C)
490F38:  ADD             R0, PC; UseDataFence_ptr
490F3A:  LDR             R0, [R0]; UseDataFence
490F3C:  LDRB            R4, [R0]
490F3E:  CBZ             R4, loc_490F54
490F40:  LDR             R0, =(UseDataFence_ptr - 0x490F48)
490F42:  MOVS            R1, #(stderr+2); void *
490F44:  ADD             R0, PC; UseDataFence_ptr
490F46:  LDR             R5, [R0]; UseDataFence
490F48:  MOVS            R0, #0
490F4A:  STRB            R0, [R5]
490F4C:  ADD             R0, SP, #0x18+var_C; this
490F4E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490F52:  STRB            R4, [R5]
490F54:  ADD             R0, SP, #0x18+var_C; this
490F56:  MOVS            R1, #byte_4; void *
490F58:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490F5C:  LDR             R0, =(UseDataFence_ptr - 0x490F62)
490F5E:  ADD             R0, PC; UseDataFence_ptr
490F60:  LDR             R0, [R0]; UseDataFence
490F62:  LDRB            R4, [R0]
490F64:  CBZ             R4, loc_490F7A
490F66:  LDR             R0, =(UseDataFence_ptr - 0x490F6E)
490F68:  MOVS            R1, #(stderr+2); void *
490F6A:  ADD             R0, PC; UseDataFence_ptr
490F6C:  LDR             R5, [R0]; UseDataFence
490F6E:  MOVS            R0, #0
490F70:  STRB            R0, [R5]
490F72:  ADD             R0, SP, #0x18+var_10; this
490F74:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490F78:  STRB            R4, [R5]
490F7A:  ADD             R0, SP, #0x18+var_10; this
490F7C:  MOVS            R1, #byte_4; void *
490F7E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490F82:  LDR             R0, =(UseDataFence_ptr - 0x490F88)
490F84:  ADD             R0, PC; UseDataFence_ptr
490F86:  LDR             R0, [R0]; UseDataFence
490F88:  LDRB            R4, [R0]
490F8A:  CBZ             R4, loc_490FA0
490F8C:  LDR             R0, =(UseDataFence_ptr - 0x490F94)
490F8E:  MOVS            R1, #(stderr+2); void *
490F90:  ADD             R0, PC; UseDataFence_ptr
490F92:  LDR             R5, [R0]; UseDataFence
490F94:  MOVS            R0, #0
490F96:  STRB            R0, [R5]
490F98:  ADD             R0, SP, #0x18+var_14; this
490F9A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490F9E:  STRB            R4, [R5]
490FA0:  ADD             R0, SP, #0x18+var_14; this
490FA2:  MOVS            R1, #byte_4; void *
490FA4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490FA8:  MOVS            R0, #off_18; this
490FAA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
490FAE:  LDRD.W          R3, R2, [SP,#0x18+var_14]
490FB2:  LDR             R1, [SP,#0x18+var_C]
490FB4:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
490FB8:  ADD             SP, SP, #0x10
490FBA:  POP             {R4,R5,R7,PC}
