; =========================================================
; Game Engine Function: _ZN27CTaskComplexMoveBackAndJump9SerializeEv
; Address            : 0x50FE6C - 0x50FED6
; =========================================================

50FE6C:  PUSH            {R4-R7,LR}
50FE6E:  ADD             R7, SP, #0xC
50FE70:  PUSH.W          {R11}
50FE74:  MOV             R4, R0
50FE76:  LDR             R0, [R4]
50FE78:  LDR             R1, [R0,#0x14]
50FE7A:  MOV             R0, R4
50FE7C:  BLX             R1
50FE7E:  MOV             R5, R0
50FE80:  LDR             R0, =(UseDataFence_ptr - 0x50FE86)
50FE82:  ADD             R0, PC; UseDataFence_ptr
50FE84:  LDR             R0, [R0]; UseDataFence
50FE86:  LDRB            R0, [R0]
50FE88:  CMP             R0, #0
50FE8A:  IT NE
50FE8C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FE90:  MOVS            R0, #4; byte_count
50FE92:  BLX             malloc
50FE96:  MOV             R6, R0
50FE98:  MOVS            R1, #byte_4; void *
50FE9A:  STR             R5, [R6]
50FE9C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FEA0:  MOV             R0, R6; p
50FEA2:  BLX             free
50FEA6:  LDR             R0, [R4]
50FEA8:  LDR             R1, [R0,#0x14]
50FEAA:  MOV             R0, R4
50FEAC:  BLX             R1
50FEAE:  MOVW            R1, #0x1FF
50FEB2:  CMP             R0, R1
50FEB4:  ITT EQ
50FEB6:  POPEQ.W         {R11}
50FEBA:  POPEQ           {R4-R7,PC}
50FEBC:  LDR             R0, [R4]
50FEBE:  LDR             R1, [R0,#0x14]
50FEC0:  MOV             R0, R4
50FEC2:  BLX             R1
50FEC4:  MOV             R1, R0; int
50FEC6:  MOVW            R0, #0x1FF; int
50FECA:  POP.W           {R11}
50FECE:  POP.W           {R4-R7,LR}
50FED2:  B.W             sub_1941D4
