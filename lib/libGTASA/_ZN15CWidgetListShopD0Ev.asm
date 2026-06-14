; =========================================================
; Game Engine Function: _ZN15CWidgetListShopD0Ev
; Address            : 0x2BBAEC - 0x2BBB20
; =========================================================

2BBAEC:  PUSH            {R4,R5,R7,LR}
2BBAEE:  ADD             R7, SP, #8
2BBAF0:  MOV             R4, R0
2BBAF2:  LDR             R0, =(_ZTV11CWidgetList_ptr - 0x2BBAFC)
2BBAF4:  MOVW            R5, #:lower16:(elf_hash_chain+0x1B0C)
2BBAF8:  ADD             R0, PC; _ZTV11CWidgetList_ptr
2BBAFA:  MOVT            R5, #:upper16:(elf_hash_chain+0x1B0C)
2BBAFE:  LDR             R0, [R0]; `vtable for'CWidgetList ...
2BBB00:  ADDS            R0, #8
2BBB02:  STR             R0, [R4]
2BBB04:  ADDS            R0, R4, R5; this
2BBB06:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2BBB0A:  SUB.W           R5, R5, #0x11C
2BBB0E:  CMP             R5, #0x74 ; 't'
2BBB10:  BNE             loc_2BBB04
2BBB12:  MOV             R0, R4; this
2BBB14:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BBB18:  POP.W           {R4,R5,R7,LR}
2BBB1C:  B.W             j__ZdlPv; operator delete(void *)
