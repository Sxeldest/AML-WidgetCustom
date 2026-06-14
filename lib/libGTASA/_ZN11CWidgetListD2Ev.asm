; =========================================================
; Game Engine Function: _ZN11CWidgetListD2Ev
; Address            : 0x2BAAF4 - 0x2BAB24
; =========================================================

2BAAF4:  PUSH            {R4,R5,R7,LR}
2BAAF6:  ADD             R7, SP, #8
2BAAF8:  MOV             R4, R0
2BAAFA:  LDR             R0, =(_ZTV11CWidgetList_ptr - 0x2BAB04)
2BAAFC:  MOVW            R5, #:lower16:(elf_hash_chain+0x1B0C)
2BAB00:  ADD             R0, PC; _ZTV11CWidgetList_ptr
2BAB02:  MOVT            R5, #:upper16:(elf_hash_chain+0x1B0C)
2BAB06:  LDR             R0, [R0]; `vtable for'CWidgetList ...
2BAB08:  ADDS            R0, #8
2BAB0A:  STR             R0, [R4]
2BAB0C:  ADDS            R0, R4, R5; this
2BAB0E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2BAB12:  SUB.W           R5, R5, #0x11C
2BAB16:  CMP             R5, #0x74 ; 't'
2BAB18:  BNE             loc_2BAB0C
2BAB1A:  MOV             R0, R4; this
2BAB1C:  POP.W           {R4,R5,R7,LR}
2BAB20:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
