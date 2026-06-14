; =========================================================
; Game Engine Function: sub_10D85C
; Address            : 0x10D85C - 0x10D8EE
; =========================================================

10D85C:  PUSH            {R4-R7,LR}
10D85E:  ADD             R7, SP, #0xC
10D860:  PUSH.W          {R11}
10D864:  LDR             R0, =(off_23494C - 0x10D874)
10D866:  MOV             R6, #0xA1B930
10D86E:  MOVS            R5, #0
10D870:  ADD             R0, PC; off_23494C
10D872:  MOV.W           R1, #0x120; n
10D876:  LDR             R4, [R0]; dword_23DF24
10D878:  LDR             R0, [R4]
10D87A:  ADD             R0, R6
10D87C:  STR.W           R5, [R0,#0x698]
10D880:  LDR             R0, [R4]
10D882:  ADD             R0, R6; int
10D884:  BLX             sub_22178C
10D888:  LDR             R0, [R4]
10D88A:  MOV.W           R1, #0x578; n
10D88E:  ADD             R0, R6
10D890:  ADD.W           R0, R0, #0x120; int
10D894:  BLX             sub_22178C
10D898:  LDR             R0, [R4]
10D89A:  MOV             R1, #0xA16968
10D8A2:  MOV             R6, #0xA15D6C
10D8AA:  STR             R5, [R0,R1]
10D8AC:  LDR             R0, [R4]
10D8AE:  ADD             R0, R6
10D8B0:  STR             R5, [R0,#4]
10D8B2:  LDR             R0, [R4]
10D8B4:  STR             R5, [R0,R6]
10D8B6:  LDR             R0, [R4]
10D8B8:  ADD             R0, R1
10D8BA:  MOVW            R1, #0x4FC4; n
10D8BE:  ADDS            R0, #4; int
10D8C0:  BLX             sub_22178C
10D8C4:  LDR             R0, [R4]
10D8C6:  MOVW            R1, #0xBC2; n
10D8CA:  ADD             R0, R6
10D8CC:  ADDS            R0, #0x38 ; '8'; int
10D8CE:  BLX             sub_22178C
10D8D2:  LDR             R0, [R4]
10D8D4:  VMOV.I32        Q8, #0
10D8D8:  ADD             R0, R6
10D8DA:  ADDS            R0, #8
10D8DC:  VST1.8          {D16-D17}, [R0]!
10D8E0:  VST1.8          {D16-D17}, [R0]!
10D8E4:  VST1.8          {D16-D17}, [R0]
10D8E8:  POP.W           {R11}
10D8EC:  POP             {R4-R7,PC}
