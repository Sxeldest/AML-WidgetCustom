; =========================================================
; Game Engine Function: sub_1487C6
; Address            : 0x1487C6 - 0x148820
; =========================================================

1487C6:  PUSH            {R4,R5,R7,LR}
1487C8:  ADD             R7, SP, #8
1487CA:  MOV             R4, R0
1487CC:  MOV             R0, #0x23004
1487D4:  MOV.W           R1, #0xFFFFFFFF
1487D8:  STR             R1, [R4,R0]
1487DA:  MOVW            R0, #0xF004
1487DE:  ADD             R0, R4; int
1487E0:  MOV.W           R1, #0x14000; n
1487E4:  BLX             sub_22178C
1487E8:  MOV             R0, R4; int
1487EA:  MOVW            R1, #0x4004; n
1487EE:  MOVW            R5, #0x4004
1487F2:  BLX             sub_22178C
1487F6:  ADDS            R0, R4, R5; int
1487F8:  MOV.W           R1, #0x4000; n
1487FC:  MOVS            R2, #0xFF; c
1487FE:  BLX             sub_22177C
148802:  MOVW            R0, #0x8004
148806:  VMOV.I32        Q8, #0
14880A:  ADD             R0, R4
14880C:  MOVS            R1, #0
14880E:  ADDS            R2, R0, R1
148810:  ADDS            R1, #0x10
148812:  CMP.W           R1, #0x4000
148816:  VST1.32         {D16-D17}, [R2]
14881A:  BNE             loc_14880E
14881C:  MOV             R0, R4
14881E:  POP             {R4,R5,R7,PC}
