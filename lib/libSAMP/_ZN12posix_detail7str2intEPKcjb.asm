; =========================================================
; Game Engine Function: _ZN12posix_detail7str2intEPKcjb
; Address            : 0x1E2A6C - 0x1E2AC4
; =========================================================

1E2A6C:  PUSH            {R4,R6,R7,LR}
1E2A6E:  ADD             R7, SP, #8
1E2A70:  MOV.W           R12, #0xA
1E2A74:  CMP             R2, #0
1E2A76:  IT NE
1E2A78:  MOVNE.W         R12, #0x10
1E2A7C:  MOV.W           LR, #0
1E2A80:  CBZ             R1, loc_1E2AC0
1E2A82:  LDRB            R3, [R0]
1E2A84:  SUB.W           R4, R3, #0x30 ; '0'
1E2A88:  CMP             R4, #9
1E2A8A:  BHI             loc_1E2A96
1E2A8C:  MLA.W           R3, LR, R12, R3
1E2A90:  SUB.W           LR, R3, #0x30 ; '0'
1E2A94:  B               loc_1E2ABA
1E2A96:  CBZ             R2, loc_1E2ABA
1E2A98:  SUB.W           R4, R3, #0x61 ; 'a'
1E2A9C:  CMP             R4, #5
1E2A9E:  BHI             loc_1E2AAA
1E2AA0:  ADD.W           R3, R3, LR,LSL#4
1E2AA4:  SUB.W           LR, R3, #0x57 ; 'W'
1E2AA8:  B               loc_1E2ABA
1E2AAA:  SUB.W           R4, R3, #0x41 ; 'A'
1E2AAE:  CMP             R4, #5
1E2AB0:  ITT LS
1E2AB2:  ADDLS.W         R3, R3, LR,LSL#4
1E2AB6:  SUBLS.W         LR, R3, #0x37 ; '7'
1E2ABA:  ADDS            R0, #1
1E2ABC:  SUBS            R1, #1
1E2ABE:  BNE             loc_1E2A82
1E2AC0:  MOV             R0, LR
1E2AC2:  POP             {R4,R6,R7,PC}
