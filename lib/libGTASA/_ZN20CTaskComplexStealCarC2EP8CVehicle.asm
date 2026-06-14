; =========================================================
; Game Engine Function: _ZN20CTaskComplexStealCarC2EP8CVehicle
; Address            : 0x4F84B4 - 0x4F84EA
; =========================================================

4F84B4:  PUSH            {R4,R5,R7,LR}
4F84B6:  ADD             R7, SP, #8
4F84B8:  MOV             R5, R1
4F84BA:  MOV             R4, R0
4F84BC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F84C0:  LDR             R0, =(_ZTV20CTaskComplexStealCar_ptr - 0x4F84CC)
4F84C2:  MOVS            R1, #0
4F84C4:  STRH            R1, [R4,#0x18]
4F84C6:  CMP             R5, #0
4F84C8:  ADD             R0, PC; _ZTV20CTaskComplexStealCar_ptr
4F84CA:  STR             R1, [R4,#0x1C]
4F84CC:  STRD.W          R1, R1, [R4,#0x10]
4F84D0:  MOV             R1, R4
4F84D2:  LDR             R0, [R0]; `vtable for'CTaskComplexStealCar ...
4F84D4:  ADD.W           R0, R0, #8
4F84D8:  STR             R0, [R4]
4F84DA:  STR.W           R5, [R1,#0xC]!; CEntity **
4F84DE:  ITT NE
4F84E0:  MOVNE           R0, R5; this
4F84E2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F84E6:  MOV             R0, R4
4F84E8:  POP             {R4,R5,R7,PC}
