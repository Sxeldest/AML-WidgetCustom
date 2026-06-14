; =========================================================
; Game Engine Function: _ZN10C3dMarkers17SaveUser3dMarkersEv
; Address            : 0x48F58C - 0x48F690
; =========================================================

48F58C:  PUSH            {R4,R5,R7,LR}
48F58E:  ADD             R7, SP, #8
48F590:  MOVS            R0, #0x1C; byte_count
48F592:  BLX             malloc
48F596:  MOV             R4, R0
48F598:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x48F5A0)
48F59A:  MOVS            R1, #dword_1C; void *
48F59C:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
48F59E:  LDR             R5, [R0]; C3dMarkers::ms_user3dMarkers ...
48F5A0:  ADD.W           R0, R5, #0xC
48F5A4:  VLD1.32         {D16-D17}, [R5]
48F5A8:  VLD1.32         {D18-D19}, [R0]
48F5AC:  ADD.W           R0, R4, #0xC
48F5B0:  VST1.8          {D16-D17}, [R4]
48F5B4:  VST1.8          {D18-D19}, [R0]
48F5B8:  MOV             R0, R4; this
48F5BA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F5BE:  MOV             R0, R4; p
48F5C0:  BLX             free
48F5C4:  MOVS            R0, #0x1C; byte_count
48F5C6:  BLX             malloc
48F5CA:  MOV             R4, R0
48F5CC:  ADD.W           R0, R5, #0x1C
48F5D0:  VLD1.32         {D16-D17}, [R0]
48F5D4:  ADD.W           R0, R5, #0x28 ; '('
48F5D8:  MOVS            R1, #dword_1C; void *
48F5DA:  VLD1.32         {D18-D19}, [R0]
48F5DE:  ADD.W           R0, R4, #0xC
48F5E2:  VST1.8          {D18-D19}, [R0]
48F5E6:  MOV             R0, R4; this
48F5E8:  VST1.8          {D16-D17}, [R4]
48F5EC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F5F0:  MOV             R0, R4; p
48F5F2:  BLX             free
48F5F6:  MOVS            R0, #0x1C; byte_count
48F5F8:  BLX             malloc
48F5FC:  MOV             R4, R0
48F5FE:  ADD.W           R0, R5, #0x38 ; '8'
48F602:  VLD1.32         {D16-D17}, [R0]
48F606:  ADD.W           R0, R5, #0x44 ; 'D'
48F60A:  MOVS            R1, #dword_1C; void *
48F60C:  VLD1.32         {D18-D19}, [R0]
48F610:  ADD.W           R0, R4, #0xC
48F614:  VST1.8          {D18-D19}, [R0]
48F618:  MOV             R0, R4; this
48F61A:  VST1.8          {D16-D17}, [R4]
48F61E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F622:  MOV             R0, R4; p
48F624:  BLX             free
48F628:  MOVS            R0, #0x1C; byte_count
48F62A:  BLX             malloc
48F62E:  MOV             R4, R0
48F630:  ADD.W           R0, R5, #0x54 ; 'T'
48F634:  VLD1.32         {D16-D17}, [R0]
48F638:  ADD.W           R0, R5, #0x60 ; '`'
48F63C:  MOVS            R1, #dword_1C; void *
48F63E:  VLD1.32         {D18-D19}, [R0]
48F642:  ADD.W           R0, R4, #0xC
48F646:  VST1.8          {D18-D19}, [R0]
48F64A:  MOV             R0, R4; this
48F64C:  VST1.8          {D16-D17}, [R4]
48F650:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F654:  MOV             R0, R4; p
48F656:  BLX             free
48F65A:  MOVS            R0, #0x1C; byte_count
48F65C:  BLX             malloc
48F660:  MOV             R4, R0
48F662:  ADD.W           R0, R5, #0x70 ; 'p'
48F666:  VLD1.32         {D16-D17}, [R0]
48F66A:  ADD.W           R0, R5, #0x7C ; '|'
48F66E:  MOVS            R1, #dword_1C; void *
48F670:  VLD1.32         {D18-D19}, [R0]
48F674:  ADD.W           R0, R4, #0xC
48F678:  VST1.8          {D18-D19}, [R0]
48F67C:  MOV             R0, R4; this
48F67E:  VST1.8          {D16-D17}, [R4]
48F682:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F686:  MOV             R0, R4; p
48F688:  BLX             free
48F68C:  MOVS            R0, #1
48F68E:  POP             {R4,R5,R7,PC}
