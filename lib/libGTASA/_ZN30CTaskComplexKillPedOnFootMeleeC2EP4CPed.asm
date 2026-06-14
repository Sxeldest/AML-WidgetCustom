; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedOnFootMeleeC2EP4CPed
; Address            : 0x4E17CC - 0x4E1816
; =========================================================

4E17CC:  PUSH            {R4,R5,R7,LR}
4E17CE:  ADD             R7, SP, #8
4E17D0:  MOV             R5, R1
4E17D2:  MOV             R4, R0
4E17D4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E17D8:  LDR             R0, =(_ZTV30CTaskComplexKillPedOnFootMelee_ptr - 0x4E17E8)
4E17DA:  MOVS            R1, #0
4E17DC:  VMOV.I32        Q8, #0
4E17E0:  MOV.W           R2, #0xFFFFFFFF
4E17E4:  ADD             R0, PC; _ZTV30CTaskComplexKillPedOnFootMelee_ptr
4E17E6:  STRD.W          R1, R1, [R4,#0x20]
4E17EA:  STRD.W          R2, R1, [R4,#0x28]
4E17EE:  CMP             R5, #0
4E17F0:  STR             R2, [R4,#0x34]
4E17F2:  ADD.W           R2, R4, #0x10
4E17F6:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedOnFootMelee ...
4E17F8:  VST1.32         {D16-D17}, [R2]
4E17FC:  ADD.W           R0, R0, #8
4E1800:  STRH            R1, [R4,#0x30]
4E1802:  MOV             R1, R4
4E1804:  STR             R0, [R4]
4E1806:  STR.W           R5, [R1,#0xC]!; CEntity **
4E180A:  ITT NE
4E180C:  MOVNE           R0, R5; this
4E180E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E1812:  MOV             R0, R4
4E1814:  POP             {R4,R5,R7,PC}
