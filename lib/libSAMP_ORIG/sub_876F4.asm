; =========================================================
; Game Engine Function: sub_876F4
; Address            : 0x876F4 - 0x87716
; =========================================================

876F4:  PUSH            {R4,R6,R7,LR}
876F6:  ADD             R7, SP, #8
876F8:  LDR             R4, =(unk_1ABEC0 - 0x876FE)
876FA:  ADD             R4, PC; unk_1ABEC0
876FC:  MOV             R0, R4
876FE:  BL              sub_87724
87702:  LDR             R0, =(off_114D58 - 0x8770C)
87704:  MOV             R1, R4
87706:  LDR             R2, =(off_110560 - 0x8770E)
87708:  ADD             R0, PC; off_114D58
8770A:  ADD             R2, PC; off_110560
8770C:  LDR             R0, [R0]; sub_87734
8770E:  POP.W           {R4,R6,R7,LR}
87712:  B.W             sub_10C188
