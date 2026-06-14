; =========================================================
; Game Engine Function: _ZN27CTaskComplexExtinguishFires9SerializeEv
; Address            : 0x548168 - 0x5481D0
; =========================================================

548168:  PUSH            {R4-R7,LR}
54816A:  ADD             R7, SP, #0xC
54816C:  PUSH.W          {R11}
548170:  MOV             R4, R0
548172:  LDR             R0, [R4]
548174:  LDR             R1, [R0,#0x14]
548176:  MOV             R0, R4
548178:  BLX             R1
54817A:  MOV             R5, R0
54817C:  LDR             R0, =(UseDataFence_ptr - 0x548182)
54817E:  ADD             R0, PC; UseDataFence_ptr
548180:  LDR             R0, [R0]; UseDataFence
548182:  LDRB            R0, [R0]
548184:  CMP             R0, #0
548186:  IT NE
548188:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
54818C:  MOVS            R0, #4; byte_count
54818E:  BLX             malloc
548192:  MOV             R6, R0
548194:  MOVS            R1, #byte_4; void *
548196:  STR             R5, [R6]
548198:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
54819C:  MOV             R0, R6; p
54819E:  BLX             free
5481A2:  LDR             R0, [R4]
5481A4:  LDR             R1, [R0,#0x14]
5481A6:  MOV             R0, R4
5481A8:  BLX             R1
5481AA:  CMP.W           R0, #0x25C
5481AE:  ITT EQ
5481B0:  POPEQ.W         {R11}
5481B4:  POPEQ           {R4-R7,PC}
5481B6:  LDR             R0, [R4]
5481B8:  LDR             R1, [R0,#0x14]
5481BA:  MOV             R0, R4
5481BC:  BLX             R1
5481BE:  MOV             R1, R0; int
5481C0:  MOV.W           R0, #0x25C; int
5481C4:  POP.W           {R11}
5481C8:  POP.W           {R4-R7,LR}
5481CC:  B.W             sub_1941D4
