; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerChat9SerializeEv
; Address            : 0x53717C - 0x5372FA
; =========================================================

53717C:  PUSH            {R4-R7,LR}
53717E:  ADD             R7, SP, #0xC
537180:  PUSH.W          {R11}
537184:  MOV             R4, R0
537186:  LDR             R0, [R4]
537188:  LDR             R1, [R0,#0x14]
53718A:  MOV             R0, R4
53718C:  BLX             R1
53718E:  MOV             R5, R0
537190:  LDR             R0, =(UseDataFence_ptr - 0x537196)
537192:  ADD             R0, PC; UseDataFence_ptr
537194:  LDR             R0, [R0]; UseDataFence
537196:  LDRB            R0, [R0]
537198:  CMP             R0, #0
53719A:  IT NE
53719C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5371A0:  MOVS            R0, #4; byte_count
5371A2:  BLX             malloc
5371A6:  MOV             R6, R0
5371A8:  MOVS            R1, #byte_4; void *
5371AA:  STR             R5, [R6]
5371AC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5371B0:  MOV             R0, R6; p
5371B2:  BLX             free
5371B6:  LDR             R0, [R4]
5371B8:  LDR             R1, [R0,#0x14]
5371BA:  MOV             R0, R4
5371BC:  BLX             R1
5371BE:  MOVW            R1, #0x4B4
5371C2:  CMP             R0, R1
5371C4:  BNE.W           loc_5372E0
5371C8:  LDR             R0, [R4,#0x38]; CPed *
5371CA:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
5371CE:  MOV             R5, R0
5371D0:  LDR             R0, =(UseDataFence_ptr - 0x5371D6)
5371D2:  ADD             R0, PC; UseDataFence_ptr
5371D4:  LDR             R0, [R0]; UseDataFence
5371D6:  LDRB            R0, [R0]
5371D8:  CMP             R0, #0
5371DA:  IT NE
5371DC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5371E0:  MOVS            R0, #4; byte_count
5371E2:  BLX             malloc
5371E6:  MOV             R6, R0
5371E8:  MOVS            R1, #byte_4; void *
5371EA:  STR             R5, [R6]
5371EC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5371F0:  MOV             R0, R6; p
5371F2:  BLX             free
5371F6:  LDR             R0, =(UseDataFence_ptr - 0x5371FC)
5371F8:  ADD             R0, PC; UseDataFence_ptr
5371FA:  LDR             R0, [R0]; UseDataFence
5371FC:  LDRB            R0, [R0]
5371FE:  CMP             R0, #0
537200:  IT NE
537202:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
537206:  ADD.W           R0, R4, #0x14; this
53720A:  MOVS            R1, #dword_20; void *
53720C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
537210:  LDR             R0, =(UseDataFence_ptr - 0x537216)
537212:  ADD             R0, PC; UseDataFence_ptr
537214:  LDR             R0, [R0]; UseDataFence
537216:  LDRB            R0, [R0]
537218:  CMP             R0, #0
53721A:  IT NE
53721C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
537220:  ADD.W           R0, R4, #0x58 ; 'X'; this
537224:  MOVS            R1, #(stderr+1); void *
537226:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53722A:  LDR             R0, =(UseDataFence_ptr - 0x537230)
53722C:  ADD             R0, PC; UseDataFence_ptr
53722E:  LDR             R0, [R0]; UseDataFence
537230:  LDRB            R0, [R0]
537232:  CMP             R0, #0
537234:  IT NE
537236:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53723A:  MOVS            R0, #4; byte_count
53723C:  BLX             malloc
537240:  MOV             R5, R0
537242:  LDR             R0, [R4,#0x3C]
537244:  STR             R0, [R5]
537246:  MOV             R0, R5; this
537248:  MOVS            R1, #byte_4; void *
53724A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53724E:  MOV             R0, R5; p
537250:  BLX             free
537254:  LDR             R0, =(UseDataFence_ptr - 0x53725A)
537256:  ADD             R0, PC; UseDataFence_ptr
537258:  LDR             R0, [R0]; UseDataFence
53725A:  LDRB            R0, [R0]
53725C:  CMP             R0, #0
53725E:  IT NE
537260:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
537264:  ADD.W           R0, R4, #0x5B ; '['; this
537268:  MOVS            R1, #(stderr+1); void *
53726A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53726E:  LDR             R0, =(UseDataFence_ptr - 0x537274)
537270:  ADD             R0, PC; UseDataFence_ptr
537272:  LDR             R0, [R0]; UseDataFence
537274:  LDRB            R0, [R0]
537276:  CMP             R0, #0
537278:  IT NE
53727A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53727E:  ADD.W           R0, R4, #0x72 ; 'r'; this
537282:  MOVS            R1, #(stderr+1); void *
537284:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
537288:  LDR             R0, =(UseDataFence_ptr - 0x53728E)
53728A:  ADD             R0, PC; UseDataFence_ptr
53728C:  LDR             R0, [R0]; UseDataFence
53728E:  LDRB            R0, [R0]
537290:  CMP             R0, #0
537292:  IT NE
537294:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
537298:  ADD.W           R0, R4, #0x73 ; 's'; this
53729C:  MOVS            R1, #(stderr+1); void *
53729E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5372A2:  LDR             R0, =(UseDataFence_ptr - 0x5372A8)
5372A4:  ADD             R0, PC; UseDataFence_ptr
5372A6:  LDR             R0, [R0]; UseDataFence
5372A8:  LDRB            R0, [R0]
5372AA:  CMP             R0, #0
5372AC:  IT NE
5372AE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5372B2:  MOVS            R0, #0xC; byte_count
5372B4:  BLX             malloc
5372B8:  ADD.W           R1, R4, #0x40 ; '@'
5372BC:  MOV             R5, R0
5372BE:  LDR             R0, [R4,#0x48]
5372C0:  VLD1.8          {D16}, [R1]
5372C4:  MOVS            R1, #(byte_9+3); void *
5372C6:  STR             R0, [R5,#8]
5372C8:  MOV             R0, R5; this
5372CA:  VST1.8          {D16}, [R5]
5372CE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5372D2:  MOV             R0, R5; p
5372D4:  POP.W           {R11}
5372D8:  POP.W           {R4-R7,LR}
5372DC:  B.W             j_free
5372E0:  LDR             R0, [R4]
5372E2:  LDR             R1, [R0,#0x14]
5372E4:  MOV             R0, R4
5372E6:  BLX             R1
5372E8:  MOV             R1, R0; int
5372EA:  MOVW            R0, #0x4B4; int
5372EE:  POP.W           {R11}
5372F2:  POP.W           {R4-R7,LR}
5372F6:  B.W             sub_1941D4
