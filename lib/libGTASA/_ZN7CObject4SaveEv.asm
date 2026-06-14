; =========================================================
; Game Engine Function: _ZN7CObject4SaveEv
; Address            : 0x484ED0 - 0x484F3C
; =========================================================

484ED0:  PUSH            {R4,R5,R7,LR}
484ED2:  ADD             R7, SP, #8
484ED4:  SUB             SP, SP, #0x38
484ED6:  MOV             R4, SP
484ED8:  MOV             R1, R0; CObject *
484EDA:  MOV             R0, R4; this
484EDC:  BLX             j__ZN20CObjectSaveStructure9ConstructEP7CObject; CObjectSaveStructure::Construct(CObject *)
484EE0:  MOVS            R0, #4; byte_count
484EE2:  BLX             malloc
484EE6:  MOV             R5, R0
484EE8:  MOVS            R0, #0x34 ; '4'
484EEA:  STR             R0, [R5]
484EEC:  MOV             R0, R5; this
484EEE:  MOVS            R1, #byte_4; void *
484EF0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
484EF4:  MOV             R0, R5; p
484EF6:  BLX             free
484EFA:  MOVS            R0, #0x34 ; '4'; byte_count
484EFC:  BLX             malloc
484F00:  MOV             R5, R0
484F02:  ADD.W           R0, R4, #0x20 ; ' '
484F06:  VLD1.64         {D18-D19}, [R0]
484F0A:  MOVS            R1, #dword_34; void *
484F0C:  LDR             R0, [SP,#0x40+var_10]
484F0E:  STR             R0, [R5,#0x30]
484F10:  ADD.W           R0, R5, #0x20 ; ' '
484F14:  VLD1.8          {D16-D17}, [R4,#0x40+var_40]!
484F18:  VST1.8          {D18-D19}, [R0]
484F1C:  MOV             R0, R5
484F1E:  VLD1.64         {D20-D21}, [R4]
484F22:  VST1.8          {D16-D17}, [R0]!
484F26:  VST1.8          {D20-D21}, [R0]
484F2A:  MOV             R0, R5; this
484F2C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
484F30:  MOV             R0, R5; p
484F32:  BLX             free
484F36:  MOVS            R0, #1
484F38:  ADD             SP, SP, #0x38 ; '8'
484F3A:  POP             {R4,R5,R7,PC}
