; =========================================================
; Game Engine Function: _ZN17CTaskSimpleFacial9SerializeEv
; Address            : 0x5439EC - 0x543AA6
; =========================================================

5439EC:  PUSH            {R4-R7,LR}
5439EE:  ADD             R7, SP, #0xC
5439F0:  PUSH.W          {R11}
5439F4:  MOV             R4, R0
5439F6:  LDR             R0, [R4]
5439F8:  LDR             R1, [R0,#0x14]
5439FA:  MOV             R0, R4
5439FC:  BLX             R1
5439FE:  MOV             R5, R0
543A00:  LDR             R0, =(UseDataFence_ptr - 0x543A06)
543A02:  ADD             R0, PC; UseDataFence_ptr
543A04:  LDR             R0, [R0]; UseDataFence
543A06:  LDRB            R0, [R0]
543A08:  CMP             R0, #0
543A0A:  IT NE
543A0C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543A10:  MOVS            R0, #4; byte_count
543A12:  BLX             malloc
543A16:  MOV             R6, R0
543A18:  MOVS            R1, #byte_4; void *
543A1A:  STR             R5, [R6]
543A1C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543A20:  MOV             R0, R6; p
543A22:  BLX             free
543A26:  LDR             R0, [R4]
543A28:  LDR             R1, [R0,#0x14]
543A2A:  MOV             R0, R4
543A2C:  BLX             R1
543A2E:  CMP             R0, #0xCA
543A30:  BNE             loc_543A8E
543A32:  LDR             R0, =(UseDataFence_ptr - 0x543A38)
543A34:  ADD             R0, PC; UseDataFence_ptr
543A36:  LDR             R0, [R0]; UseDataFence
543A38:  LDRB            R0, [R0]
543A3A:  CMP             R0, #0
543A3C:  IT NE
543A3E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543A42:  MOVS            R0, #4; byte_count
543A44:  BLX             malloc
543A48:  MOV             R5, R0
543A4A:  LDR             R0, [R4,#0x14]
543A4C:  STR             R0, [R5]
543A4E:  MOV             R0, R5; this
543A50:  MOVS            R1, #byte_4; void *
543A52:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543A56:  MOV             R0, R5; p
543A58:  BLX             free
543A5C:  LDR             R0, =(UseDataFence_ptr - 0x543A62)
543A5E:  ADD             R0, PC; UseDataFence_ptr
543A60:  LDR             R0, [R0]; UseDataFence
543A62:  LDRB            R0, [R0]
543A64:  CMP             R0, #0
543A66:  IT NE
543A68:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543A6C:  MOVS            R0, #4; byte_count
543A6E:  BLX             malloc
543A72:  MOV             R5, R0
543A74:  LDR             R0, [R4,#0x18]
543A76:  STR             R0, [R5]
543A78:  MOV             R0, R5; this
543A7A:  MOVS            R1, #byte_4; void *
543A7C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543A80:  MOV             R0, R5; p
543A82:  POP.W           {R11}
543A86:  POP.W           {R4-R7,LR}
543A8A:  B.W             j_free
543A8E:  LDR             R0, [R4]
543A90:  LDR             R1, [R0,#0x14]
543A92:  MOV             R0, R4
543A94:  BLX             R1
543A96:  MOV             R1, R0; int
543A98:  MOVS            R0, #0xCA; int
543A9A:  POP.W           {R11}
543A9E:  POP.W           {R4-R7,LR}
543AA2:  B.W             sub_1941D4
