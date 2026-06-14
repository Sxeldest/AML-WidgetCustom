; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUp9SerializeEv
; Address            : 0x532A88 - 0x532B6C
; =========================================================

532A88:  PUSH            {R4-R7,LR}
532A8A:  ADD             R7, SP, #0xC
532A8C:  PUSH.W          {R11}
532A90:  MOV             R4, R0
532A92:  LDR             R0, [R4]
532A94:  LDR             R1, [R0,#0x14]
532A96:  MOV             R0, R4
532A98:  BLX             R1
532A9A:  MOV             R5, R0
532A9C:  LDR             R0, =(UseDataFence_ptr - 0x532AA2)
532A9E:  ADD             R0, PC; UseDataFence_ptr
532AA0:  LDR             R0, [R0]; UseDataFence
532AA2:  LDRB            R0, [R0]
532AA4:  CMP             R0, #0
532AA6:  IT NE
532AA8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532AAC:  MOVS            R0, #4; byte_count
532AAE:  BLX             malloc
532AB2:  MOV             R6, R0
532AB4:  MOVS            R1, #byte_4; void *
532AB6:  STR             R5, [R6]
532AB8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532ABC:  MOV             R0, R6; p
532ABE:  BLX             free
532AC2:  LDR             R0, [R4]
532AC4:  LDR             R1, [R0,#0x14]
532AC6:  MOV             R0, R4
532AC8:  BLX             R1
532ACA:  CMP             R0, #0xD0
532ACC:  BNE             loc_532B54
532ACE:  LDR             R0, =(UseDataFence_ptr - 0x532AD4)
532AD0:  ADD             R0, PC; UseDataFence_ptr
532AD2:  LDR             R0, [R0]; UseDataFence
532AD4:  LDRB            R0, [R0]
532AD6:  CMP             R0, #0
532AD8:  IT NE
532ADA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532ADE:  MOVS            R0, #4; byte_count
532AE0:  BLX             malloc
532AE4:  MOV             R5, R0
532AE6:  LDR             R0, [R4,#0xC]
532AE8:  STR             R0, [R5]
532AEA:  MOV             R0, R5; this
532AEC:  MOVS            R1, #byte_4; void *
532AEE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532AF2:  MOV             R0, R5; p
532AF4:  BLX             free
532AF8:  LDR             R0, =(UseDataFence_ptr - 0x532AFE)
532AFA:  ADD             R0, PC; UseDataFence_ptr
532AFC:  LDR             R0, [R0]; UseDataFence
532AFE:  LDRB            R0, [R0]
532B00:  CMP             R0, #0
532B02:  IT NE
532B04:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532B08:  MOVS            R0, #4; byte_count
532B0A:  BLX             malloc
532B0E:  MOV             R5, R0
532B10:  LDR             R0, [R4,#0x10]
532B12:  STR             R0, [R5]
532B14:  MOV             R0, R5; this
532B16:  MOVS            R1, #byte_4; void *
532B18:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532B1C:  MOV             R0, R5; p
532B1E:  BLX             free
532B22:  LDR             R0, =(UseDataFence_ptr - 0x532B28)
532B24:  ADD             R0, PC; UseDataFence_ptr
532B26:  LDR             R0, [R0]; UseDataFence
532B28:  LDRB            R0, [R0]
532B2A:  CMP             R0, #0
532B2C:  IT NE
532B2E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532B32:  MOVS            R0, #4; byte_count
532B34:  BLX             malloc
532B38:  MOV             R5, R0
532B3A:  LDR             R0, [R4,#0x14]
532B3C:  STR             R0, [R5]
532B3E:  MOV             R0, R5; this
532B40:  MOVS            R1, #byte_4; void *
532B42:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532B46:  MOV             R0, R5; p
532B48:  POP.W           {R11}
532B4C:  POP.W           {R4-R7,LR}
532B50:  B.W             j_free
532B54:  LDR             R0, [R4]
532B56:  LDR             R1, [R0,#0x14]
532B58:  MOV             R0, R4
532B5A:  BLX             R1
532B5C:  MOV             R1, R0; int
532B5E:  MOVS            R0, #0xD0; int
532B60:  POP.W           {R11}
532B64:  POP.W           {R4-R7,LR}
532B68:  B.W             sub_1941D4
