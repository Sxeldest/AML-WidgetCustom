; =========================================================
; Game Engine Function: _ZN27CTaskComplexFallAndStayDown9SerializeEv
; Address            : 0x532BA8 - 0x532C5E
; =========================================================

532BA8:  PUSH            {R4-R7,LR}
532BAA:  ADD             R7, SP, #0xC
532BAC:  PUSH.W          {R11}
532BB0:  MOV             R4, R0
532BB2:  LDR             R0, [R4]
532BB4:  LDR             R1, [R0,#0x14]
532BB6:  MOV             R0, R4
532BB8:  BLX             R1
532BBA:  MOV             R5, R0
532BBC:  LDR             R0, =(UseDataFence_ptr - 0x532BC2)
532BBE:  ADD             R0, PC; UseDataFence_ptr
532BC0:  LDR             R0, [R0]; UseDataFence
532BC2:  LDRB            R0, [R0]
532BC4:  CMP             R0, #0
532BC6:  IT NE
532BC8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532BCC:  MOVS            R0, #4; byte_count
532BCE:  BLX             malloc
532BD2:  MOV             R6, R0
532BD4:  MOVS            R1, #byte_4; void *
532BD6:  STR             R5, [R6]
532BD8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532BDC:  MOV             R0, R6; p
532BDE:  BLX             free
532BE2:  LDR             R0, [R4]
532BE4:  LDR             R1, [R0,#0x14]
532BE6:  MOV             R0, R4
532BE8:  BLX             R1
532BEA:  CMP             R0, #0xD1
532BEC:  BNE             loc_532C46
532BEE:  LDR             R0, =(UseDataFence_ptr - 0x532BF6)
532BF0:  LDR             R6, [R4,#0xC]
532BF2:  ADD             R0, PC; UseDataFence_ptr
532BF4:  LDR             R0, [R0]; UseDataFence
532BF6:  LDRB            R0, [R0]
532BF8:  CMP             R0, #0
532BFA:  IT NE
532BFC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532C00:  MOVS            R0, #4; byte_count
532C02:  BLX             malloc
532C06:  MOV             R5, R0
532C08:  MOVS            R1, #byte_4; void *
532C0A:  STR             R6, [R5]
532C0C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532C10:  MOV             R0, R5; p
532C12:  BLX             free
532C16:  LDR             R0, =(UseDataFence_ptr - 0x532C1E)
532C18:  LDR             R5, [R4,#0x10]
532C1A:  ADD             R0, PC; UseDataFence_ptr
532C1C:  LDR             R0, [R0]; UseDataFence
532C1E:  LDRB            R0, [R0]
532C20:  CMP             R0, #0
532C22:  IT NE
532C24:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532C28:  MOVS            R0, #4; byte_count
532C2A:  BLX             malloc
532C2E:  MOV             R4, R0
532C30:  MOVS            R1, #byte_4; void *
532C32:  STR             R5, [R4]
532C34:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532C38:  MOV             R0, R4; p
532C3A:  POP.W           {R11}
532C3E:  POP.W           {R4-R7,LR}
532C42:  B.W             j_free
532C46:  LDR             R0, [R4]
532C48:  LDR             R1, [R0,#0x14]
532C4A:  MOV             R0, R4
532C4C:  BLX             R1
532C4E:  MOV             R1, R0; int
532C50:  MOVS            R0, #0xD1; int
532C52:  POP.W           {R11}
532C56:  POP.W           {R4-R7,LR}
532C5A:  B.W             sub_1941D4
