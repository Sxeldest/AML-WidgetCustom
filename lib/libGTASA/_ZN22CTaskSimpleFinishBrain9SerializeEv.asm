; =========================================================
; Game Engine Function: _ZN22CTaskSimpleFinishBrain9SerializeEv
; Address            : 0x32EC40 - 0x32ECAA
; =========================================================

32EC40:  PUSH            {R4-R7,LR}
32EC42:  ADD             R7, SP, #0xC
32EC44:  PUSH.W          {R11}
32EC48:  MOV             R4, R0
32EC4A:  LDR             R0, [R4]
32EC4C:  LDR             R1, [R0,#0x14]
32EC4E:  MOV             R0, R4
32EC50:  BLX             R1
32EC52:  MOV             R5, R0
32EC54:  LDR             R0, =(UseDataFence_ptr - 0x32EC5A)
32EC56:  ADD             R0, PC; UseDataFence_ptr
32EC58:  LDR             R0, [R0]; UseDataFence
32EC5A:  LDRB            R0, [R0]
32EC5C:  CMP             R0, #0
32EC5E:  IT NE
32EC60:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
32EC64:  MOVS            R0, #4; byte_count
32EC66:  BLX             malloc
32EC6A:  MOV             R6, R0
32EC6C:  MOVS            R1, #byte_4; void *
32EC6E:  STR             R5, [R6]
32EC70:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
32EC74:  MOV             R0, R6; p
32EC76:  BLX             free
32EC7A:  LDR             R0, [R4]
32EC7C:  LDR             R1, [R0,#0x14]
32EC7E:  MOV             R0, R4
32EC80:  BLX             R1
32EC82:  MOVW            R1, #0x709
32EC86:  CMP             R0, R1
32EC88:  ITT EQ
32EC8A:  POPEQ.W         {R11}
32EC8E:  POPEQ           {R4-R7,PC}
32EC90:  LDR             R0, [R4]
32EC92:  LDR             R1, [R0,#0x14]
32EC94:  MOV             R0, R4
32EC96:  BLX             R1
32EC98:  MOV             R1, R0; int
32EC9A:  MOVW            R0, #0x709; int
32EC9E:  POP.W           {R11}
32ECA2:  POP.W           {R4-R7,LR}
32ECA6:  B.W             sub_1941D4
