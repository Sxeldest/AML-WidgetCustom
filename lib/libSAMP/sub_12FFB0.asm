; =========================================================
; Game Engine Function: sub_12FFB0
; Address            : 0x12FFB0 - 0x12FFEE
; =========================================================

12FFB0:  PUSH            {R4-R7,LR}
12FFB2:  ADD             R7, SP, #0xC
12FFB4:  PUSH.W          {R8,R9,R11}
12FFB8:  MOV             R8, R0
12FFBA:  MOVS            R0, #0x78 ; 'x'; unsigned int
12FFBC:  MOV             R9, R3
12FFBE:  MOV             R5, R2
12FFC0:  MOV             R6, R1
12FFC2:  BLX             j__Znwj; operator new(uint)
12FFC6:  MOV             R4, R0
12FFC8:  MOV             R1, R6
12FFCA:  MOVS            R2, #0
12FFCC:  BL              sub_13CE34
12FFD0:  LDR             R0, =(_ZTVN14KeyboardLayout3Row4BindE - 0x12FFDA); `vtable for'KeyboardLayout::Row::Bind ...
12FFD2:  MOV             R1, R4
12FFD4:  STR             R5, [R4,#0x70]
12FFD6:  ADD             R0, PC; `vtable for'KeyboardLayout::Row::Bind
12FFD8:  STRB.W          R9, [R4,#0x50]
12FFDC:  ADDS            R0, #8
12FFDE:  STR             R0, [R4]
12FFE0:  MOV             R0, R8
12FFE2:  BL              sub_12BDF6
12FFE6:  MOV             R0, R4
12FFE8:  POP.W           {R8,R9,R11}
12FFEC:  POP             {R4-R7,PC}
