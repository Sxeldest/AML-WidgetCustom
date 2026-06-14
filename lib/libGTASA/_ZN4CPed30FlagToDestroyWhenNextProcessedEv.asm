; =========================================================
; Game Engine Function: _ZN4CPed30FlagToDestroyWhenNextProcessedEv
; Address            : 0x4A7700 - 0x4A77EA
; =========================================================

4A7700:  PUSH            {R4-R7,LR}
4A7702:  ADD             R7, SP, #0xC
4A7704:  PUSH.W          {R11}
4A7708:  MOV             R4, R0
4A770A:  LDR             R0, [R4,#0x1C]
4A770C:  LDRB.W          R1, [R4,#0x485]
4A7710:  ORR.W           R0, R0, #0x800
4A7714:  STR             R0, [R4,#0x1C]
4A7716:  LSLS            R0, R1, #0x1F
4A7718:  ITT NE
4A771A:  LDRNE.W         R0, [R4,#0x590]; this
4A771E:  CMPNE           R0, #0
4A7720:  BNE             loc_4A7728
4A7722:  POP.W           {R11}
4A7726:  POP             {R4-R7,PC}
4A7728:  LDR.W           R1, [R0,#0x464]
4A772C:  ADDW            R6, R4, #0x484
4A7730:  ADD.W           R5, R4, #0x590
4A7734:  CMP             R1, R4
4A7736:  BEQ             loc_4A7740
4A7738:  MOV             R1, R4; CPed *
4A773A:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
4A773E:  B               loc_4A7774
4A7740:  ADDW            R1, R0, #0x464; CEntity **
4A7744:  MOV             R0, R4; this
4A7746:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A774A:  LDR.W           R0, [R4,#0x590]
4A774E:  MOVS            R1, #0
4A7750:  STR.W           R1, [R0,#0x464]
4A7754:  LDR.W           R0, [R4,#0x59C]
4A7758:  CMP             R0, #1
4A775A:  BHI             loc_4A7774
4A775C:  LDR             R0, [R5]
4A775E:  LDRB.W          R1, [R0,#0x3A]
4A7762:  AND.W           R2, R1, #0xF8
4A7766:  CMP             R2, #0x28 ; '('
4A7768:  ITTT NE
4A776A:  MOVNE           R2, #4
4A776C:  BFINE.W         R1, R2, #3, #0x1D
4A7770:  STRBNE.W        R1, [R0,#0x3A]
4A7774:  LDR             R0, [R6]
4A7776:  BIC.W           R0, R0, #0x100
4A777A:  STR             R0, [R6]
4A777C:  LDR             R0, [R5]; CVehicle *
4A777E:  BLX             j__Z21IsVehiclePointerValidP8CVehicle; IsVehiclePointerValid(CVehicle *)
4A7782:  CMP             R0, #1
4A7784:  BNE             loc_4A7792
4A7786:  LDR             R0, [R5]; this
4A7788:  CMP             R0, #0
4A778A:  ITT NE
4A778C:  MOVNE           R1, R5; CEntity **
4A778E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A7792:  LDRB.W          R1, [R4,#0x448]
4A7796:  MOVS            R0, #0
4A7798:  STR.W           R0, [R4,#0x590]
4A779C:  CMP             R1, #2
4A779E:  BNE             loc_4A77E0
4A77A0:  LDR.W           R0, [R4,#0x790]; this
4A77A4:  CBZ             R0, loc_4A77B2
4A77A6:  MOV             R1, R4; CPed *
4A77A8:  BLX             j__ZN11CCoverPoint23ReleaseCoverPointForPedEP4CPed; CCoverPoint::ReleaseCoverPointForPed(CPed *)
4A77AC:  MOVS            R0, #0
4A77AE:  STR.W           R0, [R4,#0x790]
4A77B2:  LDRB            R0, [R6,#9]
4A77B4:  LSLS            R0, R0, #0x1A
4A77B6:  BPL             loc_4A77DE
4A77B8:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4A77C6)
4A77BA:  MOV             R2, #0xBED87F3B
4A77C2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4A77C4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4A77C6:  LDR             R0, [R0]; CPools::ms_pPedPool
4A77C8:  LDRD.W          R1, R0, [R0]
4A77CC:  SUBS            R1, R4, R1
4A77CE:  ASRS            R1, R1, #2
4A77D0:  MULS            R1, R2
4A77D2:  LDRB            R0, [R0,R1]
4A77D4:  ORR.W           R1, R0, R1,LSL#8
4A77D8:  MOVS            R0, #2
4A77DA:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
4A77DE:  MOVS            R0, #0x37 ; '7'
4A77E0:  STR.W           R0, [R4,#0x44C]
4A77E4:  POP.W           {R11}
4A77E8:  POP             {R4-R7,PC}
