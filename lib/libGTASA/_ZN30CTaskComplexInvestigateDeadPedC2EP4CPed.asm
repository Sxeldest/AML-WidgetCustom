; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPedC2EP4CPed
; Address            : 0x546744 - 0x54678C
; =========================================================

546744:  PUSH            {R4,R5,R7,LR}
546746:  ADD             R7, SP, #8
546748:  MOV             R5, R1
54674A:  MOV             R4, R0
54674C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
546750:  LDR             R0, =(_ZTV30CTaskComplexInvestigateDeadPed_ptr - 0x546760)
546752:  VMOV.I32        Q8, #0
546756:  ADD.W           R2, R4, #0x2C ; ','
54675A:  MOVS            R1, #0
54675C:  ADD             R0, PC; _ZTV30CTaskComplexInvestigateDeadPed_ptr
54675E:  STRH            R1, [R4,#0x18]
546760:  VST1.32         {D16-D17}, [R2]
546764:  ADD.W           R2, R4, #0x1C
546768:  CMP             R5, #0
54676A:  LDR             R0, [R0]; `vtable for'CTaskComplexInvestigateDeadPed ...
54676C:  STR             R1, [R4,#0x14]
54676E:  VST1.32         {D16-D17}, [R2]
546772:  ADD.W           R0, R0, #8
546776:  STR             R1, [R4,#0x10]
546778:  MOV             R1, R4
54677A:  STR             R0, [R4]
54677C:  STR.W           R5, [R1,#0xC]!; CEntity **
546780:  ITT NE
546782:  MOVNE           R0, R5; this
546784:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
546788:  MOV             R0, R4
54678A:  POP             {R4,R5,R7,PC}
