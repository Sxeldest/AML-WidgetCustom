; =========================================================
; Game Engine Function: _ZN15CWidgetListShop7AddItemEPKcS1_
; Address            : 0x2BBA9C - 0x2BBAE4
; =========================================================

2BBA9C:  PUSH            {R4-R7,LR}
2BBA9E:  ADD             R7, SP, #0xC
2BBAA0:  PUSH.W          {R11}
2BBAA4:  MOV             R6, R1
2BBAA6:  MOV             R5, R2
2BBAA8:  MOV             R4, R0
2BBAAA:  CBZ             R6, loc_2BBAC2
2BBAAC:  ADR             R0, aRemclt; "REMCLT"
2BBAAE:  MOV             R1, R6; char *
2BBAB0:  BLX             strcasecmp
2BBAB4:  CBNZ            R0, loc_2BBAC2
2BBAB6:  MOVW            R0, #:lower16:(elf_hash_chain+0x1C88)
2BBABA:  MOVS            R1, #0
2BBABC:  MOVT            R0, #:upper16:(elf_hash_chain+0x1C88)
2BBAC0:  STRB            R1, [R4,R0]
2BBAC2:  MOV             R0, R4; this
2BBAC4:  MOV             R1, R6; char *
2BBAC6:  MOV             R2, R5; char *
2BBAC8:  BLX             j__ZN11CWidgetList7AddItemEPKcS1_; CWidgetList::AddItem(char const*,char const*)
2BBACC:  MOV             R0, #0x11CB0
2BBAD4:  LDR             R0, [R4,R0]
2BBAD6:  SUBS            R1, R0, #1; int
2BBAD8:  MOV             R0, R4; this
2BBADA:  POP.W           {R11}
2BBADE:  POP.W           {R4-R7,LR}
2BBAE2:  B               _ZN15CWidgetListShop11AssignImageEi; CWidgetListShop::AssignImage(int)
