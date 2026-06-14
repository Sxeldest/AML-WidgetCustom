; =========================================================
; Game Engine Function: sub_120AE0
; Address            : 0x120AE0 - 0x120AFC
; =========================================================

120AE0:  PUSH            {R4,R5,R7,LR}
120AE2:  ADD             R7, SP, #8
120AE4:  MOV             R4, R0
120AE6:  LDR             R0, [R0,#4]
120AE8:  CBZ             R0, loc_120AEC
120AEA:  POP             {R4,R5,R7,PC}
120AEC:  MOVS            R0, #4; unsigned int
120AEE:  BLX             j__Znwj; operator new(uint)
120AF2:  MOV             R5, R0
120AF4:  BL              sub_120860
120AF8:  STR             R5, [R4,#4]
120AFA:  POP             {R4,R5,R7,PC}
