; =========================================================
; Game Engine Function: _ZN18CTaskLeanOnVehicleC2EP7CEntityih
; Address            : 0x51A918 - 0x51A96C
; =========================================================

51A918:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskLeanOnVehicle::CTaskLeanOnVehicle(CEntity *, int, unsigned char)'
51A91A:  ADD             R7, SP, #0xC
51A91C:  PUSH.W          {R8}
51A920:  MOV             R8, R3
51A922:  MOV             R6, R2
51A924:  MOV             R5, R1
51A926:  MOV             R4, R0
51A928:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51A92C:  LDR             R0, =(_ZTV18CTaskLeanOnVehicle_ptr - 0x51A93A)
51A92E:  MOVS            R1, #0
51A930:  MOV.W           R2, #0xFFFFFFFF
51A934:  STRH            R1, [R4,#0x24]
51A936:  ADD             R0, PC; _ZTV18CTaskLeanOnVehicle_ptr
51A938:  STR             R6, [R4,#0xC]
51A93A:  STRB.W          R8, [R4,#0x10]
51A93E:  CMP             R5, #0
51A940:  LDR             R0, [R0]; `vtable for'CTaskLeanOnVehicle ...
51A942:  STR             R1, [R4,#0x14]
51A944:  STR             R2, [R4,#0x18]
51A946:  ADD.W           R0, R0, #8
51A94A:  STRH            R1, [R4,#0x28]
51A94C:  STRB.W          R1, [R4,#0x2A]
51A950:  STRD.W          R1, R1, [R4,#0x1C]
51A954:  MOV             R1, R4
51A956:  STR             R0, [R4]
51A958:  STR.W           R5, [R1,#8]!; CEntity **
51A95C:  ITT NE
51A95E:  MOVNE           R0, R5; this
51A960:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51A964:  MOV             R0, R4
51A966:  POP.W           {R8}
51A96A:  POP             {R4-R7,PC}
