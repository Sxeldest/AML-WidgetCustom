; =========================================================
; Game Engine Function: _ZNK23CTaskComplexPartnerDeal5CloneEv
; Address            : 0x536F48 - 0x536FE4
; =========================================================

536F48:  PUSH            {R4-R7,LR}
536F4A:  ADD             R7, SP, #0xC
536F4C:  PUSH.W          {R11}
536F50:  VPUSH           {D8-D9}
536F54:  MOV             R6, R0
536F56:  MOVS            R0, #dword_74; this
536F58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
536F5C:  MOV             R4, R0
536F5E:  ADD.W           R0, R6, #0x3C ; '<'
536F62:  VLD1.32         {D8-D9}, [R0]
536F66:  MOV             R0, R4; this
536F68:  LDR             R5, [R6,#0x38]
536F6A:  LDRB.W          R6, [R6,#0x58]
536F6E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
536F72:  ADD.W           R1, R4, #0x3C ; '<'
536F76:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x536F86)
536F78:  CMP             R5, #0
536F7A:  VST1.32         {D8-D9}, [R1]
536F7E:  MOVW            R1, #:lower16:(elf_hash_chain+0xFD99)
536F82:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
536F84:  MOVT            R1, #:upper16:(elf_hash_chain+0xFD99)
536F88:  STRB.W          R6, [R4,#0x58]
536F8C:  ADD.W           R6, R4, #0x5E ; '^'
536F90:  STR.W           R1, [R4,#0x59]
536F94:  MOV.W           R1, #0
536F98:  LDR             R0, [R0]; `vtable for'CTaskComplexPartner ...
536F9A:  STRB.W          R1, [R4,#0x6E]
536F9E:  MOV.W           R1, #1
536FA2:  STRH.W          R1, [R4,#0x5D]
536FA6:  MOV             R1, R4
536FA8:  ADD.W           R0, R0, #8
536FAC:  STR             R0, [R4]
536FAE:  STR.W           R5, [R1,#0x38]!; CEntity **
536FB2:  ITT NE
536FB4:  MOVNE           R0, R5; this
536FB6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
536FBA:  LDR             R0, =(_ZTV23CTaskComplexPartnerDeal_ptr - 0x536FC6)
536FBC:  MOVW            R1, #0x4B2
536FC0:  STR             R1, [R4,#0x34]
536FC2:  ADD             R0, PC; _ZTV23CTaskComplexPartnerDeal_ptr
536FC4:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerDeal ...
536FC6:  ADDS            R0, #8
536FC8:  STR             R0, [R4]
536FCA:  MOVS            R0, #0x73 ; 's'
536FCC:  STRH            R0, [R6,#4]
536FCE:  MOV             R0, #0x676E6167
536FD6:  STR             R0, [R6]
536FD8:  MOV             R0, R4
536FDA:  VPOP            {D8-D9}
536FDE:  POP.W           {R11}
536FE2:  POP             {R4-R7,PC}
