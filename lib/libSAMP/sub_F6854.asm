; =========================================================
; Game Engine Function: sub_F6854
; Address            : 0xF6854 - 0xF687A
; =========================================================

F6854:  PUSH            {R4,R5,R7,LR}
F6856:  ADD             R7, SP, #8
F6858:  LDR             R5, =(unk_2401F0 - 0xF6860)
F685A:  MOVS            R4, #0
F685C:  ADD             R5, PC; unk_2401F0
F685E:  ADDS            R0, R5, R4
F6860:  LDRB.W          R1, [R0,#0xB4]
F6864:  LSLS            R1, R1, #0x1F
F6866:  ITT NE
F6868:  LDRNE.W         R0, [R0,#0xBC]; void *
F686C:  BLXNE           j__ZdlPv; operator delete(void *)
F6870:  SUBS            R4, #0xC
F6872:  ADDS.W          R0, R4, #0xC0
F6876:  BNE             loc_F685E
F6878:  POP             {R4,R5,R7,PC}
