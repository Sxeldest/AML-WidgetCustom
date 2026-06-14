; =========================================================
; Game Engine Function: sub_14A66C
; Address            : 0x14A66C - 0x14A69E
; =========================================================

14A66C:  PUSH            {R4,R6,R7,LR}
14A66E:  ADD             R7, SP, #8
14A670:  MOV             R4, R0
14A672:  LDR.W           R0, [R0,#0x128]
14A676:  CBZ             R0, loc_14A68A
14A678:  MOVS            R1, #0
14A67A:  MOVS            R2, #0
14A67C:  MOVS            R3, #0
14A67E:  BL              sub_104B1C
14A682:  LDR.W           R0, [R4,#0x128]
14A686:  BL              sub_104154
14A68A:  LDRB            R0, [R4,#0x19]
14A68C:  CMP             R0, #0x20 ; ' '
14A68E:  ITT NE
14A690:  MOVNE           R0, #0x20 ; ' '
14A692:  STRBNE          R0, [R4,#0x19]
14A694:  MOV             R0, R4
14A696:  POP.W           {R4,R6,R7,LR}
14A69A:  B.W             sub_149278
