; =========================================================
; Game Engine Function: _ZN6CDummyC2Ev
; Address            : 0x3EAD84 - 0x3EADA8
; =========================================================

3EAD84:  PUSH            {R7,LR}
3EAD86:  MOV             R7, SP
3EAD88:  BLX             j__ZN7CEntityC2Ev; CEntity::CEntity(void)
3EAD8C:  LDR             R1, =(_ZTV6CDummy_ptr - 0x3EAD96)
3EAD8E:  LDRB.W          R2, [R0,#0x3A]
3EAD92:  ADD             R1, PC; _ZTV6CDummy_ptr
3EAD94:  AND.W           R2, R2, #0xF8
3EAD98:  LDR             R1, [R1]; `vtable for'CDummy ...
3EAD9A:  ORR.W           R2, R2, #5
3EAD9E:  STRB.W          R2, [R0,#0x3A]
3EADA2:  ADDS            R1, #8
3EADA4:  STR             R1, [R0]
3EADA6:  POP             {R7,PC}
