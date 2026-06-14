; =========================================================
; Game Engine Function: _ZN17CInformGroupEvent5FlushEv
; Address            : 0x37018E - 0x3701B8
; =========================================================

37018E:  PUSH            {R4,R6,R7,LR}
370190:  ADD             R7, SP, #8
370192:  MOV             R4, R0
370194:  LDR             R0, [R4]; this
370196:  CBZ             R0, loc_3701A2
370198:  MOV             R1, R4; CEntity **
37019A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37019E:  MOVS            R0, #0
3701A0:  STR             R0, [R4]
3701A2:  LDR             R0, [R4,#8]
3701A4:  CBZ             R0, loc_3701B0
3701A6:  LDR             R1, [R0]
3701A8:  LDR             R1, [R1,#4]
3701AA:  BLX             R1
3701AC:  MOVS            R0, #0
3701AE:  STR             R0, [R4,#8]
3701B0:  MOV.W           R0, #0xFFFFFFFF
3701B4:  STR             R0, [R4,#0xC]
3701B6:  POP             {R4,R6,R7,PC}
