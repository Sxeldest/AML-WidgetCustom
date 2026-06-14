; =========================================================
; Game Engine Function: _ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy
; Address            : 0x38DD04 - 0x38DDFA
; =========================================================

38DD04:  PUSH            {R4-R7,LR}
38DD06:  ADD             R7, SP, #0xC
38DD08:  PUSH.W          {R11}
38DD0C:  MOV             R4, R0
38DD0E:  LDRB            R0, [R4,#0xB]
38DD10:  CBZ             R0, loc_38DD2E
38DD12:  VLDR            S0, [R4,#0x10]
38DD16:  VCMP.F32        S0, #0.0
38DD1A:  VMRS            APSR_nzcv, FPSCR
38DD1E:  BNE             loc_38DDF4
38DD20:  MOV             R0, R4; this
38DD22:  POP.W           {R11}
38DD26:  POP.W           {R4-R7,LR}
38DD2A:  B.W             j_j__ZN19CAnimBlendHierarchy23CalcTotalTimeCompressedEv; j_CAnimBlendHierarchy::CalcTotalTimeCompressed(void)
38DD2E:  LDRB            R0, [R4,#0xA]
38DD30:  CMP             R0, #0
38DD32:  BEQ             loc_38DDD2
38DD34:  LDR             R0, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x38DD3A)
38DD36:  ADD             R0, PC; _ZN12CAnimManager12ms_animCacheE_ptr
38DD38:  LDR             R1, [R0]; CAnimManager::ms_animCache ...
38DD3A:  LDR             R0, [R1,#(dword_9421A8 - 0x942188)]
38DD3C:  ADDS            R1, #0x24 ; '$'
38DD3E:  CMP             R0, R1
38DD40:  BEQ             loc_38DD66
38DD42:  LDR             R3, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x38DD4E)
38DD44:  CMP             R0, #0
38DD46:  LDRD.W          R1, R2, [R0,#4]
38DD4A:  ADD             R3, PC; _ZN12CAnimManager12ms_animCacheE_ptr
38DD4C:  STR             R4, [R0]
38DD4E:  STR             R1, [R2,#4]
38DD50:  LDRD.W          R1, R2, [R0,#4]
38DD54:  LDR             R3, [R3]; CAnimManager::ms_animCache ...
38DD56:  STR             R2, [R1,#8]
38DD58:  LDR             R1, [R3,#(dword_942190 - 0x942188)]
38DD5A:  STR             R1, [R0,#8]
38DD5C:  LDR             R1, [R3,#(dword_942190 - 0x942188)]
38DD5E:  STR             R0, [R1,#4]
38DD60:  STR             R3, [R0,#4]
38DD62:  STR             R0, [R3,#(dword_942190 - 0x942188)]
38DD64:  BNE             loc_38DDC2
38DD66:  LDR             R0, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x38DD6C)
38DD68:  ADD             R0, PC; _ZN12CAnimManager12ms_animCacheE_ptr
38DD6A:  LDR             R5, [R0]; CAnimManager::ms_animCache ...
38DD6C:  LDR             R6, [R5,#(dword_942198 - 0x942188)]
38DD6E:  LDR             R0, [R6]; this
38DD70:  BLX             j__ZN19CAnimBlendHierarchy22RemoveUncompressedDataEv; CAnimBlendHierarchy::RemoveUncompressedData(void)
38DD74:  LDRD.W          R0, R1, [R6,#4]
38DD78:  ADD.W           R2, R5, #0x24 ; '$'
38DD7C:  STR             R0, [R1,#4]
38DD7E:  LDRD.W          R0, R1, [R6,#4]
38DD82:  STR             R1, [R0,#8]
38DD84:  LDR             R0, [R5,#(dword_9421A8 - 0x942188)]
38DD86:  STR             R0, [R6,#8]
38DD88:  LDR             R0, [R5,#(dword_9421A8 - 0x942188)]
38DD8A:  STR             R6, [R0,#4]
38DD8C:  ADD.W           R0, R5, #0x18
38DD90:  STR             R0, [R6,#4]
38DD92:  MOVS            R0, #0
38DD94:  STR             R6, [R5,#(dword_9421A8 - 0x942188)]
38DD96:  LDR             R1, [R6]
38DD98:  STR             R0, [R1,#0x14]
38DD9A:  LDR             R1, [R5,#(dword_9421A8 - 0x942188)]
38DD9C:  CMP             R1, R2
38DD9E:  BEQ             loc_38DDC2
38DDA0:  LDR             R3, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x38DDAA)
38DDA2:  LDRD.W          R0, R2, [R1,#4]
38DDA6:  ADD             R3, PC; _ZN12CAnimManager12ms_animCacheE_ptr
38DDA8:  STR             R4, [R1]
38DDAA:  STR             R0, [R2,#4]
38DDAC:  LDRD.W          R0, R2, [R1,#4]
38DDB0:  LDR             R3, [R3]; CAnimManager::ms_animCache ...
38DDB2:  STR             R2, [R0,#8]
38DDB4:  LDR             R0, [R3,#(dword_942190 - 0x942188)]
38DDB6:  STR             R0, [R1,#8]
38DDB8:  LDR             R0, [R3,#(dword_942190 - 0x942188)]
38DDBA:  STR             R1, [R0,#4]
38DDBC:  MOV             R0, R1
38DDBE:  STR             R3, [R1,#4]
38DDC0:  STR             R1, [R3,#(dword_942190 - 0x942188)]
38DDC2:  STR             R0, [R4,#0x14]
38DDC4:  MOV             R0, R4; this
38DDC6:  POP.W           {R11}
38DDCA:  POP.W           {R4-R7,LR}
38DDCE:  B.W             j_j__ZN19CAnimBlendHierarchy10UncompressEv; j_CAnimBlendHierarchy::Uncompress(void)
38DDD2:  LDR             R0, [R4,#0x14]
38DDD4:  CBZ             R0, loc_38DDF4
38DDD6:  LDR             R3, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x38DDE2)
38DDD8:  LDRD.W          R1, R2, [R0,#4]
38DDDC:  STR             R1, [R2,#4]
38DDDE:  ADD             R3, PC; _ZN12CAnimManager12ms_animCacheE_ptr
38DDE0:  LDRD.W          R1, R2, [R0,#4]
38DDE4:  LDR             R3, [R3]; CAnimManager::ms_animCache ...
38DDE6:  STR             R2, [R1,#8]
38DDE8:  LDR             R1, [R3,#(dword_942190 - 0x942188)]
38DDEA:  STR             R1, [R0,#8]
38DDEC:  LDR             R1, [R3,#(dword_942190 - 0x942188)]
38DDEE:  STR             R0, [R1,#4]
38DDF0:  STR             R3, [R0,#4]
38DDF2:  STR             R0, [R3,#(dword_942190 - 0x942188)]
38DDF4:  POP.W           {R11}
38DDF8:  POP             {R4-R7,PC}
