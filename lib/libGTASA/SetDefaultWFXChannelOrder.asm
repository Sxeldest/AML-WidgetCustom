; =========================================================
; Game Engine Function: SetDefaultWFXChannelOrder
; Address            : 0x248A3C - 0x248B3C
; =========================================================

248A3C:  PUSH            {R4-R7,LR}
248A3E:  ADD             R7, SP, #0xC
248A40:  PUSH.W          {R8-R11}
248A44:  SUB             SP, SP, #4
248A46:  MOV             R4, R0
248A48:  ADD.W           R9, R4, #0xBC
248A4C:  MOVS            R1, #0x24 ; '$'
248A4E:  MOVS            R2, #0xFF
248A50:  MOV             R0, R9
248A52:  BLX             j___aeabi_memset8_0
248A56:  LDR             R6, [R4,#0x1C]
248A58:  MOV.W           R11, #3
248A5C:  MOV.W           R12, #5
248A60:  MOV.W           LR, #4
248A64:  SUB.W           R1, R6, #0x1500; switch 7 cases
248A68:  MOVS            R0, #1
248A6A:  MOV.W           R8, #0
248A6E:  MOVS            R2, #2
248A70:  CMP             R1, #6
248A72:  BHI             def_248A7C; jumptable 00248A7C default case
248A74:  MOV.W           R10, #1
248A78:  MOVS            R6, #0
248A7A:  MOVS            R3, #1
248A7C:  TBB.W           [PC,R1]; switch jump
248A80:  DCB 0x56; jump table for switch statement
248A81:  DCB 0x50
248A82:  DCB 0x5A
248A83:  DCB 0x48
248A84:  DCB 4
248A85:  DCB 0x20
248A86:  DCB 0x32
248A87:  ALIGN 2
248A88:  MOV.W           R12, #5; jumptable 00248A7C case 5380
248A8C:  MOV.W           LR, #4
248A90:  MOVS            R0, #3
248A92:  MOV.W           R8, #2
248A96:  MOVS            R1, #1
248A98:  MOVS            R3, #0
248A9A:  B               loc_248AB4
248A9C:  CMP.W           R6, #0x80000000; jumptable 00248A7C default case
248AA0:  BNE             loc_248B34; jumptable 00248A7C case 5378
248AA2:  MOV.W           R12, #8
248AA6:  MOV.W           LR, #7
248AAA:  MOVS            R3, #0
248AAC:  MOVS            R1, #1
248AAE:  MOV.W           R8, #2
248AB2:  MOVS            R0, #3
248AB4:  MOV.W           R10, #3
248AB8:  MOVS            R2, #4
248ABA:  MOV.W           R11, #5
248ABE:  B               loc_248B08
248AC0:  MOVS            R0, #0; jumptable 00248A7C case 5381
248AC2:  MOV.W           R12, #8
248AC6:  STR.W           R0, [R9]
248ACA:  MOVS            R2, #5
248ACC:  MOV.W           LR, #7
248AD0:  MOV.W           R10, #4
248AD4:  MOVS            R0, #6
248AD6:  MOV.W           R8, #3
248ADA:  MOVS            R1, #2
248ADC:  MOVS            R3, #1
248ADE:  MOV.W           R11, #6
248AE2:  B               loc_248B08
248AE4:  MOVS            R0, #1; jumptable 00248A7C case 5382
248AE6:  MOVS            R1, #0
248AE8:  STRD.W          R1, R0, [R4,#0xBC]
248AEC:  MOV.W           R12, #8
248AF0:  MOVS            R2, #6
248AF2:  MOV.W           LR, #7
248AF6:  MOVS            R0, #5
248AF8:  MOV.W           R8, #4
248AFC:  MOVS            R1, #3
248AFE:  MOVS            R3, #2
248B00:  MOV.W           R10, #5
248B04:  MOV.W           R11, #7
248B08:  STR.W           R3, [R9,R3,LSL#2]
248B0C:  STR.W           R1, [R9,R1,LSL#2]
248B10:  STR.W           R8, [R9,R8,LSL#2]; jumptable 00248A7C case 5379
248B14:  MOV             R8, LR
248B16:  MOV             R6, R2
248B18:  STR.W           R10, [R9,R0,LSL#2]
248B1C:  MOV             R0, R12
248B1E:  MOV             R3, R11
248B20:  ADD.W           R1, R4, R8,LSL#2; jumptable 00248A7C case 5377
248B24:  MOV             R2, R0
248B26:  MOV             R8, R3
248B28:  STR.W           R6, [R1,#0xBC]
248B2C:  ADD.W           R0, R4, R2,LSL#2; jumptable 00248A7C case 5376
248B30:  STR.W           R8, [R0,#0xBC]
248B34:  ADD             SP, SP, #4; jumptable 00248A7C case 5378
248B36:  POP.W           {R8-R11}
248B3A:  POP             {R4-R7,PC}
