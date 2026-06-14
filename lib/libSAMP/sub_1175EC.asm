; =========================================================
; Game Engine Function: sub_1175EC
; Address            : 0x1175EC - 0x117614
; =========================================================

1175EC:  MOV             R3, R0
1175EE:  LDRB.W          R1, [R3,#0x10]!
1175F2:  LDR             R2, [R3,#4]
1175F4:  ANDS.W          R12, R1, #1
1175F8:  IT EQ
1175FA:  LSREQ           R2, R1, #1
1175FC:  CBZ             R2, locret_117612
1175FE:  LDR             R1, [R0,#0x20]
117600:  CMP.W           R12, #0
117604:  LDR             R2, [R0,#0x18]
117606:  ADD.W           R0, R0, #0x1C
11760A:  IT EQ
11760C:  ADDEQ           R2, R3, #1
11760E:  B.W             sub_163144
117612:  BX              LR
