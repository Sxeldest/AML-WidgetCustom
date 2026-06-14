; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy21RemoveQuaternionFlipsEv
; Address            : 0x38A46C - 0x38A49C
; =========================================================

38A46C:  PUSH            {R4-R7,LR}
38A46E:  ADD             R7, SP, #0xC
38A470:  PUSH.W          {R11}
38A474:  MOV             R4, R0
38A476:  LDRSH.W         R0, [R4,#8]
38A47A:  CMP             R0, #1
38A47C:  BLT             loc_38A496
38A47E:  MOVS            R5, #0
38A480:  MOVS            R6, #0
38A482:  LDR             R0, [R4,#4]
38A484:  ADD             R0, R5; this
38A486:  BLX             j__ZN18CAnimBlendSequence21RemoveQuaternionFlipsEv; CAnimBlendSequence::RemoveQuaternionFlips(void)
38A48A:  LDRSH.W         R0, [R4,#8]
38A48E:  ADDS            R6, #1
38A490:  ADDS            R5, #0xC
38A492:  CMP             R6, R0
38A494:  BLT             loc_38A482
38A496:  POP.W           {R11}
38A49A:  POP             {R4-R7,PC}
