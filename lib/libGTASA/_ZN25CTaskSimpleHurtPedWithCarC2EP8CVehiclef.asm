; =========================================================
; Game Engine Function: _ZN25CTaskSimpleHurtPedWithCarC2EP8CVehiclef
; Address            : 0x50C02C - 0x50C068
; =========================================================

50C02C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleHurtPedWithCar::CTaskSimpleHurtPedWithCar(CVehicle *, float)'
50C02E:  ADD             R7, SP, #0xC
50C030:  PUSH.W          {R11}
50C034:  MOV             R6, R2
50C036:  MOV             R5, R1
50C038:  MOV             R4, R0
50C03A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50C03E:  LDR             R0, =(_ZTV25CTaskSimpleHurtPedWithCar_ptr - 0x50C04A)
50C040:  MOVS            R1, #0
50C042:  STR             R6, [R4,#0xC]
50C044:  CMP             R5, #0
50C046:  ADD             R0, PC; _ZTV25CTaskSimpleHurtPedWithCar_ptr
50C048:  STRB            R1, [R4,#0x10]
50C04A:  MOV             R1, R4
50C04C:  LDR             R0, [R0]; `vtable for'CTaskSimpleHurtPedWithCar ...
50C04E:  ADD.W           R0, R0, #8
50C052:  STR             R0, [R4]
50C054:  STR.W           R5, [R1,#8]!; CEntity **
50C058:  ITT NE
50C05A:  MOVNE           R0, R5; this
50C05C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50C060:  MOV             R0, R4
50C062:  POP.W           {R11}
50C066:  POP             {R4-R7,PC}
