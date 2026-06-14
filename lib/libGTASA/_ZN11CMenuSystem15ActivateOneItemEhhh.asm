; =========================================================
; Game Engine Function: _ZN11CMenuSystem15ActivateOneItemEhhh
; Address            : 0x43D524 - 0x43D5DA
; =========================================================

43D524:  PUSH            {R7,LR}
43D526:  MOV             R7, SP
43D528:  LDR             R3, =(MenuNumber_ptr - 0x43D52E)
43D52A:  ADD             R3, PC; MenuNumber_ptr
43D52C:  LDR             R3, [R3]; MenuNumber
43D52E:  LDR.W           R3, [R3,R0,LSL#2]
43D532:  ADD             R1, R3
43D534:  STRB.W          R2, [R1,#0x3D6]
43D538:  LDR             R1, =(MenuNumber_ptr - 0x43D53E)
43D53A:  ADD             R1, PC; MenuNumber_ptr
43D53C:  LDR.W           LR, [R1]; MenuNumber
43D540:  B               loc_43D54A
43D542:  ADD.W           R2, R12, #1
43D546:  STRB.W          R2, [R1,#0x415]
43D54A:  LDR.W           R1, [LR,R0,LSL#2]
43D54E:  LDRSB.W         R2, [R1,#0x415]
43D552:  ADDS            R3, R1, R2
43D554:  UXTB.W          R12, R2
43D558:  LDRB.W          R3, [R3,#0x3D6]
43D55C:  CBZ             R3, loc_43D56C
43D55E:  ADD.W           R3, R2, R2,LSL#2
43D562:  ADD.W           R3, R1, R3,LSL#1
43D566:  LDRB.W          R3, [R3,#0x41]
43D56A:  CBNZ            R3, loc_43D57A
43D56C:  LDRB.W          R3, [R1,#0x3F6]
43D570:  CMP             R2, R3
43D572:  BLT             loc_43D542
43D574:  CMP             R2, R3
43D576:  BGE             loc_43D582
43D578:  B               loc_43D5CA
43D57A:  LDRB.W          R3, [R1,#0x3F6]
43D57E:  CMP             R2, R3
43D580:  BLT             loc_43D5CA
43D582:  MOVS            R2, #0
43D584:  STRB.W          R2, [R1,#0x415]
43D588:  LDR             R1, =(MenuNumber_ptr - 0x43D58E)
43D58A:  ADD             R1, PC; MenuNumber_ptr
43D58C:  LDR.W           LR, [R1]; MenuNumber
43D590:  B               loc_43D59A
43D592:  ADD.W           R2, R12, #1
43D596:  STRB.W          R2, [R1,#0x415]
43D59A:  LDR.W           R1, [LR,R0,LSL#2]
43D59E:  LDRSB.W         R2, [R1,#0x415]
43D5A2:  ADDS            R3, R1, R2
43D5A4:  UXTB.W          R12, R2
43D5A8:  LDRB.W          R3, [R3,#0x3D6]
43D5AC:  CBZ             R3, loc_43D5BC
43D5AE:  ADD.W           R3, R2, R2,LSL#2
43D5B2:  ADD.W           R3, R1, R3,LSL#1
43D5B6:  LDRB.W          R3, [R3,#0x41]
43D5BA:  CBNZ            R3, loc_43D5C6
43D5BC:  LDRB.W          R3, [R1,#0x3F6]
43D5C0:  CMP             R2, R3
43D5C2:  BLT             loc_43D592
43D5C4:  B               loc_43D5CA
43D5C6:  LDRB.W          R3, [R1,#0x3F6]
43D5CA:  SXTB.W          R0, R12
43D5CE:  CMP             R0, R3
43D5D0:  ITT GE
43D5D2:  MOVGE           R0, #0
43D5D4:  STRBGE.W        R0, [R1,#0x415]
43D5D8:  POP             {R7,PC}
