; =========================================================
; Game Engine Function: _ZN11CMenuSystem17InsertOneMenuItemEhhhPc
; Address            : 0x43D670 - 0x43D710
; =========================================================

43D670:  PUSH            {R4-R7,LR}
43D672:  ADD             R7, SP, #0xC
43D674:  PUSH.W          {R11}
43D678:  MOV             R4, R0
43D67A:  LDR             R0, =(MenuNumber_ptr - 0x43D684)
43D67C:  MOV             R6, R1
43D67E:  MOV             R5, R2
43D680:  ADD             R0, PC; MenuNumber_ptr
43D682:  RSB.W           R1, R6, R6,LSL#4
43D686:  CMP             R3, #0
43D688:  LDR             R0, [R0]; MenuNumber
43D68A:  LDR.W           R0, [R0,R4,LSL#2]
43D68E:  ADD.W           R0, R0, R1,LSL#3
43D692:  ADD.W           R1, R5, R5,LSL#2
43D696:  ADD.W           R0, R0, R1,LSL#1
43D69A:  ADD.W           R0, R0, #0x41 ; 'A'; char *
43D69E:  BEQ             loc_43D6A8
43D6A0:  MOV             R1, R3; char *
43D6A2:  BLX             strcpy
43D6A6:  B               loc_43D6AC
43D6A8:  MOVS            R1, #0
43D6AA:  STRB            R1, [R0]
43D6AC:  LDR             R0, =(MenuNumber_ptr - 0x43D6BA)
43D6AE:  ADD.W           R2, R6, R6,LSL#1
43D6B2:  MOV.W           R3, #0xFFFFFFFF
43D6B6:  ADD             R0, PC; MenuNumber_ptr
43D6B8:  LDR             R0, [R0]; MenuNumber
43D6BA:  LDR.W           R1, [R0,R4,LSL#2]
43D6BE:  ADD.W           R1, R1, R2,LSL#4
43D6C2:  ADD.W           R1, R1, R5,LSL#2
43D6C6:  STR.W           R3, [R1,#0x224]
43D6CA:  LDR.W           R1, [R0,R4,LSL#2]
43D6CE:  ADD.W           R1, R1, R2,LSL#4
43D6D2:  LDR             R2, =(MenuNumber_ptr - 0x43D6DC)
43D6D4:  ADD.W           R1, R1, R5,LSL#2
43D6D8:  ADD             R2, PC; MenuNumber_ptr
43D6DA:  STR.W           R3, [R1,#0x2E4]
43D6DE:  LDR.W           R1, [R0,R4,LSL#2]
43D6E2:  MOVS            R0, #0
43D6E4:  LDR             R2, [R2]; MenuNumber
43D6E6:  STRB.W          R0, [R1,#0x3F6]
43D6EA:  MOVS            R1, #0x41 ; 'A'
43D6EC:  LDR.W           R3, [R2,R4,LSL#2]
43D6F0:  ADDS            R0, #1
43D6F2:  LDRB            R6, [R3,R1]
43D6F4:  ADDS            R1, #0xA
43D6F6:  CMP             R6, #0
43D6F8:  ITTTT NE
43D6FA:  LDRBNE.W        R6, [R3,#0x3F6]
43D6FE:  ADDNE           R0, R6
43D700:  STRBNE.W        R0, [R3,#0x3F6]
43D704:  MOVNE           R0, #0
43D706:  CMP             R1, #0xB9
43D708:  BNE             loc_43D6EC
43D70A:  POP.W           {R11}
43D70E:  POP             {R4-R7,PC}
