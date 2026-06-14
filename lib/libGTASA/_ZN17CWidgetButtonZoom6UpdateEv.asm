; =========================================================
; Game Engine Function: _ZN17CWidgetButtonZoom6UpdateEv
; Address            : 0x2B6D20 - 0x2B6D4C
; =========================================================

2B6D20:  PUSH            {R4,R6,R7,LR}
2B6D22:  ADD             R7, SP, #8
2B6D24:  MOV             R4, R0
2B6D26:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B6D2A:  LDR.W           R0, [R4,#0x80]
2B6D2E:  ORR.W           R0, R0, #0xC00; this
2B6D32:  STR.W           R0, [R4,#0x80]
2B6D36:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2B6D3A:  CMP             R0, #2
2B6D3C:  ITTT EQ
2B6D3E:  LDREQ.W         R0, [R4,#0x80]
2B6D42:  BICEQ.W         R0, R0, #0xC00
2B6D46:  STREQ.W         R0, [R4,#0x80]
2B6D4A:  POP             {R4,R6,R7,PC}
