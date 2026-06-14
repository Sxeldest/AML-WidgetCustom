; =========================================================
; Game Engine Function: sub_1485F0
; Address            : 0x1485F0 - 0x14865C
; =========================================================

1485F0:  PUSH            {R4-R7,LR}
1485F2:  ADD             R7, SP, #0xC
1485F4:  PUSH.W          {R8-R10}
1485F8:  LDR             R4, =(dword_381A04 - 0x148600)
1485FA:  MOV             R5, R0
1485FC:  ADD             R4, PC; dword_381A04
1485FE:  LDR             R0, [R4]
148600:  CBNZ            R0, loc_148608
148602:  BL              sub_F0B30
148606:  STR             R0, [R4]
148608:  BL              sub_F0B30
14860C:  MOV             R8, R0
14860E:  LDR             R0, [R4]
148610:  VLDR            S2, =1000.0
148614:  MOV             R10, R4
148616:  SUB.W           R0, R8, R0
14861A:  ADD.W           R4, R5, #0x3EC
14861E:  MOVW            R9, #0xFC18
148622:  MOVS            R6, #0
148624:  VMOV            S0, R0
148628:  MOVT            R9, #0xFFFF
14862C:  VCVT.F32.U32    S0, S0
148630:  VDIV.F32        S0, S0, S2
148634:  VMOV            R5, S0
148638:  ADDS            R0, R4, R6
14863A:  LDRB.W          R0, [R0,R9]
14863E:  CBZ             R0, loc_14864A
148640:  LDR.W           R0, [R4,R6,LSL#2]
148644:  MOV             R1, R5
148646:  BL              sub_101BA0
14864A:  ADDS            R6, #1
14864C:  CMP.W           R6, #0x3E8
148650:  BNE             loc_148638
148652:  STR.W           R8, [R10]
148656:  POP.W           {R8-R10}
14865A:  POP             {R4-R7,PC}
