; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHitHead9SerializeEv
; Address            : 0x50ED5C - 0x50EDC4
; =========================================================

50ED5C:  PUSH            {R4-R7,LR}
50ED5E:  ADD             R7, SP, #0xC
50ED60:  PUSH.W          {R11}
50ED64:  MOV             R4, R0
50ED66:  LDR             R0, [R4]
50ED68:  LDR             R1, [R0,#0x14]
50ED6A:  MOV             R0, R4
50ED6C:  BLX             R1
50ED6E:  MOV             R5, R0
50ED70:  LDR             R0, =(UseDataFence_ptr - 0x50ED76)
50ED72:  ADD             R0, PC; UseDataFence_ptr
50ED74:  LDR             R0, [R0]; UseDataFence
50ED76:  LDRB            R0, [R0]
50ED78:  CMP             R0, #0
50ED7A:  IT NE
50ED7C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50ED80:  MOVS            R0, #4; byte_count
50ED82:  BLX             malloc
50ED86:  MOV             R6, R0
50ED88:  MOVS            R1, #byte_4; void *
50ED8A:  STR             R5, [R6]
50ED8C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50ED90:  MOV             R0, R6; p
50ED92:  BLX             free
50ED96:  LDR             R0, [R4]
50ED98:  LDR             R1, [R0,#0x14]
50ED9A:  MOV             R0, R4
50ED9C:  BLX             R1
50ED9E:  CMP.W           R0, #0x1F4
50EDA2:  ITT EQ
50EDA4:  POPEQ.W         {R11}
50EDA8:  POPEQ           {R4-R7,PC}
50EDAA:  LDR             R0, [R4]
50EDAC:  LDR             R1, [R0,#0x14]
50EDAE:  MOV             R0, R4
50EDB0:  BLX             R1
50EDB2:  MOV             R1, R0; int
50EDB4:  MOV.W           R0, #0x1F4; int
50EDB8:  POP.W           {R11}
50EDBC:  POP.W           {R4-R7,LR}
50EDC0:  B.W             sub_1941D4
