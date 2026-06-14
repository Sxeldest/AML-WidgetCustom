; =========================================================
; Game Engine Function: sub_100DE4
; Address            : 0x100DE4 - 0x100E6E
; =========================================================

100DE4:  PUSH            {R4-R7,LR}
100DE6:  ADD             R7, SP, #0xC
100DE8:  PUSH.W          {R8-R10}
100DEC:  MOV             R6, R1
100DEE:  MOV             R9, R1
100DF0:  LDR.W           R4, [R6,#4]!
100DF4:  MOV             R8, R0
100DF6:  CBZ             R4, loc_100E1E
100DF8:  LDR             R0, [R2]
100DFA:  ADD.W           R6, R9, #4
100DFE:  LDR             R1, [R4,#0x10]
100E00:  CMP             R0, R1
100E02:  BGE             loc_100E0A
100E04:  LDR             R1, [R4]
100E06:  CBNZ            R1, loc_100E18
100E08:  B               loc_100E22
100E0A:  CMP             R1, R0
100E0C:  BGE             loc_100E24
100E0E:  MOV             R6, R4
100E10:  LDR.W           R1, [R6,#4]!
100E14:  CBZ             R1, loc_100E24
100E16:  MOV             R4, R6
100E18:  MOV             R6, R4
100E1A:  MOV             R4, R1
100E1C:  B               loc_100DFE
100E1E:  MOV             R4, R6
100E20:  B               loc_100E24
100E22:  MOV             R6, R4
100E24:  LDR             R5, [R6]
100E26:  CBZ             R5, loc_100E2C
100E28:  MOVS            R0, #0
100E2A:  B               loc_100E60
100E2C:  MOVS            R0, #0x30 ; '0'; unsigned int
100E2E:  LDR.W           R10, [R7,#arg_0]
100E32:  BLX             j__Znwj; operator new(uint)
100E36:  MOV             R5, R0
100E38:  LDR.W           R0, [R10]
100E3C:  VMOV.I32        Q8, #0
100E40:  MOVS            R1, #0xC
100E42:  MOV             R2, R6
100E44:  MOV             R3, R5
100E46:  LDR             R0, [R0]
100E48:  STR             R0, [R5,#0x10]
100E4A:  ADD.W           R0, R5, #0x14
100E4E:  VST1.32         {D16-D17}, [R0],R1
100E52:  MOV             R1, R4
100E54:  VST1.32         {D16-D17}, [R0]
100E58:  MOV             R0, R9
100E5A:  BL              sub_100E6E
100E5E:  MOVS            R0, #1
100E60:  STRB.W          R0, [R8,#4]
100E64:  STR.W           R5, [R8]
100E68:  POP.W           {R8-R10}
100E6C:  POP             {R4-R7,PC}
