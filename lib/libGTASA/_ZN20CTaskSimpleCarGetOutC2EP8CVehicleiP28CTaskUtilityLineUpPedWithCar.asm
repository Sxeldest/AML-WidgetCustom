; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOutC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x503118 - 0x50315E
; =========================================================

503118:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarGetOut::CTaskSimpleCarGetOut(CVehicle *, int, CTaskUtilityLineUpPedWithCar *)'
50311A:  ADD             R7, SP, #0xC
50311C:  PUSH.W          {R8}
503120:  MOV             R8, R3
503122:  MOV             R6, R2
503124:  MOV             R5, R1
503126:  MOV             R4, R0
503128:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50312C:  LDR             R0, =(_ZTV20CTaskSimpleCarGetOut_ptr - 0x503138)
50312E:  MOVS            R1, #0
503130:  STRH            R1, [R4,#8]
503132:  CMP             R5, #0
503134:  ADD             R0, PC; _ZTV20CTaskSimpleCarGetOut_ptr
503136:  STR             R1, [R4,#0xC]
503138:  STRB            R1, [R4,#0x10]
50313A:  MOV             R1, R4
50313C:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarGetOut ...
50313E:  STR             R6, [R4,#0x18]
503140:  STR.W           R8, [R4,#0x1C]
503144:  ADD.W           R0, R0, #8
503148:  STR             R0, [R4]
50314A:  STR.W           R5, [R1,#0x14]!; CEntity **
50314E:  ITT NE
503150:  MOVNE           R0, R5; this
503152:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
503156:  MOV             R0, R4
503158:  POP.W           {R8}
50315C:  POP             {R4-R7,PC}
