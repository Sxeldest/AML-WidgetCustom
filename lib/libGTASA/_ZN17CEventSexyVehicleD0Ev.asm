; =========================================================
; Game Engine Function: _ZN17CEventSexyVehicleD0Ev
; Address            : 0x3749C8 - 0x374A12
; =========================================================

3749C8:  PUSH            {R4,R6,R7,LR}
3749CA:  ADD             R7, SP, #8
3749CC:  MOV             R4, R0
3749CE:  LDR             R0, =(_ZTV17CEventSexyVehicle_ptr - 0x3749D6)
3749D0:  MOV             R1, R4
3749D2:  ADD             R0, PC; _ZTV17CEventSexyVehicle_ptr
3749D4:  LDR             R2, [R0]; `vtable for'CEventSexyVehicle ...
3749D6:  LDR.W           R0, [R1,#0xC]!; CEntity **
3749DA:  ADDS            R2, #8
3749DC:  STR             R2, [R4]
3749DE:  CMP             R0, #0
3749E0:  IT NE
3749E2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3749E6:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3749F4)
3749E8:  MOV             R3, #0xF0F0F0F1
3749F0:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3749F2:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3749F4:  LDR             R0, [R0]; CPools::ms_pEventPool
3749F6:  LDRD.W          R1, R2, [R0]
3749FA:  SUBS            R1, R4, R1
3749FC:  ASRS            R1, R1, #2
3749FE:  MULS            R1, R3
374A00:  LDRB            R3, [R2,R1]
374A02:  ORR.W           R3, R3, #0x80
374A06:  STRB            R3, [R2,R1]
374A08:  LDR             R2, [R0,#0xC]
374A0A:  CMP             R1, R2
374A0C:  IT LT
374A0E:  STRLT           R1, [R0,#0xC]
374A10:  POP             {R4,R6,R7,PC}
