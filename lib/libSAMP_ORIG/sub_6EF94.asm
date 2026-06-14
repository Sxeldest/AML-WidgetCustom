; =========================================================
; Game Engine Function: sub_6EF94
; Address            : 0x6EF94 - 0x6F00E
; =========================================================

6EF94:  PUSH            {R7,LR}
6EF96:  MOV             R7, SP
6EF98:  LDR             R3, [R1,#0x10]
6EF9A:  LDRB.W          R12, [R3]
6EF9E:  SUB.W           LR, R12, #0x5B ; '['; switch 33 cases
6EFA2:  CMP.W           LR, #0x20 ; ' '
6EFA6:  BHI             def_6EFA8; jumptable 0006EFA8 default case
6EFA8:  TBB.W           [PC,LR]; switch jump
6EFAC:  DCB 0x11; jump table for switch statement
6EFAD:  DCB 0x1D
6EFAE:  DCB 0x1D
6EFAF:  DCB 0x1D
6EFB0:  DCB 0x1D
6EFB1:  DCB 0x1D
6EFB2:  DCB 0x1D
6EFB3:  DCB 0x1D
6EFB4:  DCB 0x1D
6EFB5:  DCB 0x1D
6EFB6:  DCB 0x1D
6EFB7:  DCB 0x21
6EFB8:  DCB 0x1D
6EFB9:  DCB 0x1D
6EFBA:  DCB 0x1D
6EFBB:  DCB 0x1D
6EFBC:  DCB 0x1D
6EFBD:  DCB 0x1D
6EFBE:  DCB 0x1D
6EFBF:  DCB 0x25
6EFC0:  DCB 0x1D
6EFC1:  DCB 0x1D
6EFC2:  DCB 0x1D
6EFC3:  DCB 0x1D
6EFC4:  DCB 0x1D
6EFC5:  DCB 0x29
6EFC6:  DCB 0x1D
6EFC7:  DCB 0x1D
6EFC8:  DCB 0x1D
6EFC9:  DCB 0x1D
6EFCA:  DCB 0x1D
6EFCB:  DCB 0x1D
6EFCC:  DCB 0x2D
6EFCD:  ALIGN 2
6EFCE:  POP.W           {R7,LR}; jumptable 0006EFA8 case 91
6EFD2:  B.W             sub_6FE4C
6EFD6:  CMP.W           R12, #0x22 ; '"'; jumptable 0006EFA8 default case
6EFDA:  BNE             loc_6EFE6; jumptable 0006EFA8 cases 92-101,103-109,111-115,117-122
6EFDC:  MOVS            R3, #0
6EFDE:  POP.W           {R7,LR}
6EFE2:  B.W             sub_6F598
6EFE6:  POP.W           {R7,LR}; jumptable 0006EFA8 cases 92-101,103-109,111-115,117-122
6EFEA:  B.W             sub_70140
6EFEE:  POP.W           {R7,LR}; jumptable 0006EFA8 case 102
6EFF2:  B.W             sub_6F3A8
6EFF6:  POP.W           {R7,LR}; jumptable 0006EFA8 case 110
6EFFA:  B.W             sub_6F07A
6EFFE:  POP.W           {R7,LR}; jumptable 0006EFA8 case 116
6F002:  B.W             sub_6F20E
6F006:  POP.W           {R7,LR}; jumptable 0006EFA8 case 123
6F00A:  B.W             sub_6FA18
