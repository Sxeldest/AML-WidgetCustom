; =========================================================
; Game Engine Function: _ZN9CPathFind30CountNeighboursToBeSwitchedOffEP9CPathNode
; Address            : 0x3188A2 - 0x318910
; =========================================================

3188A2:  PUSH            {R4-R7,LR}
3188A4:  ADD             R7, SP, #0xC
3188A6:  PUSH.W          {R11}
3188AA:  LDRH            R2, [R1,#0x18]
3188AC:  ANDS.W          R2, R2, #0xF
3188B0:  BEQ             loc_318906
3188B2:  LDRH            R3, [R1,#0x12]
3188B4:  MOV.W           R12, #0xFFFFFFFF
3188B8:  LDRSH.W         R1, [R1,#0x10]
3188BC:  ADD.W           R3, R0, R3,LSL#2
3188C0:  LDR.W           R3, [R3,#0xA44]
3188C4:  ADD.W           LR, R3, R1,LSL#2
3188C8:  BIC.W           R3, R2, #0xFF000000
3188CC:  MOVS            R1, #0
3188CE:  MOVS            R2, #0
3188D0:  LDR.W           R4, [LR,R2,LSL#2]
3188D4:  UXTH            R5, R4
3188D6:  ADD.W           R5, R0, R5,LSL#2
3188DA:  LDR.W           R5, [R5,#0x804]
3188DE:  CBZ             R5, loc_3188FE
3188E0:  LSRS            R6, R4, #0x10
3188E2:  LSLS            R6, R6, #3
3188E4:  SUB.W           R4, R6, R4,LSR#16
3188E8:  ADD.W           R4, R5, R4,LSL#2
3188EC:  LDRB            R4, [R4,#0x1A]
3188EE:  LSLS            R4, R4, #0x10
3188F0:  ADD.W           R4, R12, R4,LSR#20
3188F4:  BIC.W           R4, R4, #0xFF000000
3188F8:  CMP             R4, #1
3188FA:  IT HI
3188FC:  ADDHI           R1, #1
3188FE:  ADDS            R2, #1
318900:  CMP             R2, R3
318902:  BLT             loc_3188D0
318904:  B               loc_318908
318906:  MOVS            R1, #0
318908:  MOV             R0, R1
31890A:  POP.W           {R11}
31890E:  POP             {R4-R7,PC}
