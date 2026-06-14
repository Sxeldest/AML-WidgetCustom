; =========================================================
; Game Engine Function: sub_E5E26
; Address            : 0xE5E26 - 0xE5E4C
; =========================================================

E5E26:  PUSH            {R4,R5,R7,LR}
E5E28:  ADD             R7, SP, #8
E5E2A:  MOV             R4, R0
E5E2C:  LDRD.W          R5, R0, [R0,#4]
E5E30:  CMP             R0, R5
E5E32:  BEQ             loc_E5E40
E5E34:  SUBS            R0, #0x10
E5E36:  STR             R0, [R4,#8]
E5E38:  BL              sub_E3F7A
E5E3C:  LDR             R0, [R4,#8]
E5E3E:  B               loc_E5E30
E5E40:  LDR             R0, [R4]; void *
E5E42:  CBZ             R0, loc_E5E48
E5E44:  BLX             j__ZdlPv; operator delete(void *)
E5E48:  MOV             R0, R4
E5E4A:  POP             {R4,R5,R7,PC}
