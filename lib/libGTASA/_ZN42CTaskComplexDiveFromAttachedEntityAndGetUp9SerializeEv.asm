; =========================================================
; Game Engine Function: _ZN42CTaskComplexDiveFromAttachedEntityAndGetUp9SerializeEv
; Address            : 0x50EC90 - 0x50ED26
; =========================================================

50EC90:  PUSH            {R4-R7,LR}
50EC92:  ADD             R7, SP, #0xC
50EC94:  PUSH.W          {R11}
50EC98:  MOV             R4, R0
50EC9A:  LDR             R0, [R4]
50EC9C:  LDR             R1, [R0,#0x14]
50EC9E:  MOV             R0, R4
50ECA0:  BLX             R1
50ECA2:  MOV             R5, R0
50ECA4:  LDR             R0, =(UseDataFence_ptr - 0x50ECAA)
50ECA6:  ADD             R0, PC; UseDataFence_ptr
50ECA8:  LDR             R0, [R0]; UseDataFence
50ECAA:  LDRB            R0, [R0]
50ECAC:  CMP             R0, #0
50ECAE:  IT NE
50ECB0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50ECB4:  MOVS            R0, #4; byte_count
50ECB6:  BLX             malloc
50ECBA:  MOV             R6, R0
50ECBC:  MOVS            R1, #byte_4; void *
50ECBE:  STR             R5, [R6]
50ECC0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50ECC4:  MOV             R0, R6; p
50ECC6:  BLX             free
50ECCA:  LDR             R0, [R4]
50ECCC:  LDR             R1, [R0,#0x14]
50ECCE:  MOV             R0, R4
50ECD0:  BLX             R1
50ECD2:  MOVW            R1, #0x201
50ECD6:  CMP             R0, R1
50ECD8:  BNE             loc_50ED0C
50ECDA:  LDR             R0, =(UseDataFence_ptr - 0x50ECE0)
50ECDC:  ADD             R0, PC; UseDataFence_ptr
50ECDE:  LDR             R0, [R0]; UseDataFence
50ECE0:  LDRB            R0, [R0]
50ECE2:  CMP             R0, #0
50ECE4:  IT NE
50ECE6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50ECEA:  MOVS            R0, #4; byte_count
50ECEC:  BLX             malloc
50ECF0:  MOV             R5, R0
50ECF2:  LDR             R0, [R4,#0x10]
50ECF4:  STR             R0, [R5]
50ECF6:  MOV             R0, R5; this
50ECF8:  MOVS            R1, #byte_4; void *
50ECFA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50ECFE:  MOV             R0, R5; p
50ED00:  POP.W           {R11}
50ED04:  POP.W           {R4-R7,LR}
50ED08:  B.W             j_free
50ED0C:  LDR             R0, [R4]
50ED0E:  LDR             R1, [R0,#0x14]
50ED10:  MOV             R0, R4
50ED12:  BLX             R1
50ED14:  MOV             R1, R0; int
50ED16:  MOVW            R0, #0x201; int
50ED1A:  POP.W           {R11}
50ED1E:  POP.W           {R4-R7,LR}
50ED22:  B.W             sub_1941D4
