; =========================================================
; Game Engine Function: SetDefaultChannelOrder
; Address            : 0x248B3C - 0x248C90
; =========================================================

248B3C:  PUSH            {R4-R7,LR}
248B3E:  ADD             R7, SP, #0xC
248B40:  PUSH.W          {R8-R11}
248B44:  SUB             SP, SP, #0xC
248B46:  MOV             R10, R0
248B48:  ADD.W           R5, R10, #0xBC
248B4C:  MOVS            R1, #0x24 ; '$'
248B4E:  MOVS            R2, #0xFF
248B50:  MOV             R0, R5
248B52:  BLX             j___aeabi_memset8_0
248B56:  LDR.W           R6, [R10,#0x1C]
248B5A:  MOVW            R0, #0x1504
248B5E:  CMP             R6, R0
248B60:  BEQ             loc_248B9A
248B62:  MOVW            R0, #0x1506
248B66:  CMP             R6, R0
248B68:  BNE             loc_248BD6
248B6A:  MOVS            R0, #1
248B6C:  MOVS            R1, #0
248B6E:  STRD.W          R1, R0, [R10,#0xBC]
248B72:  MOVS            R0, #8
248B74:  MOVS            R2, #4
248B76:  STR             R0, [SP,#0x28+var_24]
248B78:  MOVS            R0, #6
248B7A:  MOVS            R4, #7
248B7C:  MOV.W           R12, #3
248B80:  MOVS            R1, #5
248B82:  MOVS            R6, #2
248B84:  MOV.W           R11, #4
248B88:  MOV.W           R9, #2
248B8C:  STR             R2, [SP,#0x28+var_20]
248B8E:  MOV.W           R8, #3
248B92:  MOVS            R3, #5
248B94:  MOV.W           LR, #7
248B98:  B               loc_248BC0
248B9A:  MOVS            R0, #2
248B9C:  MOVS            R2, #3
248B9E:  STR             R0, [SP,#0x28+var_20]
248BA0:  MOVS            R3, #3
248BA2:  MOV.W           R8, #5
248BA6:  MOV.W           R9, #4
248BAA:  MOVS            R1, #1
248BAC:  MOV.W           R11, #0
248BB0:  MOVS            R6, #0
248BB2:  MOV.W           R12, #1
248BB6:  MOVS            R4, #2
248BB8:  MOVS            R0, #4
248BBA:  STR             R2, [SP,#0x28+var_24]
248BBC:  MOV.W           LR, #5
248BC0:  STR.W           R6, [R5,R11,LSL#2]
248BC4:  MOV             R6, R3
248BC6:  STR.W           R12, [R5,R1,LSL#2]
248BCA:  LDR             R1, [SP,#0x28+var_24]
248BCC:  B               loc_248C12; jumptable 00248C06 case 5379
248BCE:  ADD             SP, SP, #0xC
248BD0:  POP.W           {R8-R11}
248BD4:  POP             {R4-R7,PC}
248BD6:  MOV             R0, R5
248BD8:  MOVS            R1, #0x24 ; '$'
248BDA:  MOVS            R2, #0xFF
248BDC:  BLX             j___aeabi_memset8_0
248BE0:  SUB.W           R12, R6, #0x1500; switch 6 cases
248BE4:  MOV.W           LR, #3
248BE8:  MOVS            R1, #5
248BEA:  MOVS            R4, #4
248BEC:  MOV.W           R8, #1
248BF0:  MOV.W           R9, #0
248BF4:  MOVS            R0, #2
248BF6:  CMP.W           R12, #5
248BFA:  BHI             def_248C06; jumptable 00248C06 default case
248BFC:  MOVS            R6, #1
248BFE:  MOVS            R2, #0
248C00:  STR             R2, [SP,#0x28+var_20]
248C02:  MOVS            R3, #0
248C04:  MOVS            R2, #1
248C06:  TBB.W           [PC,R12]; switch jump
248C0A:  DCB 0x13; jump table for switch statement
248C0B:  DCB 0xD
248C0C:  DCB 3
248C0D:  DCB 4
248C0E:  DCB 3
248C0F:  DCB 0x18
248C10:  B               loc_248BCE; jumptable 00248C06 cases 5378,5380
248C12:  LDR             R2, [SP,#0x28+var_20]; jumptable 00248C06 case 5379
248C14:  MOV             R3, R0
248C16:  STR.W           R2, [R5,R9,LSL#2]
248C1A:  MOV             R9, R4
248C1C:  MOV             R2, LR
248C1E:  STR.W           R6, [R5,R8,LSL#2]
248C22:  MOV             R8, R1
248C24:  ADD.W           R0, R10, R9,LSL#2; jumptable 00248C06 case 5377
248C28:  MOV             R9, R2
248C2A:  STR.W           R3, [R0,#0xBC]
248C2E:  MOV             R0, R8
248C30:  ADD.W           R0, R10, R0,LSL#2; jumptable 00248C06 case 5376
248C34:  STR.W           R9, [R0,#0xBC]
248C38:  B               loc_248BCE
248C3A:  MOVS            R0, #0; jumptable 00248C06 case 5381
248C3C:  MOVS            R4, #7
248C3E:  STR             R0, [R5]
248C40:  MOVS            R0, #8
248C42:  STR             R0, [SP,#0x28+var_24]
248C44:  MOVS            R2, #3
248C46:  MOVS            R0, #5
248C48:  MOVS            R3, #4
248C4A:  MOV.W           R8, #6
248C4E:  MOV.W           R9, #3
248C52:  MOVS            R1, #2
248C54:  MOV.W           R11, #1
248C58:  MOVS            R6, #1
248C5A:  MOV.W           R12, #2
248C5E:  MOV.W           LR, #6
248C62:  STR             R2, [SP,#0x28+var_20]
248C64:  B               loc_248BC0
248C66:  CMP.W           R6, #0x80000000; jumptable 00248C06 default case
248C6A:  BNE             loc_248BCE
248C6C:  MOVS            R0, #8
248C6E:  MOVS            R4, #7
248C70:  STR             R0, [SP,#0x28+var_24]
248C72:  MOVS            R0, #2
248C74:  STR             R0, [SP,#0x28+var_20]
248C76:  MOV.W           R11, #0
248C7A:  MOVS            R6, #0
248C7C:  MOVS            R1, #1
248C7E:  MOV.W           R12, #1
248C82:  MOV.W           R9, #2
248C86:  MOV.W           R8, #3
248C8A:  MOVS            R3, #3
248C8C:  MOVS            R0, #4
248C8E:  B               loc_248BBC
