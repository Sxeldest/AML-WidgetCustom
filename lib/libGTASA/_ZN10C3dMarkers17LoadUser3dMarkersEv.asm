; =========================================================
; Game Engine Function: _ZN10C3dMarkers17LoadUser3dMarkersEv
; Address            : 0x48F548 - 0x48F586
; =========================================================

48F548:  PUSH            {R4,R6,R7,LR}
48F54A:  ADD             R7, SP, #8
48F54C:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x48F554)
48F54E:  MOVS            R1, #dword_1C; void *
48F550:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
48F552:  LDR             R4, [R0]; C3dMarkers::ms_user3dMarkers ...
48F554:  MOV             R0, R4; this
48F556:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F55A:  ADD.W           R0, R4, #0x1C; this
48F55E:  MOVS            R1, #dword_1C; void *
48F560:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F564:  ADD.W           R0, R4, #0x38 ; '8'; this
48F568:  MOVS            R1, #dword_1C; void *
48F56A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F56E:  ADD.W           R0, R4, #0x54 ; 'T'; this
48F572:  MOVS            R1, #dword_1C; void *
48F574:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F578:  ADD.W           R0, R4, #0x70 ; 'p'; this
48F57C:  MOVS            R1, #dword_1C; void *
48F57E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48F582:  MOVS            R0, #1
48F584:  POP             {R4,R6,R7,PC}
