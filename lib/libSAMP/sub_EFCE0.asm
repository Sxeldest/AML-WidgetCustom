; =========================================================
; Game Engine Function: sub_EFCE0
; Address            : 0xEFCE0 - 0xEFD3C
; =========================================================

EFCE0:  PUSH            {R4-R7,LR}
EFCE2:  ADD             R7, SP, #0xC
EFCE4:  PUSH.W          {R8}
EFCE8:  SUB.W           SP, SP, #0x210
EFCEC:  MOV             R8, R0
EFCEE:  MOV.W           R0, #0x1F4
EFCF2:  MOV             R4, R2
EFCF4:  LDR             R2, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xEFD02); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
EFCF6:  STR             R0, [SP,#0x220+var_20C]
EFCF8:  ADD             R0, SP, #0x220+var_218
EFCFA:  ADD.W           R6, R0, #0x10
EFCFE:  ADD             R2, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
EFD00:  MOVS            R5, #0
EFD02:  ADDS            R2, #8
EFD04:  LDR.W           R12, [R7,#arg_0]
EFD08:  STR             R6, [SP,#0x220+var_214]
EFD0A:  STR             R5, [SP,#0x220+var_210]
EFD0C:  STR             R2, [SP,#0x220+var_218]
EFD0E:  MOV             R2, R4
EFD10:  STR.W           R12, [SP,#0x220+var_220]
EFD14:  BL              sub_EFD50
EFD18:  LDRD.W          R1, R2, [SP,#0x220+var_214]
EFD1C:  MOV             R0, R8
EFD1E:  MOV             R3, R4
EFD20:  BL              sub_EFEA0
EFD24:  MOV             R4, R0
EFD26:  LDR             R0, [SP,#0x220+var_214]; void *
EFD28:  CMP             R0, R6
EFD2A:  IT NE
EFD2C:  BLXNE           j__ZdlPv; operator delete(void *)
EFD30:  MOV             R0, R4
EFD32:  ADD.W           SP, SP, #0x210
EFD36:  POP.W           {R8}
EFD3A:  POP             {R4-R7,PC}
