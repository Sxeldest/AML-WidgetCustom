; =========================================================
; Game Engine Function: sub_1407EC
; Address            : 0x1407EC - 0x14081A
; =========================================================

1407EC:  PUSH            {R4,R6,R7,LR}
1407EE:  ADD             R7, SP, #8
1407F0:  MOV             R4, R0
1407F2:  LDR             R0, [R0,#0x1C]
1407F4:  MOVS            R1, #0
1407F6:  STRB.W          R1, [R4,#0x21]
1407FA:  CBZ             R0, locret_140818
1407FC:  BL              sub_104854
140800:  LDR             R0, [R4,#0x1C]
140802:  MOVS            R1, #0x42C80000
140808:  BL              sub_1042F4
14080C:  LDR             R0, [R4,#0x1C]
14080E:  MOVS            R1, #0
140810:  POP.W           {R4,R6,R7,LR}
140814:  B.W             sub_10421C
140818:  POP             {R4,R6,R7,PC}
