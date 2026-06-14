; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5252A8 - 0x5252F2
; =========================================================

5252A8:  PUSH            {R4,R5,R7,LR}
5252AA:  ADD             R7, SP, #8
5252AC:  MOV             R5, R0
5252AE:  CMP             R2, #0
5252B0:  ITTT EQ
5252B2:  LDREQ.W         R12, [R5,#0x1C]
5252B6:  MOVEQ           R0, #0
5252B8:  STREQ.W         R0, [R12]
5252BC:  LDR.W           R12, [R1,#0x14]
5252C0:  LDR             R0, [R5,#8]
5252C2:  ADD.W           R4, R12, #0x30 ; '0'
5252C6:  CMP.W           R12, #0
5252CA:  IT EQ
5252CC:  ADDEQ           R4, R1, #4
5252CE:  VLDR            D16, [R4]
5252D2:  LDR             R4, [R4,#8]
5252D4:  STR             R4, [R5,#0x2C]
5252D6:  VSTR            D16, [R5,#0x24]
5252DA:  LDR             R4, [R0]
5252DC:  LDR             R4, [R4,#0x1C]
5252DE:  BLX             R4
5252E0:  LDRB.W          R1, [R5,#0x20]
5252E4:  AND.W           R1, R1, #0xFD
5252E8:  ORR.W           R1, R1, R0,LSL#1
5252EC:  STRB.W          R1, [R5,#0x20]
5252F0:  POP             {R4,R5,R7,PC}
