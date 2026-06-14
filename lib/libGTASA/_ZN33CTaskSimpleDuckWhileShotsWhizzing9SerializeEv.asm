; =========================================================
; Game Engine Function: _ZN33CTaskSimpleDuckWhileShotsWhizzing9SerializeEv
; Address            : 0x5440BC - 0x544152
; =========================================================

5440BC:  PUSH            {R4-R7,LR}
5440BE:  ADD             R7, SP, #0xC
5440C0:  PUSH.W          {R11}
5440C4:  MOV             R4, R0
5440C6:  LDR             R0, [R4]
5440C8:  LDR             R1, [R0,#0x14]
5440CA:  MOV             R0, R4
5440CC:  BLX             R1
5440CE:  MOV             R5, R0
5440D0:  LDR             R0, =(UseDataFence_ptr - 0x5440D6)
5440D2:  ADD             R0, PC; UseDataFence_ptr
5440D4:  LDR             R0, [R0]; UseDataFence
5440D6:  LDRB            R0, [R0]
5440D8:  CMP             R0, #0
5440DA:  IT NE
5440DC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5440E0:  MOVS            R0, #4; byte_count
5440E2:  BLX             malloc
5440E6:  MOV             R6, R0
5440E8:  MOVS            R1, #byte_4; void *
5440EA:  STR             R5, [R6]
5440EC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5440F0:  MOV             R0, R6; p
5440F2:  BLX             free
5440F6:  LDR             R0, [R4]
5440F8:  LDR             R1, [R0,#0x14]
5440FA:  MOV             R0, R4
5440FC:  BLX             R1
5440FE:  MOVW            R1, #0x137
544102:  CMP             R0, R1
544104:  BNE             loc_544138
544106:  LDR             R0, =(UseDataFence_ptr - 0x54410C)
544108:  ADD             R0, PC; UseDataFence_ptr
54410A:  LDR             R0, [R0]; UseDataFence
54410C:  LDRB            R0, [R0]
54410E:  CMP             R0, #0
544110:  IT NE
544112:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
544116:  MOVS            R0, #2; byte_count
544118:  BLX             malloc
54411C:  MOV             R5, R0
54411E:  LDRH            R0, [R4,#0xC]
544120:  STRH            R0, [R5]
544122:  MOV             R0, R5; this
544124:  MOVS            R1, #(stderr+2); void *
544126:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
54412A:  MOV             R0, R5; p
54412C:  POP.W           {R11}
544130:  POP.W           {R4-R7,LR}
544134:  B.W             j_free
544138:  LDR             R0, [R4]
54413A:  LDR             R1, [R0,#0x14]
54413C:  MOV             R0, R4
54413E:  BLX             R1
544140:  MOV             R1, R0; int
544142:  MOVW            R0, #0x137; int
544146:  POP.W           {R11}
54414A:  POP.W           {R4-R7,LR}
54414E:  B.W             sub_1941D4
