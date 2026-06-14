; =========================================================
; Game Engine Function: sub_8775C
; Address            : 0x8775C - 0x8777E
; =========================================================

8775C:  PUSH            {R7,LR}
8775E:  MOV             R7, SP
87760:  MOV             R0, R1; name
87762:  BLX             gethostbyname
87766:  CMP             R0, #0
87768:  ITTT NE
8776A:  LDRNE           R0, [R0,#0x10]
8776C:  LDRNE           R0, [R0]
8776E:  CMPNE           R0, #0
87770:  BNE             loc_87776
87772:  MOVS            R0, #0
87774:  POP             {R7,PC}
87776:  LDR             R0, [R0]; in
87778:  BLX             inet_ntoa
8777C:  POP             {R7,PC}
