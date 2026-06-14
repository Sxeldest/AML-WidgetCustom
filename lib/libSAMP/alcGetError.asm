; =========================================================
; Game Engine Function: alcGetError
; Address            : 0x1BCAFC - 0x1BCC00
; =========================================================

1BCAFC:  PUSH            {R4,R5,R11,LR}
1BCB00:  ADD             R11, SP, #8
1BCB04:  MOV             R4, R0
1BCB08:  CMP             R4, #0
1BCB0C:  BEQ             loc_1BCBD4
1BCB10:  LDR             R0, =(unk_3827A0 - 0x1BCB1C)
1BCB14:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCB18:  BL              j_EnterCriticalSection
1BCB1C:  LDR             R0, =(dword_382838 - 0x1BCB28)
1BCB20:  ADD             R1, PC, R0; dword_382838
1BCB24:  MOV             R0, #0x2895C
1BCB2C:  LDR             R2, [R1]
1BCB30:  CMP             R2, #0
1BCB34:  ADDNE           R1, R2, R0
1BCB38:  CMPNE           R2, R4
1BCB3C:  BNE             loc_1BCB2C
1BCB40:  CMP             R2, #0
1BCB44:  BEQ             loc_1BCBC8
1BCB48:  DMB             ISH
1BCB4C:  LDREX           R0, [R2]
1BCB50:  ADD             R3, R0, #1
1BCB54:  STREX           R0, R3, [R2]
1BCB58:  CMP             R0, #0
1BCB5C:  BNE             loc_1BCB4C
1BCB60:  LDR             R0, =(LogLevel_ptr - 0x1BCB70)
1BCB64:  DMB             ISH
1BCB68:  LDR             R0, [PC,R0]; LogLevel
1BCB6C:  LDR             R0, [R0]
1BCB70:  CMP             R0, #4
1BCB74:  BCC             loc_1BCB8C
1BCB78:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BCB88); "ALCdevice_IncRef" ...
1BCB7C:  LDR             R1, =(aPIncreasingRef - 0x1BCB8C); "%p increasing refcount to %u\n" ...
1BCB80:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BCB84:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BCB88:  BL              j_al_print
1BCB8C:  LDR             R0, =(unk_3827A0 - 0x1BCB98)
1BCB90:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCB94:  BL              j_LeaveCriticalSection
1BCB98:  ADD             R0, R4, #0x24 ; '$'
1BCB9C:  MOV             R1, #0
1BCBA0:  DMB             ISH
1BCBA4:  LDREX           R5, [R0]
1BCBA8:  STREX           R2, R1, [R0]
1BCBAC:  CMP             R2, #0
1BCBB0:  BNE             loc_1BCBA4
1BCBB4:  MOV             R0, R4
1BCBB8:  DMB             ISH
1BCBBC:  BL              j_ALCdevice_DecRef
1BCBC0:  MOV             R0, R5
1BCBC4:  POP             {R4,R5,R11,PC}
1BCBC8:  LDR             R0, =(unk_3827A0 - 0x1BCBD4)
1BCBCC:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCBD0:  BL              j_LeaveCriticalSection
1BCBD4:  LDR             R0, =(dword_38283C - 0x1BCBE8)
1BCBD8:  MOV             R1, #0
1BCBDC:  DMB             ISH
1BCBE0:  ADD             R0, PC, R0; dword_38283C
1BCBE4:  LDREX           R5, [R0]
1BCBE8:  STREX           R2, R1, [R0]
1BCBEC:  CMP             R2, #0
1BCBF0:  BNE             loc_1BCBE4
1BCBF4:  MOV             R0, R5
1BCBF8:  DMB             ISH
1BCBFC:  POP             {R4,R5,R11,PC}
