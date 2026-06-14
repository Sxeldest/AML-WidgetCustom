; =========================================================
; Game Engine Function: _ZN19CTaskSimpleDetonate9SerializeEv
; Address            : 0x4980E8 - 0x498232
; =========================================================

4980E8:  PUSH            {R4-R7,LR}
4980EA:  ADD             R7, SP, #0xC
4980EC:  PUSH.W          {R8-R10}
4980F0:  SUB             SP, SP, #0x88
4980F2:  MOV             R4, R0
4980F4:  LDR             R0, =(__stack_chk_guard_ptr - 0x4980FA)
4980F6:  ADD             R0, PC; __stack_chk_guard_ptr
4980F8:  LDR             R0, [R0]; __stack_chk_guard
4980FA:  LDR             R0, [R0]
4980FC:  STR             R0, [SP,#0xA0+var_1C]
4980FE:  LDR             R0, [R4]
498100:  LDR             R1, [R0,#0x14]
498102:  MOV             R0, R4
498104:  BLX             R1
498106:  MOV             R8, R0
498108:  LDR             R0, =(UseDataFence_ptr - 0x49810E)
49810A:  ADD             R0, PC; UseDataFence_ptr
49810C:  LDR             R0, [R0]; UseDataFence
49810E:  LDRB            R5, [R0]
498110:  CBZ             R5, loc_498154
498112:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49811E)
498114:  MOVS            R3, #0
498116:  LDR             R1, =(UseDataFence_ptr - 0x498120)
498118:  LDR             R2, =(DataFence_ptr - 0x498122)
49811A:  ADD             R0, PC; currentSaveFenceCount_ptr
49811C:  ADD             R1, PC; UseDataFence_ptr
49811E:  ADD             R2, PC; DataFence_ptr
498120:  LDR             R0, [R0]; currentSaveFenceCount
498122:  LDR.W           R9, [R1]; UseDataFence
498126:  LDR             R1, [R2]; DataFence
498128:  LDR             R2, [R0]
49812A:  STRB.W          R3, [R9]
49812E:  LDRH            R1, [R1]
498130:  ADDS            R3, R2, #1
498132:  STR             R3, [R0]
498134:  MOVS            R0, #2; byte_count
498136:  ADD.W           R10, R2, R1
49813A:  BLX             malloc
49813E:  MOV             R6, R0
498140:  MOVS            R1, #(stderr+2); void *
498142:  STRH.W          R10, [R6]
498146:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49814A:  MOV             R0, R6; p
49814C:  BLX             free
498150:  STRB.W          R5, [R9]
498154:  MOVS            R0, #4; byte_count
498156:  BLX             malloc
49815A:  MOV             R6, R0
49815C:  MOVS            R1, #byte_4; void *
49815E:  STR.W           R8, [R6]
498162:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498166:  MOV             R0, R6; p
498168:  BLX             free
49816C:  LDR             R0, [R4]
49816E:  LDR             R1, [R0,#0x14]
498170:  MOV             R0, R4
498172:  BLX             R1
498174:  MOVW            R1, #0x1A3
498178:  CMP             R0, R1
49817A:  BNE             loc_498200
49817C:  LDR             R0, =(UseDataFence_ptr - 0x498182)
49817E:  ADD             R0, PC; UseDataFence_ptr
498180:  LDR             R0, [R0]; UseDataFence
498182:  LDRB            R6, [R0]
498184:  CBZ             R6, loc_4981C8
498186:  LDR             R0, =(currentSaveFenceCount_ptr - 0x498192)
498188:  MOVS            R3, #0
49818A:  LDR             R1, =(UseDataFence_ptr - 0x498194)
49818C:  LDR             R2, =(DataFence_ptr - 0x498196)
49818E:  ADD             R0, PC; currentSaveFenceCount_ptr
498190:  ADD             R1, PC; UseDataFence_ptr
498192:  ADD             R2, PC; DataFence_ptr
498194:  LDR             R0, [R0]; currentSaveFenceCount
498196:  LDR.W           R8, [R1]; UseDataFence
49819A:  LDR             R1, [R2]; DataFence
49819C:  LDR             R2, [R0]
49819E:  STRB.W          R3, [R8]
4981A2:  LDRH            R1, [R1]
4981A4:  ADDS            R3, R2, #1
4981A6:  STR             R3, [R0]
4981A8:  MOVS            R0, #2; byte_count
4981AA:  ADD.W           R9, R2, R1
4981AE:  BLX             malloc
4981B2:  MOV             R5, R0
4981B4:  MOVS            R1, #(stderr+2); void *
4981B6:  STRH.W          R9, [R5]
4981BA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4981BE:  MOV             R0, R5; p
4981C0:  BLX             free
4981C4:  STRB.W          R6, [R8]
4981C8:  MOVS            R0, #4; byte_count
4981CA:  BLX             malloc
4981CE:  MOV             R5, R0
4981D0:  LDR             R0, [R4,#0x20]
4981D2:  STR             R0, [R5]
4981D4:  MOV             R0, R5; this
4981D6:  MOVS            R1, #byte_4; void *
4981D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4981DC:  LDR             R0, =(__stack_chk_guard_ptr - 0x4981E4)
4981DE:  LDR             R1, [SP,#0xA0+var_1C]
4981E0:  ADD             R0, PC; __stack_chk_guard_ptr
4981E2:  LDR             R0, [R0]; __stack_chk_guard
4981E4:  LDR             R0, [R0]
4981E6:  SUBS            R0, R0, R1
4981E8:  ITTTT EQ
4981EA:  MOVEQ           R0, R5; p
4981EC:  ADDEQ           SP, SP, #0x88
4981EE:  POPEQ.W         {R8-R10}
4981F2:  POPEQ.W         {R4-R7,LR}
4981F6:  IT EQ
4981F8:  BEQ.W           j_free
4981FC:  BLX             __stack_chk_fail
498200:  LDR             R0, [R4]
498202:  LDR             R1, [R0,#0x14]
498204:  MOV             R0, R4
498206:  BLX             R1
498208:  LDR             R1, =(aErrorClassDIsN - 0x498216); "ERROR - class %d is not type %d seriali"...
49820A:  MOV             R2, R0
49820C:  ADD             R0, SP, #0xA0+var_9C
49820E:  MOVW            R3, #0x1A3
498212:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
498214:  BL              sub_5E6BC0
498218:  LDR             R0, =(__stack_chk_guard_ptr - 0x498220)
49821A:  LDR             R1, [SP,#0xA0+var_1C]
49821C:  ADD             R0, PC; __stack_chk_guard_ptr
49821E:  LDR             R0, [R0]; __stack_chk_guard
498220:  LDR             R0, [R0]
498222:  SUBS            R0, R0, R1
498224:  ITTT EQ
498226:  ADDEQ           SP, SP, #0x88
498228:  POPEQ.W         {R8-R10}
49822C:  POPEQ           {R4-R7,PC}
49822E:  BLX             __stack_chk_fail
