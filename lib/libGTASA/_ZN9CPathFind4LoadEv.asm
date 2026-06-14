; =========================================================
; Game Engine Function: _ZN9CPathFind4LoadEv
; Address            : 0x48CF50 - 0x48CF90
; =========================================================

48CF50:  PUSH            {R4-R7,LR}
48CF52:  ADD             R7, SP, #0xC
48CF54:  PUSH.W          {R11}
48CF58:  MOV             R5, R0
48CF5A:  MOVW            R6, #0x35A8
48CF5E:  ADDS            R4, R5, R6
48CF60:  MOVS            R1, #byte_4; void *
48CF62:  MOV             R0, R4; this
48CF64:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CF68:  LDR             R0, [R5,R6]
48CF6A:  CMP             R0, #1
48CF6C:  BLT             loc_48CF88
48CF6E:  MOVW            R0, #0x35AC
48CF72:  ADD             R5, R0
48CF74:  MOVS            R6, #0
48CF76:  MOV             R0, R5; this
48CF78:  MOVS            R1, #dword_1C; void *
48CF7A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CF7E:  LDR             R0, [R4]
48CF80:  ADDS            R6, #1
48CF82:  ADDS            R5, #0x1C
48CF84:  CMP             R6, R0
48CF86:  BLT             loc_48CF76
48CF88:  MOVS            R0, #1
48CF8A:  POP.W           {R11}
48CF8E:  POP             {R4-R7,PC}
