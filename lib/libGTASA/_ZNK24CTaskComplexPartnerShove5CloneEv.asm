; =========================================================
; Game Engine Function: _ZNK24CTaskComplexPartnerShove5CloneEv
; Address            : 0x537328 - 0x5373BA
; =========================================================

537328:  PUSH            {R4-R7,LR}
53732A:  ADD             R7, SP, #0xC
53732C:  PUSH.W          {R8}
537330:  VPUSH           {D8-D9}
537334:  MOV             R6, R0
537336:  MOVS            R0, #dword_74; this
537338:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53733C:  MOV             R4, R0
53733E:  ADD.W           R0, R6, #0x3C ; '<'
537342:  VLD1.32         {D8-D9}, [R0]
537346:  MOV             R0, R4; this
537348:  LDR             R5, [R6,#0x38]
53734A:  LDRB.W          R8, [R6,#0x5B]
53734E:  LDRB.W          R6, [R6,#0x58]
537352:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
537356:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x537366)
537358:  ADD.W           R1, R4, #0x3C ; '<'
53735C:  MOVW            R2, #0xFF01
537360:  CMP             R5, #0
537362:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
537364:  VST1.32         {D8-D9}, [R1]
537368:  MOV.W           R1, #0
53736C:  LDR             R0, [R0]; `vtable for'CTaskComplexPartner ...
53736E:  STRB.W          R6, [R4,#0x58]
537372:  STRB.W          R8, [R4,#0x5B]
537376:  ADD.W           R0, R0, #8
53737A:  STRH.W          R1, [R4,#0x5C]
53737E:  STRH.W          R2, [R4,#0x59]
537382:  STRB.W          R1, [R4,#0x6E]
537386:  STRB.W          R1, [R4,#0x5E]
53738A:  MOV             R1, R4
53738C:  STR             R0, [R4]
53738E:  STR.W           R5, [R1,#0x38]!; CEntity **
537392:  ITT NE
537394:  MOVNE           R0, R5; this
537396:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53739A:  LDR             R0, =(_ZTV24CTaskComplexPartnerShove_ptr - 0x5373A8)
53739C:  MOVW            R1, #0x4B9
5373A0:  STRB.W          R8, [R4,#0x5B]
5373A4:  ADD             R0, PC; _ZTV24CTaskComplexPartnerShove_ptr
5373A6:  STR             R1, [R4,#0x34]
5373A8:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerShove ...
5373AA:  ADDS            R0, #8
5373AC:  STR             R0, [R4]
5373AE:  MOV             R0, R4
5373B0:  VPOP            {D8-D9}
5373B4:  POP.W           {R8}
5373B8:  POP             {R4-R7,PC}
