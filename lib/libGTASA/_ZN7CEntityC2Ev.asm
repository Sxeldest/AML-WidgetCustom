; =========================================================
; Game Engine Function: _ZN7CEntityC2Ev
; Address            : 0x3EAEF0 - 0x3EAF32
; =========================================================

3EAEF0:  PUSH            {R4,R5,R7,LR}
3EAEF2:  ADD             R7, SP, #8
3EAEF4:  MOV             R4, R0
3EAEF6:  BLX             j__ZN10CPlaceableC2Ev; CPlaceable::CPlaceable(void)
3EAEFA:  LDR             R0, =(_ZTV7CEntity_ptr - 0x3EAF08)
3EAEFC:  MOVS            R1, #0x20 ; ' '
3EAEFE:  STRB.W          R1, [R4,#0x3A]
3EAF02:  MOVS            R1, #0x80
3EAF04:  ADD             R0, PC; _ZTV7CEntity_ptr
3EAF06:  MOVT            R1, #0x800
3EAF0A:  STR             R1, [R4,#0x1C]
3EAF0C:  MOVS            R5, #0
3EAF0E:  LDR             R0, [R0]; `vtable for'CEntity ...
3EAF10:  MOVW            R1, #0xFFFF
3EAF14:  STRH            R5, [R4,#0x30]
3EAF16:  STRH            R1, [R4,#0x26]
3EAF18:  ADDS            R0, #8
3EAF1A:  STR             R5, [R4,#0x18]
3EAF1C:  STRH            R5, [R4,#0x32]
3EAF1E:  STR             R0, [R4]
3EAF20:  BLX             rand
3EAF24:  STRH            R0, [R4,#0x24]
3EAF26:  MOV             R0, R4
3EAF28:  STRD.W          R5, R5, [R4,#0x28]
3EAF2C:  STRH            R5, [R4,#0x38]
3EAF2E:  STR             R5, [R4,#0x34]
3EAF30:  POP             {R4,R5,R7,PC}
