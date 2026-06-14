; =========================================================
; Game Engine Function: _ZN14COnscreenTimer4SaveEv
; Address            : 0x4896C8 - 0x489742
; =========================================================

4896C8:  PUSH            {R4,R5,R7,LR}
4896CA:  ADD             R7, SP, #8
4896CC:  MOV             R4, R0
4896CE:  MOVS            R0, #0x40 ; '@'; byte_count
4896D0:  BLX             malloc
4896D4:  MOV             R5, R0
4896D6:  MOV             R0, R4
4896D8:  VLD1.8          {D16-D17}, [R0]!
4896DC:  ADD.W           R1, R4, #0x30 ; '0'
4896E0:  VLD1.8          {D18-D19}, [R1]
4896E4:  ADD.W           R1, R4, #0x20 ; ' '
4896E8:  VLD1.8          {D22-D23}, [R0]
4896EC:  ADD.W           R0, R5, #0x30 ; '0'
4896F0:  VLD1.8          {D20-D21}, [R1]
4896F4:  MOVS            R1, #dword_40; void *
4896F6:  VST1.8          {D18-D19}, [R0]
4896FA:  ADD.W           R0, R5, #0x20 ; ' '
4896FE:  VST1.8          {D20-D21}, [R0]
489702:  MOV             R0, R5
489704:  VST1.8          {D16-D17}, [R0]!
489708:  VST1.8          {D22-D23}, [R0]
48970C:  MOV             R0, R5; this
48970E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489712:  MOV             R0, R5; p
489714:  BLX             free
489718:  MOV.W           R0, #0x110; byte_count
48971C:  BLX             malloc
489720:  ADD.W           R1, R4, #0x40 ; '@'; void *
489724:  MOV.W           R2, #0x110; size_t
489728:  MOV             R5, R0
48972A:  BLX             memcpy_1
48972E:  MOV             R0, R5; this
489730:  MOV.W           R1, #(elf_hash_bucket+0x14); void *
489734:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489738:  MOV             R0, R5; p
48973A:  POP.W           {R4,R5,R7,LR}
48973E:  B.W             j_free
