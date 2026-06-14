; =========================================================
; Game Engine Function: sub_E66C0
; Address            : 0xE66C0 - 0xE6738
; =========================================================

E66C0:  PUSH            {R4-R7,LR}
E66C2:  ADD             R7, SP, #0xC
E66C4:  PUSH.W          {R8}
E66C8:  MOV             R6, R1
E66CA:  MOV             R1, R2
E66CC:  MOV             R8, R3
E66CE:  MOV             R4, R0
E66D0:  BL              sub_E67B8
E66D4:  LDR             R0, =(byte_8F794 - 0xE66EC)
E66D6:  MOV             R5, R4
E66D8:  LDRD.W          R2, R3, [R6]
E66DC:  VMOV.I32        Q8, #0
E66E0:  STR.W           R2, [R5,#0x20]!
E66E4:  MOVS            R2, #0
E66E6:  LDR             R1, [R7,#arg_0]
E66E8:  ADD             R0, PC; byte_8F794
E66EA:  STRB            R1, [R5,#8]
E66EC:  ADD.W           R1, R5, #0x14
E66F0:  STR             R3, [R5,#4]
E66F2:  MOV.W           R3, #0xFFFFFFFF
E66F6:  STR             R2, [R6]
E66F8:  STR             R2, [R6,#4]
E66FA:  ADD.W           R6, R5, #0x40 ; '@'
E66FE:  STR.W           R2, [R5,#-8]
E6702:  STRB            R2, [R5,#0x10]
E6704:  STRD.W          R2, R2, [R5,#0x50]
E6708:  STR             R2, [R5,#0x34]
E670A:  MOVS            R2, #0x14
E670C:  VST1.32         {D16-D17}, [R1]!
E6710:  VST1.32         {D16-D17}, [R1],R2
E6714:  STR             R0, [R1]
E6716:  MOVS            R0, #0x18
E6718:  STR             R3, [R5,#0xC]
E671A:  VST1.64         {D16-D17}, [R6],R0
E671E:  BL              sub_E67E4
E6722:  STRB.W          R8, [R5,#0x60]
E6726:  STR             R0, [R6]
E6728:  MOV             R0, R5
E672A:  BL              sub_E67FC
E672E:  STR             R0, [R4,#0x18]
E6730:  MOV             R0, R4
E6732:  POP.W           {R8}
E6736:  POP             {R4-R7,PC}
