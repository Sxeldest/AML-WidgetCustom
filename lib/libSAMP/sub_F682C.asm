; =========================================================
; Game Engine Function: sub_F682C
; Address            : 0xF682C - 0xF6850
; =========================================================

F682C:  PUSH            {R4,R5,R7,LR}
F682E:  ADD             R7, SP, #8
F6830:  LDR             R5, =(byte_2400E0 - 0xF683A)
F6832:  MOV.W           R4, #0x108
F6836:  ADD             R5, PC; byte_2400E0
F6838:  ADDS            R0, R5, R4
F683A:  LDRB.W          R1, [R0,#-0xC]
F683E:  LSLS            R1, R1, #0x1F
F6840:  ITT NE
F6842:  LDRNE.W         R0, [R0,#-4]; void *
F6846:  BLXNE           j__ZdlPv; operator delete(void *)
F684A:  SUBS            R4, #0xC
F684C:  BNE             loc_F6838
F684E:  POP             {R4,R5,R7,PC}
