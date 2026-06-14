; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLand9SerializeEv
; Address            : 0x532EE8 - 0x532F78
; =========================================================

532EE8:  PUSH            {R4-R7,LR}
532EEA:  ADD             R7, SP, #0xC
532EEC:  PUSH.W          {R11}
532EF0:  MOV             R4, R0
532EF2:  LDR             R0, [R4]
532EF4:  LDR             R1, [R0,#0x14]
532EF6:  MOV             R0, R4
532EF8:  BLX             R1
532EFA:  MOV             R5, R0
532EFC:  LDR             R0, =(UseDataFence_ptr - 0x532F02)
532EFE:  ADD             R0, PC; UseDataFence_ptr
532F00:  LDR             R0, [R0]; UseDataFence
532F02:  LDRB            R0, [R0]
532F04:  CMP             R0, #0
532F06:  IT NE
532F08:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532F0C:  MOVS            R0, #4; byte_count
532F0E:  BLX             malloc
532F12:  MOV             R6, R0
532F14:  MOVS            R1, #byte_4; void *
532F16:  STR             R5, [R6]
532F18:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532F1C:  MOV             R0, R6; p
532F1E:  BLX             free
532F22:  LDR             R0, [R4]
532F24:  LDR             R1, [R0,#0x14]
532F26:  MOV             R0, R4
532F28:  BLX             R1
532F2A:  CMP             R0, #0xF2
532F2C:  BNE             loc_532F60
532F2E:  LDR             R0, =(UseDataFence_ptr - 0x532F34)
532F30:  ADD             R0, PC; UseDataFence_ptr
532F32:  LDR             R0, [R0]; UseDataFence
532F34:  LDRB            R0, [R0]
532F36:  CMP             R0, #0
532F38:  IT NE
532F3A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532F3E:  MOVS            R0, #4; byte_count
532F40:  BLX             malloc
532F44:  MOV             R5, R0
532F46:  LDR             R0, [R4,#0xC]
532F48:  STR             R0, [R5]
532F4A:  MOV             R0, R5; this
532F4C:  MOVS            R1, #byte_4; void *
532F4E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532F52:  MOV             R0, R5; p
532F54:  POP.W           {R11}
532F58:  POP.W           {R4-R7,LR}
532F5C:  B.W             j_free
532F60:  LDR             R0, [R4]
532F62:  LDR             R1, [R0,#0x14]
532F64:  MOV             R0, R4
532F66:  BLX             R1
532F68:  MOV             R1, R0; int
532F6A:  MOVS            R0, #0xF2; int
532F6C:  POP.W           {R11}
532F70:  POP.W           {R4-R7,LR}
532F74:  B.W             sub_1941D4
