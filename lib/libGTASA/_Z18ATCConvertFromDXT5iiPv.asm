; =========================================================
; Game Engine Function: _Z18ATCConvertFromDXT5iiPv
; Address            : 0x1CB5FC - 0x1CB718
; =========================================================

1CB5FC:  PUSH            {R4-R7,LR}
1CB5FE:  ADD             R7, SP, #0xC
1CB600:  PUSH.W          {R8-R11}
1CB604:  ASRS            R3, R0, #0x1F
1CB606:  ADD.W           R3, R0, R3,LSR#30
1CB60A:  ADDS            R0, #3
1CB60C:  CMP             R0, #7
1CB60E:  MOV.W           R0, R1,ASR#31
1CB612:  ADD.W           R0, R1, R0,LSR#30
1CB616:  MOV.W           R3, R3,ASR#2
1CB61A:  ADD.W           R1, R1, #3
1CB61E:  IT CC
1CB620:  MOVCC           R3, #1
1CB622:  ASRS            R0, R0, #2
1CB624:  CMP             R1, #7
1CB626:  IT CC
1CB628:  MOVCC           R0, #1
1CB62A:  MUL.W           R8, R0, R3
1CB62E:  CMP.W           R8, #1
1CB632:  BLT             loc_1CB712
1CB634:  ADD.W           R1, R2, #8
1CB638:  LDR             R2, =(unk_5E87E8 - 0x1CB646)
1CB63A:  MOVW            R12, #0x7FE0
1CB63E:  MOV.W           LR, #0xC
1CB642:  ADD             R2, PC; unk_5E87E8
1CB644:  LDRB            R5, [R1,#4]
1CB646:  SUBS.W          R8, R8, #1
1CB64A:  LDRB            R6, [R1,#5]
1CB64C:  AND.W           R0, R5, #0xC
1CB650:  LDRB.W          R10, [R1,#6]
1CB654:  LDRB            R4, [R1,#7]
1CB656:  LDR.W           R9, [R2,R0]
1CB65A:  LDRH            R0, [R1]
1CB65C:  AND.W           R3, R12, R0,LSR#1
1CB660:  AND.W           R0, R0, #0x1F
1CB664:  ORR.W           R0, R0, R3
1CB668:  AND.W           R3, LR, R5,LSR#2
1CB66C:  STRH            R0, [R1]
1CB66E:  AND.W           R0, R5, #3
1CB672:  LDR             R3, [R2,R3]
1CB674:  LDR.W           R0, [R2,R0,LSL#2]
1CB678:  ORR.W           R0, R0, R9,LSL#2
1CB67C:  ORR.W           R0, R0, R3,LSL#4
1CB680:  UBFX.W          R3, R5, #6, #2
1CB684:  AND.W           R5, LR, R4,LSR#2
1CB688:  LDR.W           R3, [R2,R3,LSL#2]
1CB68C:  LDR             R5, [R2,R5]
1CB68E:  ORR.W           R0, R0, R3,LSL#6
1CB692:  STRB            R0, [R1,#4]
1CB694:  AND.W           R0, R6, #0xC
1CB698:  AND.W           R3, R6, #3
1CB69C:  LDR             R0, [R2,R0]
1CB69E:  LDR.W           R3, [R2,R3,LSL#2]
1CB6A2:  ORR.W           R0, R3, R0,LSL#2
1CB6A6:  AND.W           R3, LR, R6,LSR#2
1CB6AA:  LDR             R3, [R2,R3]
1CB6AC:  ORR.W           R0, R0, R3,LSL#4
1CB6B0:  UBFX.W          R3, R6, #6, #2
1CB6B4:  AND.W           R6, R4, #0xC
1CB6B8:  LDR.W           R3, [R2,R3,LSL#2]
1CB6BC:  LDR             R6, [R2,R6]
1CB6BE:  ORR.W           R0, R0, R3,LSL#6
1CB6C2:  STRB            R0, [R1,#5]
1CB6C4:  AND.W           R0, R10, #0xC
1CB6C8:  AND.W           R3, R10, #3
1CB6CC:  LDR             R0, [R2,R0]
1CB6CE:  LDR.W           R3, [R2,R3,LSL#2]
1CB6D2:  ORR.W           R11, R3, R0,LSL#2
1CB6D6:  UBFX.W          R3, R4, #6, #2
1CB6DA:  AND.W           R0, LR, R10,LSR#2
1CB6DE:  AND.W           R4, R4, #3
1CB6E2:  LDR.W           R9, [R2,R3,LSL#2]
1CB6E6:  UBFX.W          R3, R10, #6, #2
1CB6EA:  LDR             R0, [R2,R0]
1CB6EC:  LDR.W           R3, [R2,R3,LSL#2]
1CB6F0:  LDR.W           R4, [R2,R4,LSL#2]
1CB6F4:  ORR.W           R0, R11, R0,LSL#4
1CB6F8:  ORR.W           R0, R0, R3,LSL#6
1CB6FC:  STRB            R0, [R1,#6]
1CB6FE:  ORR.W           R0, R4, R6,LSL#2
1CB702:  ORR.W           R0, R0, R5,LSL#4
1CB706:  ORR.W           R0, R0, R9,LSL#6
1CB70A:  STRB            R0, [R1,#7]
1CB70C:  ADD.W           R1, R1, #0x10
1CB710:  BNE             loc_1CB644
1CB712:  POP.W           {R8-R11}
1CB716:  POP             {R4-R7,PC}
