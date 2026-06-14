; =========================================================
; Game Engine Function: sub_158680
; Address            : 0x158680 - 0x1586B2
; =========================================================

158680:  PUSH            {R4,R5,R7,LR}
158682:  ADD             R7, SP, #8
158684:  LDR             R5, [R0]
158686:  MOV             R4, R0
158688:  MOVS            R0, #0
15868A:  STR             R0, [R4]
15868C:  CBZ             R5, loc_1586AE
15868E:  LDRB            R0, [R5,#8]
158690:  LSLS            R0, R0, #0x1F
158692:  ITT NE
158694:  LDRNE           R0, [R5,#0x10]; void *
158696:  BLXNE           j__ZdlPv; operator delete(void *)
15869A:  ADDS            R0, R5, #4
15869C:  BL              sub_1580F4
1586A0:  MOV             R0, R5
1586A2:  MOVS            R1, #0
1586A4:  BL              sub_100A1C
1586A8:  MOV             R0, R5; void *
1586AA:  BLX             j__ZdlPv; operator delete(void *)
1586AE:  MOV             R0, R4
1586B0:  POP             {R4,R5,R7,PC}
