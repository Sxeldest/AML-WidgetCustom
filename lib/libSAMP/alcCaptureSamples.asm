; =========================================================
; Game Engine Function: alcCaptureSamples
; Address            : 0x1BC950 - 0x1BCAD8
; =========================================================

1BC950:  PUSH            {R4-R9,R11,LR}
1BC954:  ADD             R11, SP, #0x18
1BC958:  MOV             R7, R0
1BC95C:  MOV             R9, R2
1BC960:  MOV             R8, R1
1BC964:  MOVW            R5, #0xA001
1BC968:  CMP             R7, #0
1BC96C:  BEQ             loc_1BCA60
1BC970:  LDR             R0, =(unk_3827A0 - 0x1BC97C)
1BC974:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC978:  BL              j_EnterCriticalSection
1BC97C:  LDR             R0, =(dword_382838 - 0x1BC988)
1BC980:  ADD             R1, PC, R0; dword_382838
1BC984:  MOV             R0, #0x2895C
1BC98C:  LDR             R4, [R1]
1BC990:  CMP             R4, #0
1BC994:  ADDNE           R1, R4, R0
1BC998:  CMPNE           R4, R7
1BC99C:  BNE             loc_1BC98C
1BC9A0:  CMP             R4, #0
1BC9A4:  BEQ             loc_1BCA54
1BC9A8:  DMB             ISH
1BC9AC:  LDREX           R0, [R4]
1BC9B0:  ADD             R3, R0, #1
1BC9B4:  STREX           R0, R3, [R4]
1BC9B8:  CMP             R0, #0
1BC9BC:  BNE             loc_1BC9AC
1BC9C0:  LDR             R0, =(LogLevel_ptr - 0x1BC9D0)
1BC9C4:  DMB             ISH
1BC9C8:  LDR             R0, [PC,R0]; LogLevel
1BC9CC:  LDR             R0, [R0]
1BC9D0:  CMP             R0, #4
1BC9D4:  BCC             loc_1BC9F0
1BC9D8:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BC9EC); "ALCdevice_IncRef" ...
1BC9DC:  MOV             R2, R4
1BC9E0:  LDR             R1, =(aPIncreasingRef - 0x1BC9F0); "%p increasing refcount to %u\n" ...
1BC9E4:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BC9E8:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BC9EC:  BL              j_al_print
1BC9F0:  LDR             R0, =(unk_3827A0 - 0x1BC9FC)
1BC9F4:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC9F8:  BL              j_LeaveCriticalSection
1BC9FC:  LDRB            R0, [R4,#5]
1BCA00:  MOV             R6, #1
1BCA04:  CMP             R0, #0
1BCA08:  BEQ             loc_1BCA68
1BCA0C:  ADD             R7, R4, #8
1BCA10:  MOV             R0, R7; mutex
1BCA14:  BL              j_EnterCriticalSection
1BCA18:  CMP             R9, #0
1BCA1C:  BLT             loc_1BCA44
1BCA20:  MOVW            R0, #:lower16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1BCA24:  MOV             R5, R4
1BCA28:  MOVT            R0, #:upper16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1BCA2C:  LDR             R0, [R5,R0]!
1BCA30:  LDR             R1, [R0,#0x24]
1BCA34:  MOV             R0, R4
1BCA38:  BLX             R1
1BCA3C:  CMP             R0, R9
1BCA40:  BCS             loc_1BCAA8
1BCA44:  MOV             R0, R7; mutex
1BCA48:  BL              j_LeaveCriticalSection
1BCA4C:  MOVW            R5, #0xA004
1BCA50:  B               loc_1BCA68
1BCA54:  LDR             R0, =(unk_3827A0 - 0x1BCA60)
1BCA58:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCA5C:  BL              j_LeaveCriticalSection
1BCA60:  MOV             R4, #0
1BCA64:  MOV             R6, #0
1BCA68:  LDR             R0, =(byte_382798 - 0x1BCA74)
1BCA6C:  LDRB            R0, [PC,R0]; byte_382798
1BCA70:  CMP             R0, #0
1BCA74:  BEQ             loc_1BCA80
1BCA78:  MOV             R0, #5; sig
1BCA7C:  BL              raise
1BCA80:  LDR             R0, =(dword_38283C - 0x1BCA90)
1BCA84:  CMP             R6, #0
1BCA88:  ADD             R0, PC, R0; dword_38283C
1BCA8C:  ADDNE           R0, R4, #0x24 ; '$'
1BCA90:  CMP             R6, #1
1BCA94:  STR             R5, [R0]
1BCA98:  POPNE           {R4-R9,R11,PC}
1BCA9C:  MOV             R0, R4
1BCAA0:  POP             {R4-R9,R11,LR}
1BCAA4:  B               j_ALCdevice_DecRef
1BCAA8:  LDR             R0, [R5]
1BCAAC:  MOV             R1, R8
1BCAB0:  MOV             R2, R9
1BCAB4:  LDR             R3, [R0,#0x20]
1BCAB8:  MOV             R0, R4
1BCABC:  BLX             R3
1BCAC0:  MOV             R5, R0
1BCAC4:  MOV             R0, R7; mutex
1BCAC8:  BL              j_LeaveCriticalSection
1BCACC:  CMP             R5, #0
1BCAD0:  BNE             loc_1BCA68
1BCAD4:  B               loc_1BCA9C
