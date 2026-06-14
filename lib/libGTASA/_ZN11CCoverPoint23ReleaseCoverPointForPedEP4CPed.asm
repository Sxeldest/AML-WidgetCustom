; =========================================================
; Game Engine Function: _ZN11CCoverPoint23ReleaseCoverPointForPedEP4CPed
; Address            : 0x4D6460 - 0x4D64AA
; =========================================================

4D6460:  PUSH            {R4-R7,LR}
4D6462:  ADD             R7, SP, #0xC
4D6464:  PUSH.W          {R11}
4D6468:  MOV             R4, R0
4D646A:  MOV             R5, R1
4D646C:  MOV             R6, R4
4D646E:  LDR.W           R0, [R6,#0x14]!
4D6472:  CMP             R0, R5
4D6474:  BNE             loc_4D6486
4D6476:  CMP             R5, #0
4D6478:  ITTT NE
4D647A:  MOVNE           R0, R5; this
4D647C:  MOVNE           R1, R6; CEntity **
4D647E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4D6482:  MOVS            R0, #0
4D6484:  STR             R0, [R6]
4D6486:  LDR.W           R0, [R4,#0x18]!
4D648A:  CMP             R0, R5
4D648C:  BEQ             loc_4D6494
4D648E:  POP.W           {R11}
4D6492:  POP             {R4-R7,PC}
4D6494:  CMP             R5, #0
4D6496:  ITTT NE
4D6498:  MOVNE           R0, R5; this
4D649A:  MOVNE           R1, R4; CEntity **
4D649C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4D64A0:  MOVS            R0, #0
4D64A2:  STR             R0, [R4]
4D64A4:  POP.W           {R11}
4D64A8:  POP             {R4-R7,PC}
