; =========================================================
; Game Engine Function: sub_265DE4
; Address            : 0x265DE4 - 0x265EE6
; =========================================================

265DE4:  PUSH            {R4-R7,LR}
265DE6:  ADD             R7, SP, #0xC
265DE8:  PUSH.W          {R8-R11}
265DEC:  SUB             SP, SP, #4
265DEE:  MOV             R4, R0
265DF0:  ADD.W           R9, R4, #0xBC
265DF4:  MOVS            R1, #0x24 ; '$'
265DF6:  MOVS            R2, #0xFF
265DF8:  MOV             R0, R9
265DFA:  BLX             j___aeabi_memset8_0
265DFE:  LDR             R6, [R4,#0x1C]
265E00:  MOV.W           R11, #3
265E04:  MOV.W           R12, #5
265E08:  MOV.W           LR, #4
265E0C:  SUB.W           R1, R6, #0x1500; switch 7 cases
265E10:  MOVS            R0, #1
265E12:  MOV.W           R8, #0
265E16:  MOVS            R2, #2
265E18:  CMP             R1, #6
265E1A:  BHI             def_265E24; jumptable 00265E24 default case
265E1C:  MOV.W           R10, #1
265E20:  MOVS            R6, #0
265E22:  MOVS            R3, #1
265E24:  TBB.W           [PC,R1]; switch jump
265E28:  DCB 0x56; jump table for switch statement
265E29:  DCB 0x50
265E2A:  DCB 0x5A
265E2B:  DCB 0x48
265E2C:  DCB 4
265E2D:  DCB 0x20
265E2E:  DCB 0x32
265E2F:  ALIGN 2
265E30:  MOV.W           R12, #5; jumptable 00265E24 case 5380
265E34:  MOV.W           LR, #4
265E38:  MOVS            R0, #3
265E3A:  MOV.W           R8, #2
265E3E:  MOVS            R1, #1
265E40:  MOVS            R3, #0
265E42:  B               loc_265E5C
265E44:  CMP.W           R6, #0x80000000; jumptable 00265E24 default case
265E48:  BNE             loc_265EDC; jumptable 00265E24 case 5378
265E4A:  MOV.W           R12, #8
265E4E:  MOV.W           LR, #7
265E52:  MOVS            R3, #0
265E54:  MOVS            R1, #1
265E56:  MOV.W           R8, #2
265E5A:  MOVS            R0, #3
265E5C:  MOV.W           R10, #3
265E60:  MOVS            R2, #4
265E62:  MOV.W           R11, #5
265E66:  B               loc_265EB0
265E68:  MOVS            R0, #0; jumptable 00265E24 case 5381
265E6A:  MOV.W           R12, #8
265E6E:  STR.W           R0, [R9]
265E72:  MOVS            R2, #5
265E74:  MOV.W           LR, #7
265E78:  MOV.W           R10, #4
265E7C:  MOVS            R0, #6
265E7E:  MOV.W           R8, #3
265E82:  MOVS            R1, #2
265E84:  MOVS            R3, #1
265E86:  MOV.W           R11, #6
265E8A:  B               loc_265EB0
265E8C:  MOVS            R0, #1; jumptable 00265E24 case 5382
265E8E:  MOVS            R1, #0
265E90:  STRD.W          R1, R0, [R4,#0xBC]
265E94:  MOV.W           R12, #8
265E98:  MOVS            R2, #6
265E9A:  MOV.W           LR, #7
265E9E:  MOVS            R0, #5
265EA0:  MOV.W           R8, #4
265EA4:  MOVS            R1, #3
265EA6:  MOVS            R3, #2
265EA8:  MOV.W           R10, #5
265EAC:  MOV.W           R11, #7
265EB0:  STR.W           R3, [R9,R3,LSL#2]
265EB4:  STR.W           R1, [R9,R1,LSL#2]
265EB8:  STR.W           R8, [R9,R8,LSL#2]; jumptable 00265E24 case 5379
265EBC:  MOV             R8, LR
265EBE:  MOV             R6, R2
265EC0:  STR.W           R10, [R9,R0,LSL#2]
265EC4:  MOV             R0, R12
265EC6:  MOV             R3, R11
265EC8:  ADD.W           R1, R4, R8,LSL#2; jumptable 00265E24 case 5377
265ECC:  MOV             R2, R0
265ECE:  MOV             R8, R3
265ED0:  STR.W           R6, [R1,#0xBC]
265ED4:  ADD.W           R0, R4, R2,LSL#2; jumptable 00265E24 case 5376
265ED8:  STR.W           R8, [R0,#0xBC]
265EDC:  MOVS            R0, #1; jumptable 00265E24 case 5378
265EDE:  ADD             SP, SP, #4
265EE0:  POP.W           {R8-R11}
265EE4:  POP             {R4-R7,PC}
