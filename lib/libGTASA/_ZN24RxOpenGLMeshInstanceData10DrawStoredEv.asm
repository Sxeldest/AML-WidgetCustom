; =========================================================
; Game Engine Function: _ZN24RxOpenGLMeshInstanceData10DrawStoredEv
; Address            : 0x222C00 - 0x222C60
; =========================================================

222C00:  LDR             R2, =(skipBlendRender_ptr - 0x222C08)
222C02:  LDR             R1, =(emu_InternalBlendEnabled_ptr - 0x222C0A)
222C04:  ADD             R2, PC; skipBlendRender_ptr
222C06:  ADD             R1, PC; emu_InternalBlendEnabled_ptr
222C08:  LDR             R2, [R2]; skipBlendRender
222C0A:  LDR             R1, [R1]; emu_InternalBlendEnabled
222C0C:  LDRB            R2, [R2]
222C0E:  LDRB            R1, [R1]
222C10:  CMP             R2, #0
222C12:  IT NE
222C14:  CMPNE           R1, #0
222C16:  BNE             locret_222C4E
222C18:  LDR             R2, =(skipNonblendRender_ptr - 0x222C1E)
222C1A:  ADD             R2, PC; skipNonblendRender_ptr
222C1C:  LDR             R2, [R2]; skipNonblendRender
222C1E:  LDRB            R2, [R2]
222C20:  CBZ             R2, loc_222C28
222C22:  CMP             R1, #0
222C24:  IT EQ
222C26:  BXEQ            LR
222C28:  LDR             R1, [R0,#0x1C]; this
222C2A:  CBZ             R1, loc_222C50
222C2C:  LDR.W           R12, [R0,#0x20]
222C30:  LDR             R2, [R0]; unsigned int
222C32:  CMP.W           R12, #0
222C36:  BEQ             loc_222C58
222C38:  PUSH            {R7,LR}
222C3A:  MOV             R7, SP
222C3C:  SUB             SP, SP, #8
222C3E:  LDRD.W          R3, R0, [R0,#0x24]; unsigned int
222C42:  STR             R0, [SP,#0x10+var_10]; unsigned int
222C44:  MOV             R0, R12; ArrayState *
222C46:  BLX             j__Z28emu_ArraysDrawStoredSeparatejjjjj; emu_ArraysDrawStoredSeparate(uint,uint,uint,uint,uint)
222C4A:  ADD             SP, SP, #8
222C4C:  POP             {R7,PC}
222C4E:  BX              LR
222C50:  LDR             R1, [R0]; unsigned int
222C52:  LDR             R0, [R0,#0x14]; unsigned int
222C54:  B.W             j_j__Z20emu_ArraysDrawStoredjj; j_emu_ArraysDrawStored(uint,uint)
222C58:  MOV             R0, R1; unsigned int
222C5A:  MOV             R1, R2; unsigned int
222C5C:  B.W             j_j__Z20emu_ArraysDrawStoredjj; j_emu_ArraysDrawStored(uint,uint)
