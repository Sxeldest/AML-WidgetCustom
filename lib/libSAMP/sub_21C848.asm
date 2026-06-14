; =========================================================
; Game Engine Function: sub_21C848
; Address            : 0x21C848 - 0x21C888
; =========================================================

21C848:  PUSH            {R4-R7,LR}
21C84A:  ADD             R7, SP, #0xC
21C84C:  PUSH.W          {R11}
21C850:  MOV             R5, R0
21C852:  LDR             R0, [R0,#8]
21C854:  MOV             R4, R1
21C856:  LDR             R1, [R0]
21C858:  LDR             R2, [R1,#0x10]
21C85A:  MOV             R1, R4
21C85C:  BLX             R2
21C85E:  LDR             R1, =(aAbi - 0x21C868); "[abi:" ...
21C860:  MOV             R0, R4
21C862:  LDR             R6, =(sub_216F98+1 - 0x21C86C)
21C864:  ADD             R1, PC; "[abi:"
21C866:  ADDS            R2, R1, #5
21C868:  ADD             R6, PC; sub_216F98
21C86A:  BLX             R6; sub_216F98
21C86C:  LDRD.W          R1, R2, [R5,#0xC]
21C870:  MOV             R0, R4
21C872:  BLX             R6; sub_216F98
21C874:  LDR             R1, =(unk_8919A - 0x21C87E)
21C876:  MOV             R0, R4
21C878:  MOV             R3, R6
21C87A:  ADD             R1, PC; unk_8919A
21C87C:  ADDS            R2, R1, #1
21C87E:  POP.W           {R11}
21C882:  POP.W           {R4-R7,LR}
21C886:  BX              R3; sub_216F98
