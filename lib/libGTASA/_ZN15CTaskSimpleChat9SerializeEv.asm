; =========================================================
; Game Engine Function: _ZN15CTaskSimpleChat9SerializeEv
; Address            : 0x497F0C - 0x498054
; =========================================================

497F0C:  PUSH            {R4-R7,LR}
497F0E:  ADD             R7, SP, #0xC
497F10:  PUSH.W          {R8-R10}
497F14:  SUB             SP, SP, #0x88
497F16:  MOV             R4, R0
497F18:  LDR             R0, =(__stack_chk_guard_ptr - 0x497F1E)
497F1A:  ADD             R0, PC; __stack_chk_guard_ptr
497F1C:  LDR             R0, [R0]; __stack_chk_guard
497F1E:  LDR             R0, [R0]
497F20:  STR             R0, [SP,#0xA0+var_1C]
497F22:  LDR             R0, [R4]
497F24:  LDR             R1, [R0,#0x14]
497F26:  MOV             R0, R4
497F28:  BLX             R1
497F2A:  MOV             R8, R0
497F2C:  LDR             R0, =(UseDataFence_ptr - 0x497F32)
497F2E:  ADD             R0, PC; UseDataFence_ptr
497F30:  LDR             R0, [R0]; UseDataFence
497F32:  LDRB            R5, [R0]
497F34:  CBZ             R5, loc_497F78
497F36:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497F42)
497F38:  MOVS            R3, #0
497F3A:  LDR             R1, =(UseDataFence_ptr - 0x497F44)
497F3C:  LDR             R2, =(DataFence_ptr - 0x497F46)
497F3E:  ADD             R0, PC; currentSaveFenceCount_ptr
497F40:  ADD             R1, PC; UseDataFence_ptr
497F42:  ADD             R2, PC; DataFence_ptr
497F44:  LDR             R0, [R0]; currentSaveFenceCount
497F46:  LDR.W           R9, [R1]; UseDataFence
497F4A:  LDR             R1, [R2]; DataFence
497F4C:  LDR             R2, [R0]
497F4E:  STRB.W          R3, [R9]
497F52:  LDRH            R1, [R1]
497F54:  ADDS            R3, R2, #1
497F56:  STR             R3, [R0]
497F58:  MOVS            R0, #2; byte_count
497F5A:  ADD.W           R10, R2, R1
497F5E:  BLX             malloc
497F62:  MOV             R6, R0
497F64:  MOVS            R1, #(stderr+2); void *
497F66:  STRH.W          R10, [R6]
497F6A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497F6E:  MOV             R0, R6; p
497F70:  BLX             free
497F74:  STRB.W          R5, [R9]
497F78:  MOVS            R0, #4; byte_count
497F7A:  BLX             malloc
497F7E:  MOV             R6, R0
497F80:  MOVS            R1, #byte_4; void *
497F82:  STR.W           R8, [R6]
497F86:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497F8A:  MOV             R0, R6; p
497F8C:  BLX             free
497F90:  LDR             R0, [R4]
497F92:  LDR             R1, [R0,#0x14]
497F94:  MOV             R0, R4
497F96:  BLX             R1
497F98:  CMP.W           R0, #0x1A0
497F9C:  BNE             loc_498022
497F9E:  LDR             R0, =(UseDataFence_ptr - 0x497FA4)
497FA0:  ADD             R0, PC; UseDataFence_ptr
497FA2:  LDR             R0, [R0]; UseDataFence
497FA4:  LDRB            R6, [R0]
497FA6:  CBZ             R6, loc_497FEA
497FA8:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497FB4)
497FAA:  MOVS            R3, #0
497FAC:  LDR             R1, =(UseDataFence_ptr - 0x497FB6)
497FAE:  LDR             R2, =(DataFence_ptr - 0x497FB8)
497FB0:  ADD             R0, PC; currentSaveFenceCount_ptr
497FB2:  ADD             R1, PC; UseDataFence_ptr
497FB4:  ADD             R2, PC; DataFence_ptr
497FB6:  LDR             R0, [R0]; currentSaveFenceCount
497FB8:  LDR.W           R8, [R1]; UseDataFence
497FBC:  LDR             R1, [R2]; DataFence
497FBE:  LDR             R2, [R0]
497FC0:  STRB.W          R3, [R8]
497FC4:  LDRH            R1, [R1]
497FC6:  ADDS            R3, R2, #1
497FC8:  STR             R3, [R0]
497FCA:  MOVS            R0, #2; byte_count
497FCC:  ADD.W           R9, R2, R1
497FD0:  BLX             malloc
497FD4:  MOV             R5, R0
497FD6:  MOVS            R1, #(stderr+2); void *
497FD8:  STRH.W          R9, [R5]
497FDC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497FE0:  MOV             R0, R5; p
497FE2:  BLX             free
497FE6:  STRB.W          R6, [R8]
497FEA:  MOVS            R0, #4; byte_count
497FEC:  BLX             malloc
497FF0:  MOV             R5, R0
497FF2:  LDR             R0, [R4,#0x20]
497FF4:  STR             R0, [R5]
497FF6:  MOV             R0, R5; this
497FF8:  MOVS            R1, #byte_4; void *
497FFA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497FFE:  LDR             R0, =(__stack_chk_guard_ptr - 0x498006)
498000:  LDR             R1, [SP,#0xA0+var_1C]
498002:  ADD             R0, PC; __stack_chk_guard_ptr
498004:  LDR             R0, [R0]; __stack_chk_guard
498006:  LDR             R0, [R0]
498008:  SUBS            R0, R0, R1
49800A:  ITTTT EQ
49800C:  MOVEQ           R0, R5; p
49800E:  ADDEQ           SP, SP, #0x88
498010:  POPEQ.W         {R8-R10}
498014:  POPEQ.W         {R4-R7,LR}
498018:  IT EQ
49801A:  BEQ.W           j_free
49801E:  BLX             __stack_chk_fail
498022:  LDR             R0, [R4]
498024:  LDR             R1, [R0,#0x14]
498026:  MOV             R0, R4
498028:  BLX             R1
49802A:  LDR             R1, =(aErrorClassDIsN - 0x498038); "ERROR - class %d is not type %d seriali"...
49802C:  MOV             R2, R0
49802E:  ADD             R0, SP, #0xA0+var_9C
498030:  MOV.W           R3, #0x1A0
498034:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
498036:  BL              sub_5E6BC0
49803A:  LDR             R0, =(__stack_chk_guard_ptr - 0x498042)
49803C:  LDR             R1, [SP,#0xA0+var_1C]
49803E:  ADD             R0, PC; __stack_chk_guard_ptr
498040:  LDR             R0, [R0]; __stack_chk_guard
498042:  LDR             R0, [R0]
498044:  SUBS            R0, R0, R1
498046:  ITTT EQ
498048:  ADDEQ           SP, SP, #0x88
49804A:  POPEQ.W         {R8-R10}
49804E:  POPEQ           {R4-R7,PC}
498050:  BLX             __stack_chk_fail
