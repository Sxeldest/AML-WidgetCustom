; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup9SerializeEv
; Address            : 0x4F39A8 - 0x4F3A80
; =========================================================

4F39A8:  PUSH            {R4-R7,LR}
4F39AA:  ADD             R7, SP, #0xC
4F39AC:  PUSH.W          {R11}
4F39B0:  MOV             R4, R0
4F39B2:  LDR             R0, [R4]
4F39B4:  LDR             R1, [R0,#0x14]
4F39B6:  MOV             R0, R4
4F39B8:  BLX             R1
4F39BA:  MOV             R5, R0
4F39BC:  LDR             R0, =(UseDataFence_ptr - 0x4F39C2)
4F39BE:  ADD             R0, PC; UseDataFence_ptr
4F39C0:  LDR             R0, [R0]; UseDataFence
4F39C2:  LDRB            R0, [R0]
4F39C4:  CMP             R0, #0
4F39C6:  IT NE
4F39C8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F39CC:  MOVS            R0, #4; byte_count
4F39CE:  BLX             malloc
4F39D2:  MOV             R6, R0
4F39D4:  MOVS            R1, #byte_4; void *
4F39D6:  STR             R5, [R6]
4F39D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F39DC:  MOV             R0, R6; p
4F39DE:  BLX             free
4F39E2:  LDR             R0, [R4]
4F39E4:  LDR             R1, [R0,#0x14]
4F39E6:  MOV             R0, R4
4F39E8:  BLX             R1
4F39EA:  CMP             R0, #0xF3
4F39EC:  BNE             loc_4F3A68
4F39EE:  LDR             R0, [R4,#0x14]; CPed *
4F39F0:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4F39F4:  MOV             R5, R0
4F39F6:  LDR             R0, =(UseDataFence_ptr - 0x4F39FC)
4F39F8:  ADD             R0, PC; UseDataFence_ptr
4F39FA:  LDR             R0, [R0]; UseDataFence
4F39FC:  LDRB            R0, [R0]
4F39FE:  CMP             R0, #0
4F3A00:  IT NE
4F3A02:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3A06:  MOVS            R0, #4; byte_count
4F3A08:  BLX             malloc
4F3A0C:  MOV             R6, R0
4F3A0E:  MOVS            R1, #byte_4; void *
4F3A10:  STR             R5, [R6]
4F3A12:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F3A16:  MOV             R0, R6; p
4F3A18:  BLX             free
4F3A1C:  LDR             R0, =(UseDataFence_ptr - 0x4F3A22)
4F3A1E:  ADD             R0, PC; UseDataFence_ptr
4F3A20:  LDR             R0, [R0]; UseDataFence
4F3A22:  LDRB            R0, [R0]
4F3A24:  CMP             R0, #0
4F3A26:  IT NE
4F3A28:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3A2C:  MOVS            R0, #4; byte_count
4F3A2E:  BLX             malloc
4F3A32:  MOV             R5, R0
4F3A34:  LDR             R0, [R4,#0xC]
4F3A36:  STR             R0, [R5]
4F3A38:  MOV             R0, R5; this
4F3A3A:  MOVS            R1, #byte_4; void *
4F3A3C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F3A40:  MOV             R0, R5; p
4F3A42:  BLX             free
4F3A46:  LDR             R0, =(UseDataFence_ptr - 0x4F3A4C)
4F3A48:  ADD             R0, PC; UseDataFence_ptr
4F3A4A:  LDR             R0, [R0]; UseDataFence
4F3A4C:  LDRB            R0, [R0]
4F3A4E:  CMP             R0, #0
4F3A50:  IT NE
4F3A52:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3A56:  ADD.W           R0, R4, #0x10; this
4F3A5A:  MOVS            R1, #(stderr+1); void *
4F3A5C:  POP.W           {R11}
4F3A60:  POP.W           {R4-R7,LR}
4F3A64:  B.W             sub_19EA3C
4F3A68:  LDR             R0, [R4]
4F3A6A:  LDR             R1, [R0,#0x14]
4F3A6C:  MOV             R0, R4
4F3A6E:  BLX             R1
4F3A70:  MOV             R1, R0; int
4F3A72:  MOVS            R0, #0xF3; int
4F3A74:  POP.W           {R11}
4F3A78:  POP.W           {R4-R7,LR}
4F3A7C:  B.W             sub_1941D4
