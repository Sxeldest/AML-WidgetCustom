; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUp9SerializeEv
; Address            : 0x4F2FC4 - 0x4F3088
; =========================================================

4F2FC4:  PUSH            {R4-R7,LR}
4F2FC6:  ADD             R7, SP, #0xC
4F2FC8:  PUSH.W          {R11}
4F2FCC:  MOV             R4, R0
4F2FCE:  LDR             R0, [R4]
4F2FD0:  LDR             R1, [R0,#0x14]
4F2FD2:  MOV             R0, R4
4F2FD4:  BLX             R1
4F2FD6:  MOV             R5, R0
4F2FD8:  LDR             R0, =(UseDataFence_ptr - 0x4F2FDE)
4F2FDA:  ADD             R0, PC; UseDataFence_ptr
4F2FDC:  LDR             R0, [R0]; UseDataFence
4F2FDE:  LDRB            R0, [R0]
4F2FE0:  CMP             R0, #0
4F2FE2:  IT NE
4F2FE4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F2FE8:  MOVS            R0, #4; byte_count
4F2FEA:  BLX             malloc
4F2FEE:  MOV             R6, R0
4F2FF0:  MOVS            R1, #byte_4; void *
4F2FF2:  STR             R5, [R6]
4F2FF4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F2FF8:  MOV             R0, R6; p
4F2FFA:  BLX             free
4F2FFE:  LDR             R0, [R4]
4F3000:  LDR             R1, [R0,#0x14]
4F3002:  MOV             R0, R4
4F3004:  BLX             R1
4F3006:  CMP             R0, #0xDF
4F3008:  BNE             loc_4F3070
4F300A:  LDR             R0, =(UseDataFence_ptr - 0x4F3010)
4F300C:  ADD             R0, PC; UseDataFence_ptr
4F300E:  LDR             R0, [R0]; UseDataFence
4F3010:  LDRB            R0, [R0]
4F3012:  CMP             R0, #0
4F3014:  IT NE
4F3016:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F301A:  MOVS            R0, #4; byte_count
4F301C:  BLX             malloc
4F3020:  MOV             R5, R0
4F3022:  LDR             R0, [R4,#0xC]
4F3024:  STR             R0, [R5]
4F3026:  MOV             R0, R5; this
4F3028:  MOVS            R1, #byte_4; void *
4F302A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F302E:  MOV             R0, R5; p
4F3030:  BLX             free
4F3034:  LDR             R0, =(UseDataFence_ptr - 0x4F303A)
4F3036:  ADD             R0, PC; UseDataFence_ptr
4F3038:  LDR             R0, [R0]; UseDataFence
4F303A:  LDRB            R0, [R0]
4F303C:  CMP             R0, #0
4F303E:  IT NE
4F3040:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3044:  ADD.W           R0, R4, #0x10; this
4F3048:  MOVS            R1, #(stderr+1); void *
4F304A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F304E:  LDR             R0, =(UseDataFence_ptr - 0x4F3054)
4F3050:  ADD             R0, PC; UseDataFence_ptr
4F3052:  LDR             R0, [R0]; UseDataFence
4F3054:  LDRB            R0, [R0]
4F3056:  CMP             R0, #0
4F3058:  IT NE
4F305A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F305E:  ADD.W           R0, R4, #0x11; this
4F3062:  MOVS            R1, #(stderr+1); void *
4F3064:  POP.W           {R11}
4F3068:  POP.W           {R4-R7,LR}
4F306C:  B.W             sub_19EA3C
4F3070:  LDR             R0, [R4]
4F3072:  LDR             R1, [R0,#0x14]
4F3074:  MOV             R0, R4
4F3076:  BLX             R1
4F3078:  MOV             R1, R0; int
4F307A:  MOVS            R0, #0xDF; int
4F307C:  POP.W           {R11}
4F3080:  POP.W           {R4-R7,LR}
4F3084:  B.W             sub_1941D4
