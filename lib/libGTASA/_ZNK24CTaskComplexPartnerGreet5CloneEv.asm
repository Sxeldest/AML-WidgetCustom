; =========================================================
; Game Engine Function: _ZNK24CTaskComplexPartnerGreet5CloneEv
; Address            : 0x536FF4 - 0x537098
; =========================================================

536FF4:  PUSH            {R4-R7,LR}
536FF6:  ADD             R7, SP, #0xC
536FF8:  PUSH.W          {R8}
536FFC:  VPUSH           {D8-D9}
537000:  MOV             R6, R0
537002:  MOVS            R0, #dword_78; this
537004:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
537008:  MOV             R4, R0
53700A:  ADD.W           R0, R6, #0x3C ; '<'
53700E:  VLD1.32         {D8-D9}, [R0]
537012:  MOV             R0, R4; this
537014:  LDR.W           R8, [R6,#0x74]
537018:  LDR             R5, [R6,#0x38]
53701A:  LDRB.W          R6, [R6,#0x58]
53701E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
537022:  ADD.W           R1, R4, #0x3C ; '<'
537026:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x537036)
537028:  CMP             R5, #0
53702A:  VST1.32         {D8-D9}, [R1]
53702E:  MOVW            R1, #:lower16:(elf_hash_chain+0xFD99)
537032:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
537034:  MOVT            R1, #:upper16:(elf_hash_chain+0xFD99)
537038:  STRB.W          R6, [R4,#0x58]
53703C:  ADD.W           R6, R4, #0x5E ; '^'
537040:  STR.W           R1, [R4,#0x59]
537044:  MOV.W           R1, #0
537048:  LDR             R0, [R0]; `vtable for'CTaskComplexPartner ...
53704A:  STRB.W          R1, [R4,#0x6E]
53704E:  MOV.W           R1, #1
537052:  STRH.W          R1, [R4,#0x5D]
537056:  MOV             R1, R4
537058:  ADD.W           R0, R0, #8
53705C:  STR             R0, [R4]
53705E:  STR.W           R5, [R1,#0x38]!; CEntity **
537062:  ITT NE
537064:  MOVNE           R0, R5; this
537066:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53706A:  LDR             R0, =(_ZTV24CTaskComplexPartnerGreet_ptr - 0x537076)
53706C:  MOVW            R1, #0x4B3
537070:  STR             R1, [R4,#0x34]
537072:  ADD             R0, PC; _ZTV24CTaskComplexPartnerGreet_ptr
537074:  STR.W           R8, [R4,#0x74]
537078:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerGreet ...
53707A:  ADDS            R0, #8
53707C:  STR             R0, [R4]
53707E:  MOVS            R0, #0x73 ; 's'
537080:  STRH            R0, [R6,#4]
537082:  MOV             R0, #0x676E6167
53708A:  STR             R0, [R6]
53708C:  MOV             R0, R4
53708E:  VPOP            {D8-D9}
537092:  POP.W           {R8}
537096:  POP             {R4-R7,PC}
