; =========================================================
; Game Engine Function: _ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff
; Address            : 0x524CA4 - 0x524CF8
; =========================================================

524CA4:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *, float, float)'
524CA6:  ADD             R7, SP, #0xC
524CA8:  PUSH.W          {R8}
524CAC:  VPUSH           {D8-D9}
524CB0:  MOV             R6, R3
524CB2:  MOV             R8, R2
524CB4:  MOV             R5, R1
524CB6:  MOV             R4, R0
524CB8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
524CBC:  LDR             R0, =(_ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr - 0x524CC8)
524CBE:  MOVS            R1, #1
524CC0:  STRB            R1, [R4,#0x10]
524CC2:  MOV             R1, R4
524CC4:  ADD             R0, PC; _ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr
524CC6:  CMP             R5, #0
524CC8:  VMOV            S16, R6
524CCC:  LDR             R0, [R0]; `vtable for'CTaskComplexTurnToFaceEntityOrCoord ...
524CCE:  VMOV            S18, R8
524CD2:  ADD.W           R0, R0, #8
524CD6:  STR             R0, [R4]
524CD8:  STR.W           R5, [R1,#0xC]!; CEntity **
524CDC:  ITT NE
524CDE:  MOVNE           R0, R5; this
524CE0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
524CE4:  VSTR            S18, [R4,#0x20]
524CE8:  MOV             R0, R4
524CEA:  VSTR            S16, [R4,#0x24]
524CEE:  VPOP            {D8-D9}
524CF2:  POP.W           {R8}
524CF6:  POP             {R4-R7,PC}
