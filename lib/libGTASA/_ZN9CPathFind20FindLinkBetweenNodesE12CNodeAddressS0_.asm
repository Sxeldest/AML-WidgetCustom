; =========================================================
; Game Engine Function: _ZN9CPathFind20FindLinkBetweenNodesE12CNodeAddressS0_
; Address            : 0x31B3BC - 0x31B432
; =========================================================

31B3BC:  PUSH            {R4,R6,R7,LR}
31B3BE:  ADD             R7, SP, #8
31B3C0:  UXTH.W          R12, R1
31B3C4:  MOV             LR, R0
31B3C6:  ADD.W           R0, LR, R12,LSL#2
31B3CA:  LDR.W           R3, [R0,#0x804]
31B3CE:  MOVW            R0, #0xFFFF
31B3D2:  CBZ             R3, locret_31B430
31B3D4:  UXTH            R4, R2
31B3D6:  ADD.W           R3, LR, R4,LSL#2
31B3DA:  LDR.W           R3, [R3,#0x804]
31B3DE:  CMP             R3, #0
31B3E0:  IT EQ
31B3E2:  POPEQ           {R4,R6,R7,PC}
31B3E4:  LSRS            R0, R2, #0x10
31B3E6:  LDR             R2, =(ThePaths_ptr - 0x31B3EE)
31B3E8:  LSRS            R3, R1, #0x10
31B3EA:  ADD             R2, PC; ThePaths_ptr
31B3EC:  LSLS            R3, R3, #3
31B3EE:  SUB.W           R1, R3, R1,LSR#16
31B3F2:  LDR             R2, [R2]; ThePaths
31B3F4:  ADD.W           R2, R2, R12,LSL#2
31B3F8:  LDR.W           LR, [R2,#0x804]
31B3FC:  LDR.W           R2, [R2,#0xA44]
31B400:  ADD.W           R1, LR, R1,LSL#2
31B404:  LDRSH.W         R1, [R1,#0x10]
31B408:  LSLS            R1, R1, #1
31B40A:  B               loc_31B40E
31B40C:  ADDS            R1, #2
31B40E:  LDRH.W          R3, [R2,R1,LSL#1]
31B412:  CMP             R3, R4
31B414:  BNE             loc_31B40C
31B416:  ADD.W           R3, R2, R1,LSL#1
31B41A:  LDRH            R3, [R3,#2]
31B41C:  CMP             R3, R0
31B41E:  BNE             loc_31B40C
31B420:  LDR             R0, =(ThePaths_ptr - 0x31B426)
31B422:  ADD             R0, PC; ThePaths_ptr
31B424:  LDR             R0, [R0]; ThePaths
31B426:  ADD.W           R0, R0, R12,LSL#2
31B42A:  LDR.W           R0, [R0,#0xDA4]
31B42E:  LDRH            R0, [R0,R1]
31B430:  POP             {R4,R6,R7,PC}
