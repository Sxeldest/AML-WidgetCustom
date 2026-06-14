; =========================================================
; Game Engine Function: sub_E62C4
; Address            : 0xE62C4 - 0xE630E
; =========================================================

E62C4:  PUSH            {R4-R7,LR}
E62C6:  ADD             R7, SP, #0xC
E62C8:  PUSH.W          {R8}
E62CC:  SUB             SP, SP, #0x20
E62CE:  ADD.W           R8, SP, #0x30+var_28
E62D2:  MOV             R6, R1
E62D4:  MOV             R4, R0
E62D6:  MOV             R1, R2
E62D8:  MOV             R0, R8
E62DA:  MOV             R5, R3
E62DC:  BL              sub_E675C
E62E0:  LDR             R0, [R7,#arg_0]
E62E2:  STR             R0, [SP,#0x30+var_30]
E62E4:  MOV             R0, R4
E62E6:  MOV             R1, R6
E62E8:  MOV             R2, R8
E62EA:  MOV             R3, R5
E62EC:  BL              sub_E66C0
E62F0:  LDR             R0, [SP,#0x30+var_18]
E62F2:  CMP             R8, R0
E62F4:  BEQ             loc_E62FC
E62F6:  CBZ             R0, loc_E6306
E62F8:  MOVS            R1, #5
E62FA:  B               loc_E62FE
E62FC:  MOVS            R1, #4
E62FE:  LDR             R2, [R0]
E6300:  LDR.W           R1, [R2,R1,LSL#2]
E6304:  BLX             R1
E6306:  ADD             SP, SP, #0x20 ; ' '
E6308:  POP.W           {R8}
E630C:  POP             {R4-R7,PC}
