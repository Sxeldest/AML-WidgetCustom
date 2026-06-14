; =========================================================
; Game Engine Function: sub_17C7F0
; Address            : 0x17C7F0 - 0x17C812
; =========================================================

17C7F0:  SUB             SP, SP, #4
17C7F2:  PUSH            {R7,LR}
17C7F4:  MOV             R7, SP
17C7F6:  SUB             SP, SP, #4
17C7F8:  STR             R3, [R7,#8]
17C7FA:  LDR             R3, [R0]
17C7FC:  LDR.W           R12, [R3,#0xC8]
17C800:  ADD.W           R3, R7, #8
17C804:  STR             R3, [SP,#0x10+var_10]
17C806:  BLX             R12
17C808:  ADD             SP, SP, #4
17C80A:  POP.W           {R7,LR}
17C80E:  ADD             SP, SP, #4
17C810:  BX              LR
