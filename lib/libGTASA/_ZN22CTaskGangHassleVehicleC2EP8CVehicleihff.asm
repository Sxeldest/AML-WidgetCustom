; =========================================================
; Game Engine Function: _ZN22CTaskGangHassleVehicleC2EP8CVehicleihff
; Address            : 0x518484 - 0x5184E2
; =========================================================

518484:  PUSH            {R4-R7,LR}
518486:  ADD             R7, SP, #0xC
518488:  PUSH.W          {R11}
51848C:  MOV             R6, R3
51848E:  MOV             R5, R1
518490:  MOV             R4, R0
518492:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
518496:  LDR             R0, =(_ZTV22CTaskGangHassleVehicle_ptr - 0x5184A6)
518498:  MOVS            R1, #0
51849A:  VLDR            S0, [R7,#arg_4]
51849E:  MOV.W           R2, #0xFFFFFFFF
5184A2:  ADD             R0, PC; _ZTV22CTaskGangHassleVehicle_ptr
5184A4:  VLDR            S2, [R7,#arg_0]
5184A8:  STRH.W          R1, [R4,#0x40]
5184AC:  CMP             R5, #0
5184AE:  LDR             R0, [R0]; `vtable for'CTaskGangHassleVehicle ...
5184B0:  STR             R2, [R4,#0x14]
5184B2:  STRB            R6, [R4,#0x18]
5184B4:  ADD.W           R0, R0, #8
5184B8:  VSTR            S2, [R4,#0x1C]
5184BC:  VSTR            S0, [R4,#0x20]
5184C0:  STRB.W          R1, [R4,#0x30]
5184C4:  STRD.W          R1, R1, [R4,#0x34]
5184C8:  STR             R1, [R4,#0x3C]
5184CA:  MOV             R1, R4
5184CC:  STR             R0, [R4]
5184CE:  STR.W           R5, [R1,#0x10]!; CEntity **
5184D2:  ITT NE
5184D4:  MOVNE           R0, R5; this
5184D6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5184DA:  MOV             R0, R4
5184DC:  POP.W           {R11}
5184E0:  POP             {R4-R7,PC}
