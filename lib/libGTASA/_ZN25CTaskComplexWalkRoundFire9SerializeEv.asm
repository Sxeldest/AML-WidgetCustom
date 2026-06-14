; =========================================================
; Game Engine Function: _ZN25CTaskComplexWalkRoundFire9SerializeEv
; Address            : 0x5100F0 - 0x51021A
; =========================================================

5100F0:  PUSH            {R4-R7,LR}
5100F2:  ADD             R7, SP, #0xC
5100F4:  PUSH.W          {R11}
5100F8:  MOV             R4, R0
5100FA:  LDR             R0, [R4]
5100FC:  LDR             R1, [R0,#0x14]
5100FE:  MOV             R0, R4
510100:  BLX             R1
510102:  MOV             R5, R0
510104:  LDR             R0, =(UseDataFence_ptr - 0x51010A)
510106:  ADD             R0, PC; UseDataFence_ptr
510108:  LDR             R0, [R0]; UseDataFence
51010A:  LDRB            R0, [R0]
51010C:  CMP             R0, #0
51010E:  IT NE
510110:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
510114:  MOVS            R0, #4; byte_count
510116:  BLX             malloc
51011A:  MOV             R6, R0
51011C:  MOVS            R1, #byte_4; void *
51011E:  STR             R5, [R6]
510120:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
510124:  MOV             R0, R6; p
510126:  BLX             free
51012A:  LDR             R0, [R4]
51012C:  LDR             R1, [R0,#0x14]
51012E:  MOV             R0, R4
510130:  BLX             R1
510132:  MOVW            R1, #0x202
510136:  CMP             R0, R1
510138:  BNE             loc_510200
51013A:  LDR             R0, =(UseDataFence_ptr - 0x510142)
51013C:  LDR             R6, [R4,#0xC]
51013E:  ADD             R0, PC; UseDataFence_ptr
510140:  LDR             R0, [R0]; UseDataFence
510142:  LDRB            R0, [R0]
510144:  CMP             R0, #0
510146:  IT NE
510148:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51014C:  MOVS            R0, #4; byte_count
51014E:  BLX             malloc
510152:  MOV             R5, R0
510154:  MOVS            R1, #byte_4; void *
510156:  STR             R6, [R5]
510158:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51015C:  MOV             R0, R5; p
51015E:  BLX             free
510162:  LDR             R0, =(UseDataFence_ptr - 0x510168)
510164:  ADD             R0, PC; UseDataFence_ptr
510166:  LDR             R0, [R0]; UseDataFence
510168:  LDRB            R0, [R0]
51016A:  CMP             R0, #0
51016C:  IT NE
51016E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
510172:  MOVS            R0, #0xC; byte_count
510174:  BLX             malloc
510178:  ADD.W           R1, R4, #0x10
51017C:  MOV             R5, R0
51017E:  LDR             R0, [R4,#0x18]
510180:  VLD1.8          {D16}, [R1]
510184:  MOVS            R1, #(byte_9+3); void *
510186:  STR             R0, [R5,#8]
510188:  MOV             R0, R5; this
51018A:  VST1.8          {D16}, [R5]
51018E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
510192:  MOV             R0, R5; p
510194:  BLX             free
510198:  LDR             R0, =(UseDataFence_ptr - 0x51019E)
51019A:  ADD             R0, PC; UseDataFence_ptr
51019C:  LDR             R0, [R0]; UseDataFence
51019E:  LDRB            R0, [R0]
5101A0:  CMP             R0, #0
5101A2:  IT NE
5101A4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5101A8:  MOVS            R0, #4; byte_count
5101AA:  BLX             malloc
5101AE:  MOV             R5, R0
5101B0:  LDR             R0, [R4,#0x1C]
5101B2:  STR             R0, [R5]
5101B4:  MOV             R0, R5; this
5101B6:  MOVS            R1, #byte_4; void *
5101B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5101BC:  MOV             R0, R5; p
5101BE:  BLX             free
5101C2:  LDR             R0, =(UseDataFence_ptr - 0x5101C8)
5101C4:  ADD             R0, PC; UseDataFence_ptr
5101C6:  LDR             R0, [R0]; UseDataFence
5101C8:  LDRB            R0, [R0]
5101CA:  CMP             R0, #0
5101CC:  IT NE
5101CE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5101D2:  MOVS            R0, #0xC; byte_count
5101D4:  BLX             malloc
5101D8:  ADD.W           R1, R4, #0x20 ; ' '
5101DC:  MOV             R5, R0
5101DE:  LDR             R0, [R4,#0x28]
5101E0:  VLD1.8          {D16}, [R1]
5101E4:  MOVS            R1, #(byte_9+3); void *
5101E6:  STR             R0, [R5,#8]
5101E8:  MOV             R0, R5; this
5101EA:  VST1.8          {D16}, [R5]
5101EE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5101F2:  MOV             R0, R5; p
5101F4:  POP.W           {R11}
5101F8:  POP.W           {R4-R7,LR}
5101FC:  B.W             j_free
510200:  LDR             R0, [R4]
510202:  LDR             R1, [R0,#0x14]
510204:  MOV             R0, R4
510206:  BLX             R1
510208:  MOV             R1, R0; int
51020A:  MOVW            R0, #0x202; int
51020E:  POP.W           {R11}
510212:  POP.W           {R4-R7,LR}
510216:  B.W             sub_1941D4
