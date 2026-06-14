; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarOpenDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCarb
; Address            : 0x500AC8 - 0x500B12
; =========================================================

500AC8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarOpenDoorFromOutside::CTaskSimpleCarOpenDoorFromOutside(CVehicle *, int, CTaskUtilityLineUpPedWithCar *, bool)'
500ACA:  ADD             R7, SP, #0xC
500ACC:  PUSH.W          {R8}
500AD0:  MOV             R8, R3
500AD2:  MOV             R6, R2
500AD4:  MOV             R5, R1
500AD6:  MOV             R4, R0
500AD8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
500ADC:  LDR             R0, =(_ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr - 0x500AE8)
500ADE:  MOVS            R2, #0
500AE0:  LDR             R1, [R7,#arg_0]
500AE2:  CMP             R5, #0
500AE4:  ADD             R0, PC; _ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr
500AE6:  STRB            R2, [R4,#8]
500AE8:  STR             R2, [R4,#0xC]
500AEA:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarOpenDoorFromOutside ...
500AEC:  STR             R6, [R4,#0x14]
500AEE:  STRB            R1, [R4,#0x18]
500AF0:  MOV             R1, R4
500AF2:  STRB            R2, [R4,#0x19]
500AF4:  ADD.W           R0, R0, #8
500AF8:  STRD.W          R8, R2, [R4,#0x1C]
500AFC:  STR             R0, [R4]
500AFE:  STR.W           R5, [R1,#0x10]!; CEntity **
500B02:  ITT NE
500B04:  MOVNE           R0, R5; this
500B06:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
500B0A:  MOV             R0, R4
500B0C:  POP.W           {R8}
500B10:  POP             {R4-R7,PC}
