; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering9SerializeEv
; Address            : 0x527FA8 - 0x5280A2
; =========================================================

527FA8:  PUSH            {R4-R7,LR}
527FAA:  ADD             R7, SP, #0xC
527FAC:  PUSH.W          {R11}
527FB0:  MOV             R4, R0
527FB2:  LDR             R0, [R4]
527FB4:  LDR             R1, [R0,#0x14]
527FB6:  MOV             R0, R4
527FB8:  BLX             R1
527FBA:  MOV             R5, R0
527FBC:  LDR             R0, =(UseDataFence_ptr - 0x527FC2)
527FBE:  ADD             R0, PC; UseDataFence_ptr
527FC0:  LDR             R0, [R0]; UseDataFence
527FC2:  LDRB            R0, [R0]
527FC4:  CMP             R0, #0
527FC6:  IT NE
527FC8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527FCC:  MOVS            R0, #4; byte_count
527FCE:  BLX             malloc
527FD2:  MOV             R6, R0
527FD4:  MOVS            R1, #byte_4; void *
527FD6:  STR             R5, [R6]
527FD8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527FDC:  MOV             R0, R6; p
527FDE:  BLX             free
527FE2:  LDR             R0, [R4]
527FE4:  LDR             R1, [R0,#0x14]
527FE6:  MOV             R0, R4
527FE8:  BLX             R1
527FEA:  MOVW            R1, #0x395
527FEE:  CMP             R0, R1
527FF0:  BNE             loc_528088
527FF2:  LDR             R0, [R4,#0xC]; CPed *
527FF4:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
527FF8:  MOV             R5, R0
527FFA:  LDR             R0, =(UseDataFence_ptr - 0x528000)
527FFC:  ADD             R0, PC; UseDataFence_ptr
527FFE:  LDR             R0, [R0]; UseDataFence
528000:  LDRB            R0, [R0]
528002:  CMP             R0, #0
528004:  IT NE
528006:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52800A:  MOVS            R0, #4; byte_count
52800C:  BLX             malloc
528010:  MOV             R6, R0
528012:  MOVS            R1, #byte_4; void *
528014:  STR             R5, [R6]
528016:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52801A:  MOV             R0, R6; p
52801C:  BLX             free
528020:  LDR             R0, =(UseDataFence_ptr - 0x528026)
528022:  ADD             R0, PC; UseDataFence_ptr
528024:  LDR             R0, [R0]; UseDataFence
528026:  LDRB            R0, [R0]
528028:  CMP             R0, #0
52802A:  IT NE
52802C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528030:  MOVS            R0, #4; byte_count
528032:  BLX             malloc
528036:  MOV             R5, R0
528038:  LDR             R0, [R4,#0x58]
52803A:  STR             R0, [R5]
52803C:  MOV             R0, R5; this
52803E:  MOVS            R1, #byte_4; void *
528040:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528044:  MOV             R0, R5; p
528046:  BLX             free
52804A:  LDR             R0, =(UseDataFence_ptr - 0x528050)
52804C:  ADD             R0, PC; UseDataFence_ptr
52804E:  LDR             R0, [R0]; UseDataFence
528050:  LDRB            R0, [R0]
528052:  CMP             R0, #0
528054:  IT NE
528056:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52805A:  MOVS            R0, #0xC; byte_count
52805C:  BLX             malloc
528060:  ADD.W           R1, R4, #0x1C
528064:  MOV             R5, R0
528066:  LDR             R0, [R4,#0x24]
528068:  VLD1.8          {D16}, [R1]
52806C:  MOVS            R1, #(byte_9+3); void *
52806E:  STR             R0, [R5,#8]
528070:  MOV             R0, R5; this
528072:  VST1.8          {D16}, [R5]
528076:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52807A:  MOV             R0, R5; p
52807C:  POP.W           {R11}
528080:  POP.W           {R4-R7,LR}
528084:  B.W             j_free
528088:  LDR             R0, [R4]
52808A:  LDR             R1, [R0,#0x14]
52808C:  MOV             R0, R4
52808E:  BLX             R1
528090:  MOV             R1, R0; int
528092:  MOVW            R0, #0x395; int
528096:  POP.W           {R11}
52809A:  POP.W           {R4-R7,LR}
52809E:  B.W             sub_1941D4
