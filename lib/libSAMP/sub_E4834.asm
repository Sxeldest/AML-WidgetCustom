; =========================================================
; Game Engine Function: sub_E4834
; Address            : 0xE4834 - 0xE488E
; =========================================================

E4834:  PUSH            {R4,R6,R7,LR}
E4836:  ADD             R7, SP, #8
E4838:  LDRB            R2, [R1]
E483A:  MOV             R4, R0
E483C:  MOVS            R0, #0
E483E:  STRB            R2, [R4]
E4840:  STRD.W          R0, R0, [R4,#8]
E4844:  SUBS            R0, R2, #1; switch 8 cases
E4846:  CMP             R0, #7
E4848:  BHI             def_E484A; jumptable 000E484A default case
E484A:  TBB.W           [PC,R0]; switch jump
E484E:  DCB 9; jump table for switch statement
E484F:  DCB 0xD
E4850:  DCB 0x11
E4851:  DCB 0x15
E4852:  DCB 4
E4853:  DCB 4
E4854:  DCB 4
E4855:  DCB 0x1A
E4856:  LDRD.W          R0, R1, [R1,#8]; jumptable 000E484A cases 5-7
E485A:  STRD.W          R0, R1, [R4,#8]
E485E:  B               def_E484A; jumptable 000E484A default case
E4860:  LDR             R0, [R1,#8]; jumptable 000E484A case 1
E4862:  BL              sub_EBE7C
E4866:  B               loc_E4888
E4868:  LDR             R0, [R1,#8]; jumptable 000E484A case 2
E486A:  BL              sub_EC0EC
E486E:  B               loc_E4888
E4870:  LDR             R0, [R1,#8]; jumptable 000E484A case 3
E4872:  BL              sub_EA114
E4876:  B               loc_E4888
E4878:  MOVS            R0, #0; jumptable 000E484A case 4
E487A:  LDRB            R1, [R1,#8]
E487C:  STRD.W          R1, R0, [R4,#8]
E4880:  B               def_E484A; jumptable 000E484A default case
E4882:  LDR             R0, [R1,#8]; jumptable 000E484A case 8
E4884:  BL              sub_EC194
E4888:  STR             R0, [R4,#8]
E488A:  MOV             R0, R4; jumptable 000E484A default case
E488C:  POP             {R4,R6,R7,PC}
