; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHitWall9SerializeEv
; Address            : 0x497C90 - 0x497D56
; =========================================================

497C90:  PUSH            {R4-R7,LR}
497C92:  ADD             R7, SP, #0xC
497C94:  PUSH.W          {R8-R10}
497C98:  SUB             SP, SP, #0x88
497C9A:  MOV             R4, R0
497C9C:  LDR             R0, =(__stack_chk_guard_ptr - 0x497CA2)
497C9E:  ADD             R0, PC; __stack_chk_guard_ptr
497CA0:  LDR             R0, [R0]; __stack_chk_guard
497CA2:  LDR             R0, [R0]
497CA4:  STR             R0, [SP,#0xA0+var_1C]
497CA6:  LDR             R0, [R4]
497CA8:  LDR             R1, [R0,#0x14]
497CAA:  MOV             R0, R4
497CAC:  BLX             R1
497CAE:  MOV             R8, R0
497CB0:  LDR             R0, =(UseDataFence_ptr - 0x497CB6)
497CB2:  ADD             R0, PC; UseDataFence_ptr
497CB4:  LDR             R0, [R0]; UseDataFence
497CB6:  LDRB            R5, [R0]
497CB8:  CBZ             R5, loc_497CFC
497CBA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497CC6)
497CBC:  MOVS            R3, #0
497CBE:  LDR             R1, =(UseDataFence_ptr - 0x497CC8)
497CC0:  LDR             R2, =(DataFence_ptr - 0x497CCA)
497CC2:  ADD             R0, PC; currentSaveFenceCount_ptr
497CC4:  ADD             R1, PC; UseDataFence_ptr
497CC6:  ADD             R2, PC; DataFence_ptr
497CC8:  LDR             R0, [R0]; currentSaveFenceCount
497CCA:  LDR.W           R9, [R1]; UseDataFence
497CCE:  LDR             R1, [R2]; DataFence
497CD0:  LDR             R2, [R0]
497CD2:  STRB.W          R3, [R9]
497CD6:  LDRH            R1, [R1]
497CD8:  ADDS            R3, R2, #1
497CDA:  STR             R3, [R0]
497CDC:  MOVS            R0, #2; byte_count
497CDE:  ADD.W           R10, R2, R1
497CE2:  BLX             malloc
497CE6:  MOV             R6, R0
497CE8:  MOVS            R1, #(stderr+2); void *
497CEA:  STRH.W          R10, [R6]
497CEE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497CF2:  MOV             R0, R6; p
497CF4:  BLX             free
497CF8:  STRB.W          R5, [R9]
497CFC:  MOVS            R0, #4; byte_count
497CFE:  BLX             malloc
497D02:  MOV             R6, R0
497D04:  MOVS            R1, #byte_4; void *
497D06:  STR.W           R8, [R6]
497D0A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497D0E:  MOV             R0, R6; p
497D10:  BLX             free
497D14:  LDR             R0, [R4]
497D16:  LDR             R1, [R0,#0x14]
497D18:  MOV             R0, R4
497D1A:  BLX             R1
497D1C:  MOVW            R1, #0x19B
497D20:  CMP             R0, R1
497D22:  BEQ             loc_497D3C
497D24:  LDR             R0, [R4]
497D26:  LDR             R1, [R0,#0x14]
497D28:  MOV             R0, R4
497D2A:  BLX             R1
497D2C:  LDR             R1, =(aErrorClassDIsN - 0x497D3A); "ERROR - class %d is not type %d seriali"...
497D2E:  MOV             R2, R0
497D30:  ADD             R0, SP, #0xA0+var_9C
497D32:  MOVW            R3, #0x19B
497D36:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
497D38:  BL              sub_5E6BC0
497D3C:  LDR             R0, =(__stack_chk_guard_ptr - 0x497D44)
497D3E:  LDR             R1, [SP,#0xA0+var_1C]
497D40:  ADD             R0, PC; __stack_chk_guard_ptr
497D42:  LDR             R0, [R0]; __stack_chk_guard
497D44:  LDR             R0, [R0]
497D46:  SUBS            R0, R0, R1
497D48:  ITTT EQ
497D4A:  ADDEQ           SP, SP, #0x88
497D4C:  POPEQ.W         {R8-R10}
497D50:  POPEQ           {R4-R7,PC}
497D52:  BLX             __stack_chk_fail
