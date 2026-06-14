; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerChatC2EPcP4CPedhfihh7CVector
; Address            : 0x5352B4 - 0x535364
; =========================================================

5352B4:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexPartnerChat::CTaskComplexPartnerChat(char *, CPed *, unsigned char, float, int, unsigned char, unsigned char, CVector)'
5352B6:  ADD             R7, SP, #0xC
5352B8:  PUSH.W          {R8,R9,R11}
5352BC:  MOV             R5, R3
5352BE:  MOV             R6, R2
5352C0:  MOV             R8, R1
5352C2:  MOV             R4, R0
5352C4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5352C8:  LDR.W           R12, =(_ZTV19CTaskComplexPartner_ptr - 0x5352DA)
5352CC:  CMP             R6, #0
5352CE:  VLDR            S0, [R7,#arg_0]
5352D2:  LDRD.W          R2, R3, [R7,#arg_14]
5352D6:  ADD             R12, PC; _ZTV19CTaskComplexPartner_ptr
5352D8:  LDR             R0, [R7,#arg_4]
5352DA:  LDR             R1, [R7,#arg_10]
5352DC:  STRB.W          R5, [R4,#0x58]
5352E0:  MOV.W           R5, #0
5352E4:  VSTR            S0, [R4,#0x3C]
5352E8:  STRB.W          R0, [R4,#0x5B]
5352EC:  ADD.W           R0, R4, #0x40 ; '@'
5352F0:  STRB.W          R5, [R4,#0x5D]
5352F4:  STM             R0!, {R1-R3}
5352F6:  MOVW            R1, #0xFF01
5352FA:  LDR.W           R0, [R12]; `vtable for'CTaskComplexPartner ...
5352FE:  STRB.W          R5, [R4,#0x5C]
535302:  STRH.W          R1, [R4,#0x59]
535306:  MOV             R1, R4
535308:  STRB.W          R5, [R4,#0x6E]
53530C:  ADD.W           R0, R0, #8
535310:  STRB.W          R5, [R4,#0x5E]
535314:  STR             R0, [R4]
535316:  STR.W           R6, [R1,#0x38]!; CEntity **
53531A:  LDR.W           R9, [R7,#arg_8]
53531E:  ITT NE
535320:  MOVNE           R0, R6; this
535322:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
535326:  LDR             R1, =(_ZTV23CTaskComplexPartnerChat_ptr - 0x535336)
535328:  MOVW            R2, #0x4B4
53532C:  LDR             R0, [R7,#arg_C]
53532E:  CMP.W           R9, #0
535332:  ADD             R1, PC; _ZTV23CTaskComplexPartnerChat_ptr
535334:  STR             R2, [R4,#0x34]
535336:  STRB.W          R5, [R4,#0x74]
53533A:  LDR             R1, [R1]; `vtable for'CTaskComplexPartnerChat ...
53533C:  STRB.W          R9, [R4,#0x72]
535340:  ADD.W           R1, R1, #8
535344:  STR             R1, [R4]
535346:  ITT NE
535348:  MOVNE           R1, #4
53534A:  STRBNE.W        R1, [R4,#0x5B]
53534E:  STRB.W          R0, [R4,#0x73]
535352:  ADD.W           R0, R4, #0x14; char *
535356:  MOV             R1, R8; char *
535358:  BLX             strcpy
53535C:  MOV             R0, R4
53535E:  POP.W           {R8,R9,R11}
535362:  POP             {R4-R7,PC}
