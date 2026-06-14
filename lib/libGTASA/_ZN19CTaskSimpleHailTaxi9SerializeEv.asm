; =========================================================
; Game Engine Function: _ZN19CTaskSimpleHailTaxi9SerializeEv
; Address            : 0x496FD0 - 0x497090
; =========================================================

496FD0:  PUSH            {R4-R7,LR}
496FD2:  ADD             R7, SP, #0xC
496FD4:  PUSH.W          {R8-R10}
496FD8:  SUB             SP, SP, #0x88
496FDA:  MOV             R4, R0
496FDC:  LDR             R0, =(__stack_chk_guard_ptr - 0x496FE2)
496FDE:  ADD             R0, PC; __stack_chk_guard_ptr
496FE0:  LDR             R0, [R0]; __stack_chk_guard
496FE2:  LDR             R0, [R0]
496FE4:  STR             R0, [SP,#0xA0+var_1C]
496FE6:  LDR             R0, [R4]
496FE8:  LDR             R1, [R0,#0x14]
496FEA:  MOV             R0, R4
496FEC:  BLX             R1
496FEE:  MOV             R8, R0
496FF0:  LDR             R0, =(UseDataFence_ptr - 0x496FF6)
496FF2:  ADD             R0, PC; UseDataFence_ptr
496FF4:  LDR             R0, [R0]; UseDataFence
496FF6:  LDRB            R5, [R0]
496FF8:  CBZ             R5, loc_49703C
496FFA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497006)
496FFC:  MOVS            R3, #0
496FFE:  LDR             R1, =(UseDataFence_ptr - 0x497008)
497000:  LDR             R2, =(DataFence_ptr - 0x49700A)
497002:  ADD             R0, PC; currentSaveFenceCount_ptr
497004:  ADD             R1, PC; UseDataFence_ptr
497006:  ADD             R2, PC; DataFence_ptr
497008:  LDR             R0, [R0]; currentSaveFenceCount
49700A:  LDR.W           R9, [R1]; UseDataFence
49700E:  LDR             R1, [R2]; DataFence
497010:  LDR             R2, [R0]
497012:  STRB.W          R3, [R9]
497016:  LDRH            R1, [R1]
497018:  ADDS            R3, R2, #1
49701A:  STR             R3, [R0]
49701C:  MOVS            R0, #2; byte_count
49701E:  ADD.W           R10, R2, R1
497022:  BLX             malloc
497026:  MOV             R6, R0
497028:  MOVS            R1, #(stderr+2); void *
49702A:  STRH.W          R10, [R6]
49702E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497032:  MOV             R0, R6; p
497034:  BLX             free
497038:  STRB.W          R5, [R9]
49703C:  MOVS            R0, #4; byte_count
49703E:  BLX             malloc
497042:  MOV             R6, R0
497044:  MOVS            R1, #byte_4; void *
497046:  STR.W           R8, [R6]
49704A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49704E:  MOV             R0, R6; p
497050:  BLX             free
497054:  LDR             R0, [R4]
497056:  LDR             R1, [R0,#0x14]
497058:  MOV             R0, R4
49705A:  BLX             R1
49705C:  CMP             R0, #0xE5
49705E:  BEQ             loc_497076
497060:  LDR             R0, [R4]
497062:  LDR             R1, [R0,#0x14]
497064:  MOV             R0, R4
497066:  BLX             R1
497068:  LDR             R1, =(aErrorClassDIsN - 0x497074); "ERROR - class %d is not type %d seriali"...
49706A:  MOV             R2, R0
49706C:  ADD             R0, SP, #0xA0+var_9C
49706E:  MOVS            R3, #0xE5
497070:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
497072:  BL              sub_5E6BC0
497076:  LDR             R0, =(__stack_chk_guard_ptr - 0x49707E)
497078:  LDR             R1, [SP,#0xA0+var_1C]
49707A:  ADD             R0, PC; __stack_chk_guard_ptr
49707C:  LDR             R0, [R0]; __stack_chk_guard
49707E:  LDR             R0, [R0]
497080:  SUBS            R0, R0, R1
497082:  ITTT EQ
497084:  ADDEQ           SP, SP, #0x88
497086:  POPEQ.W         {R8-R10}
49708A:  POPEQ           {R4-R7,PC}
49708C:  BLX             __stack_chk_fail
