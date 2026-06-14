; =========================================================
; Game Engine Function: sub_1005EC
; Address            : 0x1005EC - 0x10060A
; =========================================================

1005EC:  PUSH            {R4,R6,R7,LR}
1005EE:  ADD             R7, SP, #8
1005F0:  MOV             R4, R0
1005F2:  LDRB            R0, [R0,#0x10]
1005F4:  CBZ             R0, loc_1005FA
1005F6:  MOVS            R0, #0
1005F8:  POP             {R4,R6,R7,PC}
1005FA:  MOVS            R0, #1
1005FC:  STRB            R0, [R4,#0x10]
1005FE:  LDR             R0, [R4,#0xC]
100600:  BL              sub_1006B2
100604:  MOVS            R1, #0
100606:  STRB            R1, [R4,#0x10]
100608:  POP             {R4,R6,R7,PC}
