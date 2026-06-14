; =========================================================
; Game Engine Function: _ZN27CTaskSimpleHailTaxiAndPause9SerializeEv
; Address            : 0x497110 - 0x49725A
; =========================================================

497110:  PUSH            {R4-R7,LR}
497112:  ADD             R7, SP, #0xC
497114:  PUSH.W          {R8-R10}
497118:  SUB             SP, SP, #0x88
49711A:  MOV             R4, R0
49711C:  LDR             R0, =(__stack_chk_guard_ptr - 0x497122)
49711E:  ADD             R0, PC; __stack_chk_guard_ptr
497120:  LDR             R0, [R0]; __stack_chk_guard
497122:  LDR             R0, [R0]
497124:  STR             R0, [SP,#0xA0+var_1C]
497126:  LDR             R0, [R4]
497128:  LDR             R1, [R0,#0x14]
49712A:  MOV             R0, R4
49712C:  BLX             R1
49712E:  MOV             R8, R0
497130:  LDR             R0, =(UseDataFence_ptr - 0x497136)
497132:  ADD             R0, PC; UseDataFence_ptr
497134:  LDR             R0, [R0]; UseDataFence
497136:  LDRB            R5, [R0]
497138:  CBZ             R5, loc_49717C
49713A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497146)
49713C:  MOVS            R3, #0
49713E:  LDR             R1, =(UseDataFence_ptr - 0x497148)
497140:  LDR             R2, =(DataFence_ptr - 0x49714A)
497142:  ADD             R0, PC; currentSaveFenceCount_ptr
497144:  ADD             R1, PC; UseDataFence_ptr
497146:  ADD             R2, PC; DataFence_ptr
497148:  LDR             R0, [R0]; currentSaveFenceCount
49714A:  LDR.W           R9, [R1]; UseDataFence
49714E:  LDR             R1, [R2]; DataFence
497150:  LDR             R2, [R0]
497152:  STRB.W          R3, [R9]
497156:  LDRH            R1, [R1]
497158:  ADDS            R3, R2, #1
49715A:  STR             R3, [R0]
49715C:  MOVS            R0, #2; byte_count
49715E:  ADD.W           R10, R2, R1
497162:  BLX             malloc
497166:  MOV             R6, R0
497168:  MOVS            R1, #(stderr+2); void *
49716A:  STRH.W          R10, [R6]
49716E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497172:  MOV             R0, R6; p
497174:  BLX             free
497178:  STRB.W          R5, [R9]
49717C:  MOVS            R0, #4; byte_count
49717E:  BLX             malloc
497182:  MOV             R6, R0
497184:  MOVS            R1, #byte_4; void *
497186:  STR.W           R8, [R6]
49718A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49718E:  MOV             R0, R6; p
497190:  BLX             free
497194:  LDR             R0, [R4]
497196:  LDR             R1, [R0,#0x14]
497198:  MOV             R0, R4
49719A:  BLX             R1
49719C:  MOVW            R1, #0x117
4971A0:  CMP             R0, R1
4971A2:  BNE             loc_497228
4971A4:  LDR             R0, =(UseDataFence_ptr - 0x4971AA)
4971A6:  ADD             R0, PC; UseDataFence_ptr
4971A8:  LDR             R0, [R0]; UseDataFence
4971AA:  LDRB            R6, [R0]
4971AC:  CBZ             R6, loc_4971F0
4971AE:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4971BA)
4971B0:  MOVS            R3, #0
4971B2:  LDR             R1, =(UseDataFence_ptr - 0x4971BC)
4971B4:  LDR             R2, =(DataFence_ptr - 0x4971BE)
4971B6:  ADD             R0, PC; currentSaveFenceCount_ptr
4971B8:  ADD             R1, PC; UseDataFence_ptr
4971BA:  ADD             R2, PC; DataFence_ptr
4971BC:  LDR             R0, [R0]; currentSaveFenceCount
4971BE:  LDR.W           R8, [R1]; UseDataFence
4971C2:  LDR             R1, [R2]; DataFence
4971C4:  LDR             R2, [R0]
4971C6:  STRB.W          R3, [R8]
4971CA:  LDRH            R1, [R1]
4971CC:  ADDS            R3, R2, #1
4971CE:  STR             R3, [R0]
4971D0:  MOVS            R0, #2; byte_count
4971D2:  ADD.W           R9, R2, R1
4971D6:  BLX             malloc
4971DA:  MOV             R5, R0
4971DC:  MOVS            R1, #(stderr+2); void *
4971DE:  STRH.W          R9, [R5]
4971E2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4971E6:  MOV             R0, R5; p
4971E8:  BLX             free
4971EC:  STRB.W          R6, [R8]
4971F0:  MOVS            R0, #4; byte_count
4971F2:  BLX             malloc
4971F6:  MOV             R5, R0
4971F8:  LDR             R0, [R4,#0x20]
4971FA:  STR             R0, [R5]
4971FC:  MOV             R0, R5; this
4971FE:  MOVS            R1, #byte_4; void *
497200:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497204:  LDR             R0, =(__stack_chk_guard_ptr - 0x49720C)
497206:  LDR             R1, [SP,#0xA0+var_1C]
497208:  ADD             R0, PC; __stack_chk_guard_ptr
49720A:  LDR             R0, [R0]; __stack_chk_guard
49720C:  LDR             R0, [R0]
49720E:  SUBS            R0, R0, R1
497210:  ITTTT EQ
497212:  MOVEQ           R0, R5; p
497214:  ADDEQ           SP, SP, #0x88
497216:  POPEQ.W         {R8-R10}
49721A:  POPEQ.W         {R4-R7,LR}
49721E:  IT EQ
497220:  BEQ.W           j_free
497224:  BLX             __stack_chk_fail
497228:  LDR             R0, [R4]
49722A:  LDR             R1, [R0,#0x14]
49722C:  MOV             R0, R4
49722E:  BLX             R1
497230:  LDR             R1, =(aErrorClassDIsN - 0x49723E); "ERROR - class %d is not type %d seriali"...
497232:  MOV             R2, R0
497234:  ADD             R0, SP, #0xA0+var_9C
497236:  MOVW            R3, #0x117
49723A:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
49723C:  BL              sub_5E6BC0
497240:  LDR             R0, =(__stack_chk_guard_ptr - 0x497248)
497242:  LDR             R1, [SP,#0xA0+var_1C]
497244:  ADD             R0, PC; __stack_chk_guard_ptr
497246:  LDR             R0, [R0]; __stack_chk_guard
497248:  LDR             R0, [R0]
49724A:  SUBS            R0, R0, R1
49724C:  ITTT EQ
49724E:  ADDEQ           SP, SP, #0x88
497250:  POPEQ.W         {R8-R10}
497254:  POPEQ           {R4-R7,PC}
497256:  BLX             __stack_chk_fail
