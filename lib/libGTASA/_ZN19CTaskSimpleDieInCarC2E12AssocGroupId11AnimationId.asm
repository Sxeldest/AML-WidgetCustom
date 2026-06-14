; =========================================================
; Game Engine Function: _ZN19CTaskSimpleDieInCarC2E12AssocGroupId11AnimationId
; Address            : 0x4EAFA0 - 0x4EAFDC
; =========================================================

4EAFA0:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleDieInCar::CTaskSimpleDieInCar(AssocGroupId, AnimationId)'
4EAFA2:  ADD             R7, SP, #8
4EAFA4:  MOV             R4, R2
4EAFA6:  MOV             R5, R1
4EAFA8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EAFAC:  LDR.W           R12, =(_ZTV19CTaskSimpleDieInCar_ptr - 0x4EAFBE)
4EAFB0:  MOVS            R2, #0
4EAFB2:  MOV.W           R1, #0x40800000
4EAFB6:  LDRB.W          R3, [R0,#0x20]
4EAFBA:  ADD             R12, PC; _ZTV19CTaskSimpleDieInCar_ptr
4EAFBC:  STRD.W          R5, R4, [R0,#8]
4EAFC0:  STRD.W          R2, R2, [R0,#0x10]
4EAFC4:  STRD.W          R1, R2, [R0,#0x18]
4EAFC8:  LDR.W           R1, [R12]; `vtable for'CTaskSimpleDieInCar ...
4EAFCC:  STR             R2, [R0,#0x24]
4EAFCE:  AND.W           R2, R3, #0xFC
4EAFD2:  STRB.W          R2, [R0,#0x20]
4EAFD6:  ADDS            R1, #8
4EAFD8:  STR             R1, [R0]
4EAFDA:  POP             {R4,R5,R7,PC}
