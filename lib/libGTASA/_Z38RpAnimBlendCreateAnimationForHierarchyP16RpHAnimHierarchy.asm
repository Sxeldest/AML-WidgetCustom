; =========================================================
; Game Engine Function: _Z38RpAnimBlendCreateAnimationForHierarchyP16RpHAnimHierarchy
; Address            : 0x390544 - 0x390574
; =========================================================

390544:  PUSH            {R4,R5,R7,LR}
390546:  ADD             R7, SP, #8
390548:  CBZ             R0, loc_39056E
39054A:  LDR             R5, [R0,#4]
39054C:  MOV             R0, #0x253F2FB; int
390554:  MOVS            R1, #0; int
390556:  MOVS            R2, #0; int
390558:  MOVS            R3, #0; float
39055A:  MOVS            R4, #0
39055C:  BLX             j__Z21RtAnimAnimationCreateiiif; RtAnimAnimationCreate(int,int,int,float)
390560:  CMP             R0, #0
390562:  ITTT NE
390564:  LSLNE           R1, R5, #1
390566:  STRNE           R1, [R0,#4]
390568:  MOVNE           R4, R0
39056A:  MOV             R0, R4
39056C:  POP             {R4,R5,R7,PC}
39056E:  MOVS            R4, #0
390570:  MOV             R0, R4
390572:  POP             {R4,R5,R7,PC}
