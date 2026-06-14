; =========================================================
; Game Engine Function: sub_12FEF4
; Address            : 0x12FEF4 - 0x12FF42
; =========================================================

12FEF4:  PUSH            {R4-R7,LR}
12FEF6:  ADD             R7, SP, #0xC
12FEF8:  PUSH.W          {R8}
12FEFC:  MOVS            R1, #1
12FEFE:  MOV             R4, R0
12FF00:  BL              sub_13D71C
12FF04:  LDR             R0, =(_ZTV14KeyboardLayout - 0x12FF0C); `vtable for'KeyboardLayout ...
12FF06:  MOVS            R6, #0x1B
12FF08:  ADD             R0, PC; `vtable for'KeyboardLayout
12FF0A:  ADDS            R0, #8
12FF0C:  STR             R0, [R4]
12FF0E:  LDR             R0, =(_ZTVN14KeyboardLayout3RowE - 0x12FF14); `vtable for'KeyboardLayout::Row ...
12FF10:  ADD             R0, PC; `vtable for'KeyboardLayout::Row
12FF12:  ADD.W           R8, R0, #8
12FF16:  MOVS            R0, #0x6C ; 'l'; unsigned int
12FF18:  BLX             j__Znwj; operator new(uint)
12FF1C:  MOV             R5, R0
12FF1E:  MOVS            R1, #0
12FF20:  BL              sub_13D71C
12FF24:  STR.W           R5, [R4,R6,LSL#2]
12FF28:  STR.W           R8, [R5]
12FF2C:  MOV             R0, R4
12FF2E:  MOV             R1, R5
12FF30:  BL              sub_12BDF6
12FF34:  ADDS            R6, #1
12FF36:  CMP             R6, #0x1F
12FF38:  BNE             loc_12FF16
12FF3A:  MOV             R0, R4
12FF3C:  POP.W           {R8}
12FF40:  POP             {R4-R7,PC}
