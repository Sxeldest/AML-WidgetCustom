; =========================================================
; Game Engine Function: _ZN18CTaskSimpleStandUp9SerializeEv
; Address            : 0x4F2F0C - 0x4F2F8C
; =========================================================

4F2F0C:  PUSH            {R4-R7,LR}
4F2F0E:  ADD             R7, SP, #0xC
4F2F10:  PUSH.W          {R11}
4F2F14:  MOV             R4, R0
4F2F16:  LDR             R0, [R4]
4F2F18:  LDR             R1, [R0,#0x14]
4F2F1A:  MOV             R0, R4
4F2F1C:  BLX             R1
4F2F1E:  MOV             R5, R0
4F2F20:  LDR             R0, =(UseDataFence_ptr - 0x4F2F26)
4F2F22:  ADD             R0, PC; UseDataFence_ptr
4F2F24:  LDR             R0, [R0]; UseDataFence
4F2F26:  LDRB            R0, [R0]
4F2F28:  CMP             R0, #0
4F2F2A:  IT NE
4F2F2C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F2F30:  MOVS            R0, #4; byte_count
4F2F32:  BLX             malloc
4F2F36:  MOV             R6, R0
4F2F38:  MOVS            R1, #byte_4; void *
4F2F3A:  STR             R5, [R6]
4F2F3C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F2F40:  MOV             R0, R6; p
4F2F42:  BLX             free
4F2F46:  LDR             R0, [R4]
4F2F48:  LDR             R1, [R0,#0x14]
4F2F4A:  MOV             R0, R4
4F2F4C:  BLX             R1
4F2F4E:  CMP             R0, #0xDE
4F2F50:  BNE             loc_4F2F74
4F2F52:  LDR             R0, =(UseDataFence_ptr - 0x4F2F58)
4F2F54:  ADD             R0, PC; UseDataFence_ptr
4F2F56:  LDR             R0, [R0]; UseDataFence
4F2F58:  LDRB            R0, [R0]
4F2F5A:  CMP             R0, #0
4F2F5C:  IT NE
4F2F5E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F2F62:  ADD.W           R0, R4, #8; this
4F2F66:  MOVS            R1, #(stderr+1); void *
4F2F68:  POP.W           {R11}
4F2F6C:  POP.W           {R4-R7,LR}
4F2F70:  B.W             sub_19EA3C
4F2F74:  LDR             R0, [R4]
4F2F76:  LDR             R1, [R0,#0x14]
4F2F78:  MOV             R0, R4
4F2F7A:  BLX             R1
4F2F7C:  MOV             R1, R0; int
4F2F7E:  MOVS            R0, #0xDE; int
4F2F80:  POP.W           {R11}
4F2F84:  POP.W           {R4-R7,LR}
4F2F88:  B.W             sub_1941D4
