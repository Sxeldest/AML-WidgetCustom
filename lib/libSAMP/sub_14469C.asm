; =========================================================
; Game Engine Function: sub_14469C
; Address            : 0x14469C - 0x144708
; =========================================================

14469C:  PUSH            {R4-R7,LR}
14469E:  ADD             R7, SP, #0xC
1446A0:  PUSH.W          {R11}
1446A4:  SUB             SP, SP, #0x120
1446A6:  MOV             R4, R0
1446A8:  ADD             R0, SP, #0x130+var_128
1446AA:  MOV             R5, R1
1446AC:  BL              sub_17D4A8
1446B0:  MOVS            R1, #0xDC
1446B2:  STRB.W          R1, [R7,#var_11]
1446B6:  SUB.W           R1, R7, #-var_11
1446BA:  MOVS            R2, #8
1446BC:  MOVS            R3, #1
1446BE:  MOVS            R6, #1
1446C0:  BL              sub_17D628
1446C4:  STRB.W          R6, [R7,#var_11]
1446C8:  ADD             R0, SP, #0x130+var_128
1446CA:  SUB.W           R1, R7, #-var_11
1446CE:  MOVS            R2, #8
1446D0:  MOVS            R3, #1
1446D2:  BL              sub_17D628
1446D6:  CBZ             R5, loc_1446E0
1446D8:  ADD             R0, SP, #0x130+var_128
1446DA:  BL              sub_17D84A
1446DE:  B               loc_1446E6
1446E0:  ADD             R0, SP, #0x130+var_128
1446E2:  BL              sub_17D828
1446E6:  LDR.W           R0, [R4,#0x210]
1446EA:  LDR             R1, [R0]
1446EC:  LDR             R6, [R1,#0x20]
1446EE:  MOVS            R1, #6
1446F0:  MOVS            R2, #2
1446F2:  STR             R1, [SP,#0x130+var_130]
1446F4:  ADD             R1, SP, #0x130+var_128
1446F6:  MOVS            R3, #9
1446F8:  BLX             R6
1446FA:  ADD             R0, SP, #0x130+var_128
1446FC:  BL              sub_17D542
144700:  ADD             SP, SP, #0x120
144702:  POP.W           {R11}
144706:  POP             {R4-R7,PC}
