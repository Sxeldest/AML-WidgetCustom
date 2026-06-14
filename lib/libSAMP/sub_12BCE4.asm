; =========================================================
; Game Engine Function: sub_12BCE4
; Address            : 0x12BCE4 - 0x12BD24
; =========================================================

12BCE4:  PUSH            {R4-R7,LR}
12BCE6:  ADD             R7, SP, #0xC
12BCE8:  PUSH.W          {R11}
12BCEC:  MOV             R4, R0
12BCEE:  LDR             R0, =(_ZTV6Widget - 0x12BCF8); `vtable for'Widget ...
12BCF0:  LDRD.W          R5, R6, [R4,#0x44]
12BCF4:  ADD             R0, PC; `vtable for'Widget
12BCF6:  CMP             R5, R6
12BCF8:  ADD.W           R0, R0, #8
12BCFC:  STR             R0, [R4]
12BCFE:  BEQ             loc_12BD12
12BD00:  LDR             R0, [R5]
12BD02:  CBZ             R0, loc_12BD0A
12BD04:  LDR             R1, [R0]
12BD06:  LDR             R1, [R1,#0x2C]
12BD08:  BLX             R1
12BD0A:  ADDS            R5, #4
12BD0C:  CMP             R5, R6
12BD0E:  BNE             loc_12BD00
12BD10:  LDR             R5, [R4,#0x44]
12BD12:  CBZ             R5, loc_12BD1C
12BD14:  MOV             R0, R5; void *
12BD16:  STR             R5, [R4,#0x48]
12BD18:  BLX             j__ZdlPv; operator delete(void *)
12BD1C:  MOV             R0, R4
12BD1E:  POP.W           {R11}
12BD22:  POP             {R4-R7,PC}
