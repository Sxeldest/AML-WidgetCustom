; =========================================================
; Game Engine Function: _ZN27CTaskSimpleCarSetTempAction10ProcessPedEP4CPed
; Address            : 0x4FCF88 - 0x4FD00E
; =========================================================

4FCF88:  PUSH            {R4-R7,LR}
4FCF8A:  ADD             R7, SP, #0xC
4FCF8C:  PUSH.W          {R11}
4FCF90:  MOV             R4, R0
4FCF92:  MOV             R6, R1
4FCF94:  MOV             R5, R4
4FCF96:  LDR.W           R0, [R5,#8]!
4FCF9A:  CBNZ            R0, loc_4FCFAC
4FCF9C:  LDR.W           R0, [R6,#0x590]; this
4FCFA0:  STR             R0, [R5]
4FCFA2:  CMP             R0, #0
4FCFA4:  ITT NE
4FCFA6:  MOVNE           R1, R5; CEntity **
4FCFA8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FCFAC:  MOV             R0, R4; this
4FCFAE:  MOV             R1, R6; CPed *
4FCFB0:  BLX             j__ZN19CTaskSimpleCarDrive10ProcessPedEP4CPed; CTaskSimpleCarDrive::ProcessPed(CPed *)
4FCFB4:  LDR             R1, [R4,#8]
4FCFB6:  CMP             R0, #1
4FCFB8:  BNE             loc_4FCFD8
4FCFBA:  CBZ             R1, loc_4FD006
4FCFBC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FCFC8)
4FCFBE:  MOVS            R2, #0
4FCFC0:  STRB.W          R2, [R1,#0x3BF]
4FCFC4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FCFC6:  LDR             R1, [R5]
4FCFC8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FCFCA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FCFCC:  STR.W           R0, [R1,#0x3C0]
4FCFD0:  MOVS            R0, #1
4FCFD2:  POP.W           {R11}
4FCFD6:  POP             {R4-R7,PC}
4FCFD8:  CBZ             R1, loc_4FD006
4FCFDA:  LDR             R0, [R4,#0x60]
4FCFDC:  CBZ             R0, loc_4FCFFE
4FCFDE:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FCFE8)
4FCFE0:  STRB.W          R0, [R1,#0x3BF]
4FCFE4:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FCFE6:  LDR             R0, [R4,#8]
4FCFE8:  LDR             R1, [R4,#0x64]
4FCFEA:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4FCFEC:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4FCFEE:  ADD             R1, R2
4FCFF0:  STR.W           R1, [R0,#0x3C0]
4FCFF4:  MOVS            R0, #0
4FCFF6:  STR             R0, [R4,#0x60]
4FCFF8:  POP.W           {R11}
4FCFFC:  POP             {R4-R7,PC}
4FCFFE:  LDRB.W          R0, [R1,#0x3BF]
4FD002:  CMP             R0, #0
4FD004:  BEQ             loc_4FCFD0
4FD006:  MOVS            R0, #0
4FD008:  POP.W           {R11}
4FD00C:  POP             {R4-R7,PC}
