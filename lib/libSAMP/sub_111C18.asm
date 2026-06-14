; =========================================================
; Game Engine Function: sub_111C18
; Address            : 0x111C18 - 0x111C34
; =========================================================

111C18:  PUSH            {R4,R5,R7,LR}
111C1A:  ADD             R7, SP, #8
111C1C:  MOV             R4, R0
111C1E:  LDR             R0, [R0,#4]
111C20:  CBZ             R0, loc_111C24
111C22:  POP             {R4,R5,R7,PC}
111C24:  MOVS            R0, #0x30 ; '0'; unsigned int
111C26:  BLX             j__Znwj; operator new(uint)
111C2A:  MOV             R5, R0
111C2C:  BL              sub_111564
111C30:  STR             R5, [R4,#4]
111C32:  POP             {R4,R5,R7,PC}
