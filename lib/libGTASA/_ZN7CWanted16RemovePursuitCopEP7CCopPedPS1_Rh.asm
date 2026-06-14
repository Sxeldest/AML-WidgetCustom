; =========================================================
; Game Engine Function: _ZN7CWanted16RemovePursuitCopEP7CCopPedPS1_Rh
; Address            : 0x422710 - 0x422784
; =========================================================

422710:  LDR             R3, [R1]
422712:  CMP             R3, R0
422714:  BEQ             loc_422774
422716:  MOV             R12, R1
422718:  LDR.W           R3, [R12,#4]!
42271C:  CMP             R3, R0
42271E:  ITTT NE
422720:  MOVNE           R12, R1
422722:  LDRNE.W         R3, [R12,#8]!
422726:  CMPNE           R3, R0
422728:  BEQ             loc_422776
42272A:  MOV             R12, R1
42272C:  LDR.W           R3, [R12,#0xC]!
422730:  CMP             R3, R0
422732:  ITTT NE
422734:  MOVNE           R12, R1
422736:  LDRNE.W         R3, [R12,#0x10]!
42273A:  CMPNE           R3, R0
42273C:  BEQ             loc_422776
42273E:  MOV             R12, R1
422740:  LDR.W           R3, [R12,#0x14]!
422744:  CMP             R3, R0
422746:  ITTT NE
422748:  MOVNE           R12, R1
42274A:  LDRNE.W         R3, [R12,#0x18]!
42274E:  CMPNE           R3, R0
422750:  BEQ             loc_422776
422752:  MOV             R12, R1
422754:  LDR.W           R3, [R12,#0x1C]!
422758:  CMP             R3, R0
42275A:  ITTT NE
42275C:  MOVNE           R12, R1
42275E:  LDRNE.W         R3, [R12,#0x20]!
422762:  CMPNE           R3, R0
422764:  BEQ             loc_422776
422766:  LDR.W           R3, [R1,#0x24]!
42276A:  CMP             R3, R0
42276C:  MOV             R12, R1
42276E:  IT NE
422770:  BXNE            LR
422772:  B               loc_422776
422774:  MOV             R12, R1
422776:  MOVS            R0, #0
422778:  STR.W           R0, [R12]
42277C:  LDRB            R0, [R2]
42277E:  SUBS            R0, #1
422780:  STRB            R0, [R2]
422782:  BX              LR
