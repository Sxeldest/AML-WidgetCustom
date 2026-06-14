; =========================================================
; Game Engine Function: _ZN20CTaskComplexCarDriveD0Ev
; Address            : 0x4FB708 - 0x4FB75A
; =========================================================

4FB708:  PUSH            {R4,R6,R7,LR}
4FB70A:  ADD             R7, SP, #8
4FB70C:  MOV             R4, R0
4FB70E:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FB716)
4FB710:  MOV             R1, R4
4FB712:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FB714:  LDR             R2, [R0]; `vtable for'CTaskComplexCarDrive ...
4FB716:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FB71A:  ADDS            R2, #8
4FB71C:  STR             R2, [R4]
4FB71E:  CBZ             R0, loc_4FB74C
4FB720:  LDRB.W          R2, [R4,#0x20]
4FB724:  CBZ             R2, loc_4FB748
4FB726:  LDRB            R2, [R4,#0x1D]
4FB728:  STRB.W          R2, [R0,#0x3BD]
4FB72C:  LDR             R0, [R4,#0xC]
4FB72E:  LDRB            R2, [R4,#0x1E]
4FB730:  STRB.W          R2, [R0,#0x3BE]
4FB734:  LDR             R0, [R4,#0xC]
4FB736:  LDRB            R2, [R4,#0x1F]
4FB738:  STRB.W          R2, [R0,#0x3D4]
4FB73C:  LDR             R0, [R4,#0xC]; this
4FB73E:  CMP             R0, #0
4FB740:  IT NE
4FB742:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FB746:  B               loc_4FB74C
4FB748:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FB74C:  MOV             R0, R4; this
4FB74E:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FB752:  POP.W           {R4,R6,R7,LR}
4FB756:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
