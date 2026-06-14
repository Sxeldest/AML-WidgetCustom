; =========================================================
; Game Engine Function: _ZN20CTaskSimpleLookAbout9SerializeEv
; Address            : 0x3579F4 - 0x357A88
; =========================================================

3579F4:  PUSH            {R4-R7,LR}
3579F6:  ADD             R7, SP, #0xC
3579F8:  PUSH.W          {R11}
3579FC:  MOV             R4, R0
3579FE:  LDR             R0, [R4]
357A00:  LDR             R1, [R0,#0x14]
357A02:  MOV             R0, R4
357A04:  BLX             R1
357A06:  MOV             R5, R0
357A08:  LDR             R0, =(UseDataFence_ptr - 0x357A0E)
357A0A:  ADD             R0, PC; UseDataFence_ptr
357A0C:  LDR             R0, [R0]; UseDataFence
357A0E:  LDRB            R0, [R0]
357A10:  CMP             R0, #0
357A12:  IT NE
357A14:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357A18:  MOVS            R0, #4; byte_count
357A1A:  BLX             malloc
357A1E:  MOV             R6, R0
357A20:  MOVS            R1, #byte_4; void *
357A22:  STR             R5, [R6]
357A24:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357A28:  MOV             R0, R6; p
357A2A:  BLX             free
357A2E:  LDR             R0, [R4]
357A30:  LDR             R1, [R0,#0x14]
357A32:  MOV             R0, R4
357A34:  BLX             R1
357A36:  CMP.W           R0, #0x1A6
357A3A:  BNE             loc_357A6E
357A3C:  LDR             R0, =(UseDataFence_ptr - 0x357A42)
357A3E:  ADD             R0, PC; UseDataFence_ptr
357A40:  LDR             R0, [R0]; UseDataFence
357A42:  LDRB            R0, [R0]
357A44:  CMP             R0, #0
357A46:  IT NE
357A48:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357A4C:  MOVS            R0, #4; byte_count
357A4E:  BLX             malloc
357A52:  MOV             R5, R0
357A54:  LDR             R0, [R4,#0x20]
357A56:  STR             R0, [R5]
357A58:  MOV             R0, R5; this
357A5A:  MOVS            R1, #byte_4; void *
357A5C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357A60:  MOV             R0, R5; p
357A62:  POP.W           {R11}
357A66:  POP.W           {R4-R7,LR}
357A6A:  B.W             j_free
357A6E:  LDR             R0, [R4]
357A70:  LDR             R1, [R0,#0x14]
357A72:  MOV             R0, R4
357A74:  BLX             R1
357A76:  MOV             R1, R0; int
357A78:  MOV.W           R0, #0x1A6; int
357A7C:  POP.W           {R11}
357A80:  POP.W           {R4-R7,LR}
357A84:  B.W             sub_1941D4
