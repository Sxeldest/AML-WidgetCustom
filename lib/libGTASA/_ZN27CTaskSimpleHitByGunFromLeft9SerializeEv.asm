; =========================================================
; Game Engine Function: _ZN27CTaskSimpleHitByGunFromLeft9SerializeEv
; Address            : 0x497A24 - 0x497AEA
; =========================================================

497A24:  PUSH            {R4-R7,LR}
497A26:  ADD             R7, SP, #0xC
497A28:  PUSH.W          {R8-R10}
497A2C:  SUB             SP, SP, #0x88
497A2E:  MOV             R4, R0
497A30:  LDR             R0, =(__stack_chk_guard_ptr - 0x497A36)
497A32:  ADD             R0, PC; __stack_chk_guard_ptr
497A34:  LDR             R0, [R0]; __stack_chk_guard
497A36:  LDR             R0, [R0]
497A38:  STR             R0, [SP,#0xA0+var_1C]
497A3A:  LDR             R0, [R4]
497A3C:  LDR             R1, [R0,#0x14]
497A3E:  MOV             R0, R4
497A40:  BLX             R1
497A42:  MOV             R8, R0
497A44:  LDR             R0, =(UseDataFence_ptr - 0x497A4A)
497A46:  ADD             R0, PC; UseDataFence_ptr
497A48:  LDR             R0, [R0]; UseDataFence
497A4A:  LDRB            R5, [R0]
497A4C:  CBZ             R5, loc_497A90
497A4E:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497A5A)
497A50:  MOVS            R3, #0
497A52:  LDR             R1, =(UseDataFence_ptr - 0x497A5C)
497A54:  LDR             R2, =(DataFence_ptr - 0x497A5E)
497A56:  ADD             R0, PC; currentSaveFenceCount_ptr
497A58:  ADD             R1, PC; UseDataFence_ptr
497A5A:  ADD             R2, PC; DataFence_ptr
497A5C:  LDR             R0, [R0]; currentSaveFenceCount
497A5E:  LDR.W           R9, [R1]; UseDataFence
497A62:  LDR             R1, [R2]; DataFence
497A64:  LDR             R2, [R0]
497A66:  STRB.W          R3, [R9]
497A6A:  LDRH            R1, [R1]
497A6C:  ADDS            R3, R2, #1
497A6E:  STR             R3, [R0]
497A70:  MOVS            R0, #2; byte_count
497A72:  ADD.W           R10, R2, R1
497A76:  BLX             malloc
497A7A:  MOV             R6, R0
497A7C:  MOVS            R1, #(stderr+2); void *
497A7E:  STRH.W          R10, [R6]
497A82:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497A86:  MOV             R0, R6; p
497A88:  BLX             free
497A8C:  STRB.W          R5, [R9]
497A90:  MOVS            R0, #4; byte_count
497A92:  BLX             malloc
497A96:  MOV             R6, R0
497A98:  MOVS            R1, #byte_4; void *
497A9A:  STR.W           R8, [R6]
497A9E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497AA2:  MOV             R0, R6; p
497AA4:  BLX             free
497AA8:  LDR             R0, [R4]
497AAA:  LDR             R1, [R0,#0x14]
497AAC:  MOV             R0, R4
497AAE:  BLX             R1
497AB0:  MOVW            R1, #0x199
497AB4:  CMP             R0, R1
497AB6:  BEQ             loc_497AD0
497AB8:  LDR             R0, [R4]
497ABA:  LDR             R1, [R0,#0x14]
497ABC:  MOV             R0, R4
497ABE:  BLX             R1
497AC0:  LDR             R1, =(aErrorClassDIsN - 0x497ACE); "ERROR - class %d is not type %d seriali"...
497AC2:  MOV             R2, R0
497AC4:  ADD             R0, SP, #0xA0+var_9C
497AC6:  MOVW            R3, #0x199
497ACA:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
497ACC:  BL              sub_5E6BC0
497AD0:  LDR             R0, =(__stack_chk_guard_ptr - 0x497AD8)
497AD2:  LDR             R1, [SP,#0xA0+var_1C]
497AD4:  ADD             R0, PC; __stack_chk_guard_ptr
497AD6:  LDR             R0, [R0]; __stack_chk_guard
497AD8:  LDR             R0, [R0]
497ADA:  SUBS            R0, R0, R1
497ADC:  ITTT EQ
497ADE:  ADDEQ           SP, SP, #0x88
497AE0:  POPEQ.W         {R8-R10}
497AE4:  POPEQ           {R4-R7,PC}
497AE6:  BLX             __stack_chk_fail
