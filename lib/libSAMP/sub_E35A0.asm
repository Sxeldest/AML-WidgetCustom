; =========================================================
; Game Engine Function: sub_E35A0
; Address            : 0xE35A0 - 0xE35BE
; =========================================================

E35A0:  PUSH            {R4,R5,R7,LR}
E35A2:  ADD             R7, SP, #8
E35A4:  LDR             R4, [R0,#8]
E35A6:  CBNZ            R4, loc_E35BA
E35A8:  MOV             R5, R0
E35AA:  MOV.W           R0, #0x2F0; unsigned int
E35AE:  BLX             j__Znwj; operator new(uint)
E35B2:  MOV             R4, R0
E35B4:  BL              sub_103B88
E35B8:  STR             R4, [R5,#8]
E35BA:  MOV             R0, R4
E35BC:  POP             {R4,R5,R7,PC}
