; =========================================================
; Game Engine Function: alcGetProcAddress
; Address            : 0x1BDEB0 - 0x1BDFF4
; =========================================================

1BDEB0:  PUSH            {R4-R7,R11,LR}
1BDEB4:  ADD             R11, SP, #0x10
1BDEB8:  MOV             R6, R0
1BDEBC:  MOV             R5, R1
1BDEC0:  CMP             R6, #0
1BDEC4:  BEQ             loc_1BDFA0
1BDEC8:  LDR             R0, =(unk_3827A0 - 0x1BDED4)
1BDECC:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BDED0:  BL              j_EnterCriticalSection
1BDED4:  LDR             R0, =(dword_382838 - 0x1BDEE0)
1BDED8:  ADD             R1, PC, R0; dword_382838
1BDEDC:  MOV             R0, #0x2895C
1BDEE4:  LDR             R4, [R1]
1BDEE8:  CMP             R4, #0
1BDEEC:  ADDNE           R1, R4, R0
1BDEF0:  CMPNE           R4, R6
1BDEF4:  BNE             loc_1BDEE4
1BDEF8:  CMP             R4, #0
1BDEFC:  BEQ             loc_1BDF48
1BDF00:  DMB             ISH
1BDF04:  LDREX           R0, [R4]
1BDF08:  ADD             R3, R0, #1
1BDF0C:  STREX           R0, R3, [R4]
1BDF10:  CMP             R0, #0
1BDF14:  BNE             loc_1BDF04
1BDF18:  LDR             R0, =(LogLevel_ptr - 0x1BDF28)
1BDF1C:  DMB             ISH
1BDF20:  LDR             R0, [PC,R0]; LogLevel
1BDF24:  LDR             R0, [R0]
1BDF28:  CMP             R0, #4
1BDF2C:  BCC             loc_1BDF48
1BDF30:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BDF44); "ALCdevice_IncRef" ...
1BDF34:  MOV             R2, R4
1BDF38:  LDR             R1, =(aPIncreasingRef - 0x1BDF48); "%p increasing refcount to %u\n" ...
1BDF3C:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BDF40:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BDF44:  BL              j_al_print
1BDF48:  LDR             R0, =(unk_3827A0 - 0x1BDF54)
1BDF4C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BDF50:  BL              j_LeaveCriticalSection
1BDF54:  CMP             R5, #0
1BDF58:  BEQ             loc_1BDFAC
1BDF5C:  LDR             R0, =(off_230260 - 0x1BDF6C); "alcCreateContext" ...
1BDF60:  MOV             R6, #0
1BDF64:  ADD             R7, PC, R0; off_230260
1BDF68:  LDR             R0, [R7,R6,LSL#3]; s1
1BDF6C:  MOV             R1, R5; s2
1BDF70:  BL              strcmp
1BDF74:  CMP             R0, #0
1BDF78:  BEQ             loc_1BDF8C
1BDF7C:  ADD             R6, R6, #1
1BDF80:  CMP             R6, #0x8A
1BDF84:  BNE             loc_1BDF68
1BDF88:  MOV             R6, #0x8A
1BDF8C:  LDR             R0, =(off_230260 - 0x1BDF98); "alcCreateContext" ...
1BDF90:  ADD             R0, PC, R0; off_230260
1BDF94:  ADD             R0, R0, R6,LSL#3
1BDF98:  LDR             R5, [R0,#4]
1BDF9C:  B               loc_1BDFE0
1BDFA0:  MOV             R4, #0
1BDFA4:  CMP             R5, #0
1BDFA8:  BNE             loc_1BDF5C
1BDFAC:  LDR             R0, =(byte_382798 - 0x1BDFB8)
1BDFB0:  LDRB            R0, [PC,R0]; byte_382798
1BDFB4:  CMP             R0, #0
1BDFB8:  BEQ             loc_1BDFC4
1BDFBC:  MOV             R0, #5; sig
1BDFC0:  BL              raise
1BDFC4:  LDR             R0, =(dword_38283C - 0x1BDFDC)
1BDFC8:  CMP             R4, #0
1BDFCC:  MOV             R5, #0
1BDFD0:  MOVW            R1, #0xA004
1BDFD4:  ADD             R0, PC, R0; dword_38283C
1BDFD8:  ADDNE           R0, R4, #0x24 ; '$'
1BDFDC:  STR             R1, [R0]
1BDFE0:  CMP             R4, #0
1BDFE4:  MOVNE           R0, R4
1BDFE8:  BLNE            j_ALCdevice_DecRef
1BDFEC:  MOV             R0, R5
1BDFF0:  POP             {R4-R7,R11,PC}
