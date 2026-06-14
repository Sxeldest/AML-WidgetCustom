; =========================================================
; Game Engine Function: _ZN17CEventVehicleDiedD0Ev
; Address            : 0x376778 - 0x3767C2
; =========================================================

376778:  PUSH            {R4,R6,R7,LR}
37677A:  ADD             R7, SP, #8
37677C:  MOV             R4, R0
37677E:  LDR             R0, =(_ZTV17CEventVehicleDied_ptr - 0x376786)
376780:  MOV             R1, R4
376782:  ADD             R0, PC; _ZTV17CEventVehicleDied_ptr
376784:  LDR             R2, [R0]; `vtable for'CEventVehicleDied ...
376786:  LDR.W           R0, [R1,#0xC]!; CEntity **
37678A:  ADDS            R2, #8
37678C:  STR             R2, [R4]
37678E:  CMP             R0, #0
376790:  IT NE
376792:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376796:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3767A4)
376798:  MOV             R3, #0xF0F0F0F1
3767A0:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3767A2:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3767A4:  LDR             R0, [R0]; CPools::ms_pEventPool
3767A6:  LDRD.W          R1, R2, [R0]
3767AA:  SUBS            R1, R4, R1
3767AC:  ASRS            R1, R1, #2
3767AE:  MULS            R1, R3
3767B0:  LDRB            R3, [R2,R1]
3767B2:  ORR.W           R3, R3, #0x80
3767B6:  STRB            R3, [R2,R1]
3767B8:  LDR             R2, [R0,#0xC]
3767BA:  CMP             R1, R2
3767BC:  IT LT
3767BE:  STRLT           R1, [R0,#0xC]
3767C0:  POP             {R4,R6,R7,PC}
