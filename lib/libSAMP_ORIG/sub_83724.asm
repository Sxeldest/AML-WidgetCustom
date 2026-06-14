; =========================================================
; Game Engine Function: sub_83724
; Address            : 0x83724 - 0x8376A
; =========================================================

83724:  PUSH            {R4-R7,LR}
83726:  ADD             R7, SP, #0xC
83728:  PUSH.W          {R11}
8372C:  LDR             R4, =(dword_1A4A00 - 0x83738)
8372E:  MOV.W           R2, #0xFFFFFFFF
83732:  LDR             R1, =(dword_116E18 - 0x8373E)
83734:  ADD             R4, PC; dword_1A4A00
83736:  LDRD.W          R5, R0, [R4]
8373A:  ADD             R1, PC; dword_116E18
8373C:  CMP             R0, R5
8373E:  STR             R2, [R1]
83740:  BEQ             loc_8375A
83742:  MOV             R6, R0
83744:  LDRB.W          R1, [R6,#-0xC]!
83748:  LSLS            R1, R1, #0x1F
8374A:  ITT NE
8374C:  LDRNE.W         R0, [R0,#-4]; void *
83750:  BLXNE           j__ZdlPv; operator delete(void *)
83754:  CMP             R6, R5
83756:  MOV             R0, R6
83758:  BNE             loc_83744
8375A:  LDR             R0, =(dword_1A4A0C - 0x83762)
8375C:  STR             R5, [R4,#(dword_1A4A04 - 0x1A4A00)]
8375E:  ADD             R0, PC; dword_1A4A0C
83760:  LDR             R1, [R0]
83762:  STR             R1, [R0,#(dword_1A4A10 - 0x1A4A0C)]
83764:  POP.W           {R11}
83768:  POP             {R4-R7,PC}
