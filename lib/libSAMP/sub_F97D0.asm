; =========================================================
; Game Engine Function: sub_F97D0
; Address            : 0xF97D0 - 0xF97E8
; =========================================================

F97D0:  PUSH            {R7,LR}
F97D2:  MOV             R7, SP
F97D4:  SUB             SP, SP, #8
F97D6:  LDR             R0, =(unk_B2D04 - 0xF97DE)
F97D8:  ADD             R1, SP, #0x10+var_C
F97DA:  ADD             R0, PC; unk_B2D04
F97DC:  BL              sub_107188
F97E0:  LDRB.W          R0, [SP,#0x10+var_C]
F97E4:  ADD             SP, SP, #8
F97E6:  POP             {R7,PC}
