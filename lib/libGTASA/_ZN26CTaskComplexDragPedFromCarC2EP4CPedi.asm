; =========================================================
; Game Engine Function: _ZN26CTaskComplexDragPedFromCarC2EP4CPedi
; Address            : 0x4F71A0 - 0x4F7210
; =========================================================

4F71A0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexDragPedFromCar::CTaskComplexDragPedFromCar(CPed *, int)'
4F71A2:  ADD             R7, SP, #0xC
4F71A4:  PUSH.W          {R11}
4F71A8:  MOV             R4, R2
4F71AA:  MOV             R6, R1
4F71AC:  MOV             R5, R0
4F71AE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F71B2:  MOVS            R1, #0
4F71B4:  MOVS            R2, #6
4F71B6:  LDR             R0, =(_ZTV26CTaskComplexDragPedFromCar_ptr - 0x4F71CC)
4F71B8:  VMOV.I32        Q8, #0
4F71BC:  STR             R1, [R5,#0xC]
4F71BE:  CMP             R6, #0
4F71C0:  STR             R2, [R5,#0x24]
4F71C2:  ADD.W           R2, R5, #0x14
4F71C6:  STRH            R1, [R5,#0x28]
4F71C8:  ADD             R0, PC; _ZTV26CTaskComplexDragPedFromCar_ptr
4F71CA:  STR             R1, [R5,#0x38]
4F71CC:  STRB.W          R1, [R5,#0x3C]
4F71D0:  STR             R1, [R5,#0x40]
4F71D2:  STRB.W          R1, [R5,#0x44]
4F71D6:  LDRB            R1, [R5,#0x10]
4F71D8:  VST1.32         {D16-D17}, [R2]
4F71DC:  MOVW            R2, #0
4F71E0:  AND.W           R1, R1, #0xF0
4F71E4:  MOVT            R2, #0xBF80
4F71E8:  LDR             R0, [R0]; `vtable for'CTaskComplexDragPedFromCar ...
4F71EA:  ORR.W           R1, R1, #4
4F71EE:  STR             R2, [R5,#0x48]
4F71F0:  STRB            R1, [R5,#0x10]
4F71F2:  MOV             R1, R5
4F71F4:  ADD.W           R0, R0, #8
4F71F8:  STR             R0, [R5]
4F71FA:  STR.W           R6, [R1,#0x50]!; CEntity **
4F71FE:  ITT NE
4F7200:  MOVNE           R0, R6; this
4F7202:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F7206:  STR             R4, [R5,#0x20]
4F7208:  MOV             R0, R5
4F720A:  POP.W           {R11}
4F720E:  POP             {R4-R7,PC}
