; =========================================================
; Game Engine Function: _ZN16CTaskComplexJump9SerializeEv
; Address            : 0x5331FC - 0x53328C
; =========================================================

5331FC:  PUSH            {R4-R7,LR}
5331FE:  ADD             R7, SP, #0xC
533200:  PUSH.W          {R11}
533204:  MOV             R4, R0
533206:  LDR             R0, [R4]
533208:  LDR             R1, [R0,#0x14]
53320A:  MOV             R0, R4
53320C:  BLX             R1
53320E:  MOV             R5, R0
533210:  LDR             R0, =(UseDataFence_ptr - 0x533216)
533212:  ADD             R0, PC; UseDataFence_ptr
533214:  LDR             R0, [R0]; UseDataFence
533216:  LDRB            R0, [R0]
533218:  CMP             R0, #0
53321A:  IT NE
53321C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533220:  MOVS            R0, #4; byte_count
533222:  BLX             malloc
533226:  MOV             R6, R0
533228:  MOVS            R1, #byte_4; void *
53322A:  STR             R5, [R6]
53322C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533230:  MOV             R0, R6; p
533232:  BLX             free
533236:  LDR             R0, [R4]
533238:  LDR             R1, [R0,#0x14]
53323A:  MOV             R0, R4
53323C:  BLX             R1
53323E:  CMP             R0, #0xD3
533240:  BNE             loc_533274
533242:  LDR             R0, =(UseDataFence_ptr - 0x533248)
533244:  ADD             R0, PC; UseDataFence_ptr
533246:  LDR             R0, [R0]; UseDataFence
533248:  LDRB            R0, [R0]
53324A:  CMP             R0, #0
53324C:  IT NE
53324E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533252:  MOVS            R0, #4; byte_count
533254:  BLX             malloc
533258:  MOV             R5, R0
53325A:  LDR             R0, [R4,#0xC]
53325C:  STR             R0, [R5]
53325E:  MOV             R0, R5; this
533260:  MOVS            R1, #byte_4; void *
533262:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533266:  MOV             R0, R5; p
533268:  POP.W           {R11}
53326C:  POP.W           {R4-R7,LR}
533270:  B.W             j_free
533274:  LDR             R0, [R4]
533276:  LDR             R1, [R0,#0x14]
533278:  MOV             R0, R4
53327A:  BLX             R1
53327C:  MOV             R1, R0; int
53327E:  MOVS            R0, #0xD3; int
533280:  POP.W           {R11}
533284:  POP.W           {R4-R7,LR}
533288:  B.W             sub_1941D4
