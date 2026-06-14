; =========================================================
; Game Engine Function: sub_12FF60
; Address            : 0x12FF60 - 0x12FFA2
; =========================================================

12FF60:  PUSH            {R4-R7,LR}
12FF62:  ADD             R7, SP, #0xC
12FF64:  PUSH.W          {R8,R9,R11}
12FF68:  MOV             R8, R0
12FF6A:  MOVS            R0, #0x78 ; 'x'; unsigned int
12FF6C:  MOV             R6, R2
12FF6E:  MOV             R5, R1
12FF70:  BLX             j__Znwj; operator new(uint)
12FF74:  MOV             R4, R0
12FF76:  MOV             R1, R5
12FF78:  MOVS            R2, #0
12FF7A:  MOV.W           R9, #0
12FF7E:  BL              sub_13CE34
12FF82:  LDR             R0, =(_ZTVN14KeyboardLayout3Row3KeyE - 0x12FF8E); `vtable for'KeyboardLayout::Row::Key ...
12FF84:  MOV             R1, R4
12FF86:  STRB.W          R6, [R4,#0x74]
12FF8A:  ADD             R0, PC; `vtable for'KeyboardLayout::Row::Key
12FF8C:  STR.W           R9, [R4,#0x70]
12FF90:  ADDS            R0, #8
12FF92:  STR             R0, [R4]
12FF94:  MOV             R0, R8
12FF96:  BL              sub_12BDF6
12FF9A:  MOV             R0, R4
12FF9C:  POP.W           {R8,R9,R11}
12FFA0:  POP             {R4-R7,PC}
