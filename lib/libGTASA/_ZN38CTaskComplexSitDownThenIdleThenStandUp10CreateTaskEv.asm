; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUp10CreateTaskEv
; Address            : 0x491308 - 0x4913A0
; =========================================================

491308:  PUSH            {R4,R5,R7,LR}
49130A:  ADD             R7, SP, #8
49130C:  SUB             SP, SP, #0x10
49130E:  LDR             R0, =(UseDataFence_ptr - 0x491314)
491310:  ADD             R0, PC; UseDataFence_ptr
491312:  LDR             R0, [R0]; UseDataFence
491314:  LDRB            R4, [R0]
491316:  CBZ             R4, loc_49132E
491318:  LDR             R0, =(UseDataFence_ptr - 0x491320)
49131A:  MOVS            R1, #(stderr+2); void *
49131C:  ADD             R0, PC; UseDataFence_ptr
49131E:  LDR             R5, [R0]; UseDataFence
491320:  MOVS            R0, #0
491322:  STRB            R0, [R5]
491324:  SUB.W           R0, R7, #-var_E; this
491328:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49132C:  STRB            R4, [R5]
49132E:  ADD             R0, SP, #0x18+var_14; this
491330:  MOVS            R1, #byte_4; void *
491332:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491336:  LDR             R0, =(UseDataFence_ptr - 0x49133C)
491338:  ADD             R0, PC; UseDataFence_ptr
49133A:  LDR             R0, [R0]; UseDataFence
49133C:  LDRB            R4, [R0]
49133E:  CBZ             R4, loc_491354
491340:  LDR             R0, =(UseDataFence_ptr - 0x491348)
491342:  MOVS            R1, #(stderr+2); void *
491344:  ADD             R0, PC; UseDataFence_ptr
491346:  LDR             R5, [R0]; UseDataFence
491348:  MOVS            R0, #0
49134A:  STRB            R0, [R5]
49134C:  ADD             R0, SP, #0x18+var_C; this
49134E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491352:  STRB            R4, [R5]
491354:  SUB.W           R0, R7, #-var_15; this
491358:  MOVS            R1, #(stderr+1); void *
49135A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49135E:  LDR             R0, =(UseDataFence_ptr - 0x491364)
491360:  ADD             R0, PC; UseDataFence_ptr
491362:  LDR             R0, [R0]; UseDataFence
491364:  LDRB            R4, [R0]
491366:  CBZ             R4, loc_49137E
491368:  LDR             R0, =(UseDataFence_ptr - 0x491370)
49136A:  MOVS            R1, #(stderr+2); void *
49136C:  ADD             R0, PC; UseDataFence_ptr
49136E:  LDR             R5, [R0]; UseDataFence
491370:  MOVS            R0, #0
491372:  STRB            R0, [R5]
491374:  SUB.W           R0, R7, #-var_A; this
491378:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49137C:  STRB            R4, [R5]
49137E:  SUB.W           R0, R7, #-var_16; this
491382:  MOVS            R1, #(stderr+1); void *
491384:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491388:  MOVS            R0, #dword_14; this
49138A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49138E:  LDR             R1, [SP,#0x18+var_14]; int
491390:  LDRB.W          R3, [R7,#var_16]; unsigned __int8
491394:  LDRB.W          R2, [R7,#var_15]; unsigned __int8
491398:  BLX             j__ZN38CTaskComplexSitDownThenIdleThenStandUpC2Eihh; CTaskComplexSitDownThenIdleThenStandUp::CTaskComplexSitDownThenIdleThenStandUp(int,uchar,uchar)
49139C:  ADD             SP, SP, #0x10
49139E:  POP             {R4,R5,R7,PC}
