; =========================================================
; Game Engine Function: _ZN22CRealTimeShadowManager17DoShadowThisFrameEP9CPhysical
; Address            : 0x5B86B4 - 0x5B8738
; =========================================================

5B86B4:  PUSH            {R4,R5,R7,LR}
5B86B6:  ADD             R7, SP, #8
5B86B8:  MOV             R4, R1
5B86BA:  MOVS            R2, #0
5B86BC:  LDRB.W          R1, [R4,#0x3A]
5B86C0:  AND.W           R1, R1, #7
5B86C4:  CMP             R1, #3
5B86C6:  BNE             loc_5B86D2
5B86C8:  LDR.W           R3, [R4,#0x59C]
5B86CC:  CMP             R3, #0
5B86CE:  IT EQ
5B86D0:  MOVEQ           R2, #1
5B86D2:  CBNZ            R2, loc_5B86E2
5B86D4:  LDR             R2, =(_ZN14MobileSettings8settingsE_ptr - 0x5B86DA)
5B86D6:  ADD             R2, PC; _ZN14MobileSettings8settingsE_ptr
5B86D8:  LDR             R2, [R2]; MobileSettings::settings ...
5B86DA:  LDR.W           R2, [R2,#(dword_6E049C - 0x6E03F4)]
5B86DE:  CMP             R2, #2
5B86E0:  BNE             locret_5B8736
5B86E2:  LDR.W           R2, [R4,#0x138]
5B86E6:  CMP             R2, #0
5B86E8:  ITTT NE
5B86EA:  MOVNE           R0, #1
5B86EC:  STRBNE          R0, [R2,#4]
5B86EE:  POPNE           {R4,R5,R7,PC}
5B86F0:  MOVS            R2, #0
5B86F2:  CMP             R1, #3
5B86F4:  BNE             loc_5B8700
5B86F6:  LDR.W           R1, [R4,#0x59C]
5B86FA:  CMP             R1, #0
5B86FC:  IT EQ
5B86FE:  MOVEQ           R2, #1
5B8700:  LDRB            R1, [R0]
5B8702:  CBZ             R1, locret_5B8736
5B8704:  CBZ             R2, loc_5B870A
5B8706:  LDR             R5, [R0,#4]
5B8708:  B               loc_5B8720
5B870A:  MOVS            R5, #0
5B870C:  MOVS            R1, #2
5B870E:  LDR.W           R2, [R0,R1,LSL#2]
5B8712:  ADDS            R1, #1
5B8714:  LDR             R3, [R2]
5B8716:  CMP             R3, #0
5B8718:  IT EQ
5B871A:  MOVEQ           R5, R2
5B871C:  CMP             R1, #0x29 ; ')'
5B871E:  BNE             loc_5B870E
5B8720:  CMP             R5, #0
5B8722:  IT EQ
5B8724:  POPEQ           {R4,R5,R7,PC}
5B8726:  MOV             R0, R5; this
5B8728:  MOV             R1, R4; CPhysical *
5B872A:  BLX.W           j__ZN15CRealTimeShadow17SetShadowedObjectEP9CPhysical; CRealTimeShadow::SetShadowedObject(CPhysical *)
5B872E:  MOVS            R0, #1
5B8730:  STR.W           R5, [R4,#0x138]
5B8734:  STRH            R0, [R5,#4]
5B8736:  POP             {R4,R5,R7,PC}
