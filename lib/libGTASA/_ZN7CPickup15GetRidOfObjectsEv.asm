; =========================================================
; Game Engine Function: _ZN7CPickup15GetRidOfObjectsEv
; Address            : 0x31D740 - 0x31D764
; =========================================================

31D740:  PUSH            {R4,R6,R7,LR}
31D742:  ADD             R7, SP, #8
31D744:  MOV             R4, R0
31D746:  LDR             R0, [R4,#4]; this
31D748:  CMP             R0, #0
31D74A:  IT EQ
31D74C:  POPEQ           {R4,R6,R7,PC}
31D74E:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31D752:  LDR             R0, [R4,#4]
31D754:  CMP             R0, #0
31D756:  ITTT NE
31D758:  LDRNE           R1, [R0]
31D75A:  LDRNE           R1, [R1,#4]
31D75C:  BLXNE           R1
31D75E:  MOVS            R0, #0
31D760:  STR             R0, [R4,#4]
31D762:  POP             {R4,R6,R7,PC}
