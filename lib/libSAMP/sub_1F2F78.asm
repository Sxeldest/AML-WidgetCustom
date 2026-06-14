; =========================================================
; Game Engine Function: sub_1F2F78
; Address            : 0x1F2F78 - 0x1F3004
; =========================================================

1F2F78:  PUSH            {R4-R7,LR}
1F2F7A:  ADD             R7, SP, #0xC
1F2F7C:  PUSH.W          {R8}
1F2F80:  MOV             R4, R0
1F2F82:  LDR             R0, [R0]
1F2F84:  LDR             R1, [R4,#4]
1F2F86:  ADDS            R6, R0, R1
1F2F88:  MOV             R0, R4
1F2F8A:  BL              sub_1F3004
1F2F8E:  CMP             R0, R6
1F2F90:  BEQ             loc_1F2FB4; jumptable 001F2F9C case 5
1F2F92:  MOV             R5, R0
1F2F94:  LDRB            R0, [R4,#0x10]
1F2F96:  SUBS            R0, #1; switch 5 cases
1F2F98:  CMP             R0, #4
1F2F9A:  BHI             def_1F2F9C; jumptable 001F2F9C default case, case 2
1F2F9C:  TBB.W           [PC,R0]; switch jump
1F2FA0:  DCB 3; jump table for switch statement
1F2FA1:  DCB 0x2F
1F2FA2:  DCB 0xF
1F2FA3:  DCB 0x17
1F2FA4:  DCB 0xA
1F2FA5:  ALIGN 2
1F2FA6:  MOV             R0, R5; jumptable 001F2F9C case 1
1F2FA8:  MOV             R1, R6
1F2FAA:  BL              sub_1F2F20
1F2FAE:  CBZ             R0, loc_1F2FBE; jumptable 001F2F9C case 3
1F2FB0:  MOVS            R1, #3
1F2FB2:  B               loc_1F2FC8
1F2FB4:  MOVS            R0, #6; jumptable 001F2F9C case 5
1F2FB6:  MOVS            R5, #0
1F2FB8:  STRB            R0, [R4,#0x10]
1F2FBA:  MOVS            R0, #0
1F2FBC:  B               loc_1F2FFA
1F2FBE:  MOV             R0, R5; jumptable 001F2F9C case 3
1F2FC0:  MOV             R1, R6
1F2FC2:  BL              sub_1F2F4C
1F2FC6:  MOVS            R1, #4
1F2FC8:  STRB            R1, [R4,#0x10]
1F2FCA:  SUBS            R0, R0, R5
1F2FCC:  B               loc_1F2FFA
1F2FCE:  MOV             R0, R5; jumptable 001F2F9C case 4
1F2FD0:  MOV             R1, R6
1F2FD2:  BL              sub_1F2F20
1F2FD6:  MOV             R8, R0
1F2FD8:  CMP             R0, R6
1F2FDA:  BEQ             loc_1F2FF2
1F2FDC:  MOV             R0, R8
1F2FDE:  MOV             R1, R6
1F2FE0:  BL              sub_1F2F4C
1F2FE4:  CBZ             R0, loc_1F2FF2
1F2FE6:  MOVS            R1, #4
1F2FE8:  SUB.W           R0, R0, R8
1F2FEC:  STRB            R1, [R4,#0x10]
1F2FEE:  MOV             R5, R8
1F2FF0:  B               loc_1F2FFA
1F2FF2:  MOVS            R0, #5
1F2FF4:  STRB            R0, [R4,#0x10]
1F2FF6:  SUB.W           R0, R8, R5
1F2FFA:  STRD.W          R5, R0, [R4,#8]
1F2FFE:  POP.W           {R8}; jumptable 001F2F9C default case, case 2
1F3002:  POP             {R4-R7,PC}
