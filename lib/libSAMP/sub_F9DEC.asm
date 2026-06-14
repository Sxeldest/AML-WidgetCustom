; =========================================================
; Game Engine Function: sub_F9DEC
; Address            : 0xF9DEC - 0xF9E54
; =========================================================

F9DEC:  PUSH            {R4-R7,LR}
F9DEE:  ADD             R7, SP, #0xC
F9DF0:  PUSH.W          {R8,R9,R11}
F9DF4:  VPUSH           {D8-D10}
F9DF8:  SUB             SP, SP, #0x10; float
F9DFA:  LDR             R5, =(unk_247288 - 0xF9E0E)
F9DFC:  VMOV            S20, R3
F9E00:  VLDR            S16, [R7,#arg_4]
F9E04:  MOV             R8, R2
F9E06:  VLDR            S18, [R7,#arg_0]
F9E0A:  ADD             R5, PC; unk_247288
F9E0C:  MOV             R9, R1
F9E0E:  MOVS            R4, #2
F9E10:  LDRB            R0, [R5,R4]
F9E12:  CBZ             R0, loc_F9E1E
F9E14:  ADDS            R4, #1
F9E16:  CMP             R4, #0xD2
F9E18:  BNE             loc_F9E10
F9E1A:  MOVS            R6, #0
F9E1C:  B               loc_F9E46
F9E1E:  MOV.W           R0, #0x2F0; unsigned int
F9E22:  BLX             j__Znwj; operator new(uint)
F9E26:  MOV             R6, R0
F9E28:  MOV             R1, R4; int
F9E2A:  MOV             R2, R9; int
F9E2C:  MOV             R3, R8; int
F9E2E:  VSTR            S20, [SP,#0x40+var_40]
F9E32:  VSTR            S18, [SP,#0x40+var_3C]
F9E36:  VSTR            S16, [SP,#0x40+var_38]
F9E3A:  BL              sub_103C40
F9E3E:  LDR             R0, [R6,#0x5C]
F9E40:  CBZ             R0, loc_F9E46
F9E42:  MOVS            R0, #1
F9E44:  STRB            R0, [R5,R4]
F9E46:  MOV             R0, R6
F9E48:  ADD             SP, SP, #0x10
F9E4A:  VPOP            {D8-D10}
F9E4E:  POP.W           {R8,R9,R11}
F9E52:  POP             {R4-R7,PC}
