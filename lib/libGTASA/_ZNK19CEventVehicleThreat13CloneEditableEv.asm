; =========================================================
; Game Engine Function: _ZNK19CEventVehicleThreat13CloneEditableEv
; Address            : 0x37A4BC - 0x37A54C
; =========================================================

37A4BC:  PUSH            {R4,R6,R7,LR}
37A4BE:  ADD             R7, SP, #8
37A4C0:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A4CA)
37A4C2:  MOV.W           LR, #0
37A4C6:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A4C8:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A4CA:  LDR             R1, [R1]; CPools::ms_pEventPool
37A4CC:  LDRD.W          R12, R4, [R1,#8]
37A4D0:  ADDS            R4, #1
37A4D2:  STR             R4, [R1,#0xC]
37A4D4:  CMP             R4, R12
37A4D6:  BNE             loc_37A4E6
37A4D8:  MOVS            R4, #0
37A4DA:  MOVS.W          R2, LR,LSL#31
37A4DE:  STR             R4, [R1,#0xC]
37A4E0:  BNE             loc_37A518
37A4E2:  MOV.W           LR, #1
37A4E6:  LDR             R2, [R1,#4]
37A4E8:  LDRSB           R3, [R2,R4]
37A4EA:  CMP.W           R3, #0xFFFFFFFF
37A4EE:  BGT             loc_37A4D0
37A4F0:  AND.W           R3, R3, #0x7F
37A4F4:  STRB            R3, [R2,R4]
37A4F6:  LDR             R2, [R1,#4]
37A4F8:  LDR             R3, [R1,#0xC]
37A4FA:  LDRB            R4, [R2,R3]
37A4FC:  AND.W           R12, R4, #0x80
37A500:  ADDS            R4, #1
37A502:  AND.W           R4, R4, #0x7F
37A506:  ORR.W           R4, R4, R12
37A50A:  STRB            R4, [R2,R3]
37A50C:  LDR             R2, [R1]
37A50E:  LDR             R1, [R1,#0xC]
37A510:  ADD.W           R1, R1, R1,LSL#4
37A514:  ADD.W           R4, R2, R1,LSL#2
37A518:  LDR             R1, =(_ZTV19CEventVehicleThreat_ptr - 0x37A522)
37A51A:  MOVS            R2, #0
37A51C:  LDR             R0, [R0,#0x10]; this
37A51E:  ADD             R1, PC; _ZTV19CEventVehicleThreat_ptr
37A520:  STR             R2, [R4,#4]
37A522:  MOVW            R2, #0x100
37A526:  CMP             R0, #0
37A528:  LDR             R1, [R1]; `vtable for'CEventVehicleThreat ...
37A52A:  MOVT            R2, #0xC8
37A52E:  STR             R2, [R4,#8]
37A530:  MOVW            R2, #0xFFFF
37A534:  ADD.W           R1, R1, #8
37A538:  STRH            R2, [R4,#0xC]
37A53A:  STR             R1, [R4]
37A53C:  MOV             R1, R4
37A53E:  STR.W           R0, [R1,#0x10]!; CEntity **
37A542:  IT NE
37A544:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A548:  MOV             R0, R4
37A54A:  POP             {R4,R6,R7,PC}
