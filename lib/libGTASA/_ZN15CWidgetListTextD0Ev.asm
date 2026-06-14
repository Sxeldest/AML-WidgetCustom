; =========================================================
; Game Engine Function: _ZN15CWidgetListTextD0Ev
; Address            : 0x2BBF10 - 0x2BBF44
; =========================================================

2BBF10:  PUSH            {R4,R5,R7,LR}
2BBF12:  ADD             R7, SP, #8
2BBF14:  MOV             R4, R0
2BBF16:  LDR             R0, =(_ZTV11CWidgetList_ptr - 0x2BBF20)
2BBF18:  MOVW            R5, #:lower16:(elf_hash_chain+0x1B0C)
2BBF1C:  ADD             R0, PC; _ZTV11CWidgetList_ptr
2BBF1E:  MOVT            R5, #:upper16:(elf_hash_chain+0x1B0C)
2BBF22:  LDR             R0, [R0]; `vtable for'CWidgetList ...
2BBF24:  ADDS            R0, #8
2BBF26:  STR             R0, [R4]
2BBF28:  ADDS            R0, R4, R5; this
2BBF2A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2BBF2E:  SUB.W           R5, R5, #0x11C
2BBF32:  CMP             R5, #0x74 ; 't'
2BBF34:  BNE             loc_2BBF28
2BBF36:  MOV             R0, R4; this
2BBF38:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BBF3C:  POP.W           {R4,R5,R7,LR}
2BBF40:  B.W             j__ZdlPv; operator delete(void *)
