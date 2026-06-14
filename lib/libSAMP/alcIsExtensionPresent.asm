; =========================================================
; Game Engine Function: alcIsExtensionPresent
; Address            : 0x1BDCF4 - 0x1BDE88
; =========================================================

1BDCF4:  PUSH            {R4-R8,R10,R11,LR}
1BDCF8:  ADD             R11, SP, #0x18
1BDCFC:  MOV             R5, R0
1BDD00:  MOV             R8, R1
1BDD04:  CMP             R5, #0
1BDD08:  BEQ             loc_1BDE34
1BDD0C:  LDR             R0, =(unk_3827A0 - 0x1BDD18)
1BDD10:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BDD14:  BL              j_EnterCriticalSection
1BDD18:  LDR             R0, =(dword_382838 - 0x1BDD24)
1BDD1C:  ADD             R1, PC, R0; dword_382838
1BDD20:  MOV             R0, #0x2895C
1BDD28:  LDR             R4, [R1]
1BDD2C:  CMP             R4, #0
1BDD30:  ADDNE           R1, R4, R0
1BDD34:  CMPNE           R4, R5
1BDD38:  BNE             loc_1BDD28
1BDD3C:  CMP             R4, #0
1BDD40:  BEQ             loc_1BDD8C
1BDD44:  DMB             ISH
1BDD48:  LDREX           R0, [R4]
1BDD4C:  ADD             R3, R0, #1
1BDD50:  STREX           R0, R3, [R4]
1BDD54:  CMP             R0, #0
1BDD58:  BNE             loc_1BDD48
1BDD5C:  LDR             R0, =(LogLevel_ptr - 0x1BDD6C)
1BDD60:  DMB             ISH
1BDD64:  LDR             R0, [PC,R0]; LogLevel
1BDD68:  LDR             R0, [R0]
1BDD6C:  CMP             R0, #4
1BDD70:  BCC             loc_1BDD8C
1BDD74:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BDD88); "ALCdevice_IncRef" ...
1BDD78:  MOV             R2, R4
1BDD7C:  LDR             R1, =(aPIncreasingRef - 0x1BDD8C); "%p increasing refcount to %u\n" ...
1BDD80:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BDD84:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BDD88:  BL              j_al_print
1BDD8C:  LDR             R0, =(unk_3827A0 - 0x1BDD98)
1BDD90:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BDD94:  BL              j_LeaveCriticalSection
1BDD98:  CMP             R8, #0
1BDD9C:  BEQ             loc_1BDE40
1BDDA0:  LDR             R0, =(aAlcEnumerateAl_0 - 0x1BDDB4); "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"... ...
1BDDA4:  CMP             R4, #0
1BDDA8:  LDR             R1, =(aAlcEnumerateAl - 0x1BDDBC); "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"... ...
1BDDAC:  ADD             R6, PC, R0; "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"...
1BDDB0:  MOV             R0, R8; s
1BDDB4:  ADDNE           R6, PC, R1; "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"...
1BDDB8:  LDRB            R5, [R6]; "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"...
1BDDBC:  BL              strlen
1BDDC0:  MOV             R7, R0
1BDDC4:  B               loc_1BDE28
1BDDC8:  MOV             R0, R6; s1
1BDDCC:  MOV             R1, R8; s2
1BDDD0:  MOV             R2, R7; n
1BDDD4:  BL              strncasecmp
1BDDD8:  CMP             R0, #0
1BDDDC:  BNE             loc_1BDDFC
1BDDE0:  LDRB            R0, [R6,R7]; int
1BDDE4:  MOV             R5, #1
1BDDE8:  CMP             R0, #0
1BDDEC:  BEQ             loc_1BDE74
1BDDF0:  BL              isspace
1BDDF4:  CMP             R0, #0
1BDDF8:  BNE             loc_1BDE74
1BDDFC:  MOV             R0, R6; s
1BDE00:  MOV             R1, #0x20 ; ' '; c
1BDE04:  BL              strchr
1BDE08:  MOV             R6, R0
1BDE0C:  CMP             R6, #0
1BDE10:  BEQ             loc_1BDE70
1BDE14:  LDRB            R5, [R6,#1]!
1BDE18:  MOV             R0, R5; int
1BDE1C:  BL              isspace
1BDE20:  CMP             R0, #0
1BDE24:  BNE             loc_1BDE14
1BDE28:  CMP             R5, #0
1BDE2C:  BNE             loc_1BDDC8
1BDE30:  B               loc_1BDE70
1BDE34:  MOV             R4, #0
1BDE38:  CMP             R8, #0
1BDE3C:  BNE             loc_1BDDA0
1BDE40:  LDR             R0, =(byte_382798 - 0x1BDE4C)
1BDE44:  LDRB            R0, [PC,R0]; byte_382798
1BDE48:  CMP             R0, #0
1BDE4C:  BEQ             loc_1BDE58
1BDE50:  MOV             R0, #5; sig
1BDE54:  BL              raise
1BDE58:  LDR             R0, =(dword_38283C - 0x1BDE6C)
1BDE5C:  CMP             R4, #0
1BDE60:  MOVW            R1, #0xA004
1BDE64:  ADD             R0, PC, R0; dword_38283C
1BDE68:  ADDNE           R0, R4, #0x24 ; '$'
1BDE6C:  STR             R1, [R0]
1BDE70:  MOV             R5, #0
1BDE74:  CMP             R4, #0
1BDE78:  MOVNE           R0, R4
1BDE7C:  BLNE            j_ALCdevice_DecRef
1BDE80:  MOV             R0, R5
1BDE84:  POP             {R4-R8,R10,R11,PC}
