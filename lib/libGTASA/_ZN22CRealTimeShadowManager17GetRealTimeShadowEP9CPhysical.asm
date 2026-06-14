; =========================================================
; Game Engine Function: _ZN22CRealTimeShadowManager17GetRealTimeShadowEP9CPhysical
; Address            : 0x5B873C - 0x5B8798
; =========================================================

5B873C:  PUSH            {R4,R5,R7,LR}
5B873E:  ADD             R7, SP, #8
5B8740:  MOV             R4, R1
5B8742:  LDRB.W          R1, [R4,#0x3A]
5B8746:  AND.W           R2, R1, #7
5B874A:  MOVS            R1, #0
5B874C:  CMP             R2, #3
5B874E:  BNE             loc_5B875A
5B8750:  LDR.W           R2, [R4,#0x59C]
5B8754:  CMP             R2, #0
5B8756:  IT EQ
5B8758:  MOVEQ           R1, #1
5B875A:  LDRB            R2, [R0]
5B875C:  CBZ             R2, loc_5B8792
5B875E:  CBZ             R1, loc_5B8766
5B8760:  LDR             R5, [R0,#4]
5B8762:  CBNZ            R5, loc_5B877E
5B8764:  B               loc_5B8792
5B8766:  MOVS            R5, #0
5B8768:  MOVS            R1, #2
5B876A:  LDR.W           R2, [R0,R1,LSL#2]
5B876E:  ADDS            R1, #1
5B8770:  LDR             R3, [R2]
5B8772:  CMP             R3, #0
5B8774:  IT EQ
5B8776:  MOVEQ           R5, R2
5B8778:  CMP             R1, #0x29 ; ')'
5B877A:  BNE             loc_5B876A
5B877C:  CBZ             R5, loc_5B8792
5B877E:  MOV             R0, R5; this
5B8780:  MOV             R1, R4; CPhysical *
5B8782:  BLX.W           j__ZN15CRealTimeShadow17SetShadowedObjectEP9CPhysical; CRealTimeShadow::SetShadowedObject(CPhysical *)
5B8786:  MOVS            R0, #1
5B8788:  STR.W           R5, [R4,#0x138]
5B878C:  STRH            R0, [R5,#4]
5B878E:  MOV             R0, R5
5B8790:  POP             {R4,R5,R7,PC}
5B8792:  MOVS            R5, #0
5B8794:  MOV             R0, R5
5B8796:  POP             {R4,R5,R7,PC}
