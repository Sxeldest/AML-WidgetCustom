; =========================================================
; Game Engine Function: _Z13_rpTieDestroyP5RpTie
; Address            : 0x21D844 - 0x21D890
; =========================================================

21D844:  MOV             R1, R0
21D846:  LDR             R0, [R1,#8]
21D848:  CMP             R0, #0
21D84A:  ITT NE
21D84C:  LDRNE           R0, [R1,#0x14]
21D84E:  CMPNE           R0, #0
21D850:  BEQ             loc_21D88C
21D852:  PUSH            {R7,LR}
21D854:  MOV             R7, SP
21D856:  LDRD.W          R0, R2, [R1,#0xC]
21D85A:  STR             R0, [R2]
21D85C:  LDRD.W          R0, R2, [R1,#0xC]
21D860:  LDR             R3, =(RwEngineInstance_ptr - 0x21D86C)
21D862:  LDR.W           R12, =(dword_6BD690 - 0x21D872)
21D866:  STR             R2, [R0,#4]
21D868:  ADD             R3, PC; RwEngineInstance_ptr
21D86A:  LDRD.W          R0, R2, [R1]
21D86E:  ADD             R12, PC; dword_6BD690
21D870:  STR             R0, [R2]
21D872:  LDRD.W          R0, R2, [R1]
21D876:  LDR             R3, [R3]; RwEngineInstance
21D878:  STR             R2, [R0,#4]
21D87A:  LDR.W           R0, [R12]
21D87E:  LDR             R2, [R3]
21D880:  LDR             R0, [R2,R0]
21D882:  LDR.W           R2, [R2,#0x140]
21D886:  BLX             R2
21D888:  POP.W           {R7,LR}
21D88C:  MOVS            R0, #1
21D88E:  BX              LR
