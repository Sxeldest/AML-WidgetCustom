; =========================================================
; Game Engine Function: sub_DEB30
; Address            : 0xDEB30 - 0xDEB84
; =========================================================

DEB30:  PUSH            {R4-R7,LR}
DEB32:  ADD             R7, SP, #0xC
DEB34:  PUSH.W          {R8}
DEB38:  MOV             R5, R0
DEB3A:  LDR.W           R8, [R0,#4]
DEB3E:  LDR             R0, [R0,#0xC]
DEB40:  ADD.W           R6, R0, R0,LSR#1
DEB44:  CMP             R6, R1
DEB46:  IT CC
DEB48:  MOVCC           R6, R1
DEB4A:  MOV             R0, R6; unsigned int
DEB4C:  BLX             j__Znwj; operator new(uint)
DEB50:  LDR             R1, [R5,#8]
DEB52:  CBZ             R1, loc_DEB64
DEB54:  MOV             R2, R8
DEB56:  MOV             R3, R0
DEB58:  LDRB.W          R4, [R2],#1
DEB5C:  SUBS            R1, #1; std::nothrow_t *
DEB5E:  STRB.W          R4, [R3],#1
DEB62:  BNE             loc_DEB58
DEB64:  STR             R0, [R5,#4]
DEB66:  ADD.W           R0, R5, #0x10
DEB6A:  CMP             R8, R0
DEB6C:  STR             R6, [R5,#0xC]
DEB6E:  BEQ             loc_DEB7E
DEB70:  MOV             R0, R8; void *
DEB72:  POP.W           {R8}
DEB76:  POP.W           {R4-R7,LR}
DEB7A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
DEB7E:  POP.W           {R8}
DEB82:  POP             {R4-R7,PC}
