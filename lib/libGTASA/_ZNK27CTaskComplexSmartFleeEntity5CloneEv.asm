; =========================================================
; Game Engine Function: _ZNK27CTaskComplexSmartFleeEntity5CloneEv
; Address            : 0x514CAC - 0x514D20
; =========================================================

514CAC:  PUSH            {R4-R7,LR}
514CAE:  ADD             R7, SP, #0xC
514CB0:  PUSH.W          {R8-R11}
514CB4:  SUB             SP, SP, #4
514CB6:  MOV             R4, R0
514CB8:  MOVS            R0, #dword_40; this
514CBA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514CBE:  LDR             R6, [R4,#0xC]
514CC0:  MOV             R5, R0
514CC2:  LDRD.W          R8, R9, [R4,#0x1C]
514CC6:  LDR             R0, [R4,#0x28]
514CC8:  STR             R0, [SP,#0x20+var_20]
514CCA:  MOV             R0, R5; this
514CCC:  LDR.W           R11, [R4,#0x2C]
514CD0:  LDRB.W          R10, [R4,#0x24]
514CD4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
514CD8:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514CE8)
514CDA:  CMP             R6, #0
514CDC:  STRD.W          R8, R9, [R5,#0x1C]
514CE0:  STRB.W          R10, [R5,#0x24]
514CE4:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514CE6:  LDR             R1, [SP,#0x20+var_20]
514CE8:  STRD.W          R1, R11, [R5,#0x28]
514CEC:  MOV.W           R1, #7
514CF0:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514CF2:  STR             R1, [R5,#0x30]
514CF4:  MOV.W           R1, #0
514CF8:  STRH            R1, [R5,#0x3C]
514CFA:  ADD.W           R0, R0, #8
514CFE:  STRD.W          R1, R1, [R5,#0x34]
514D02:  MOV             R1, R5
514D04:  STR             R0, [R5]
514D06:  STR.W           R6, [R1,#0xC]!; CEntity **
514D0A:  ITT NE
514D0C:  MOVNE           R0, R6; this
514D0E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
514D12:  LDR             R0, [R4,#0x30]
514D14:  STR             R0, [R5,#0x30]
514D16:  MOV             R0, R5
514D18:  ADD             SP, SP, #4
514D1A:  POP.W           {R8-R11}
514D1E:  POP             {R4-R7,PC}
