; =========================================================
; Game Engine Function: sub_F0708
; Address            : 0xF0708 - 0xF087C
; =========================================================

F0708:  PUSH            {R4-R7,LR}
F070A:  ADD             R7, SP, #0xC
F070C:  PUSH.W          {R8-R11}
F0710:  SUBS            R4, R1, R0
F0712:  MOV             R11, R0
F0714:  CMP             R4, #3
F0716:  BLT             loc_F073E
F0718:  LDR             R4, [R7,#arg_0]
F071A:  MOV             R11, R0
F071C:  ANDS.W          R4, R4, #4
F0720:  BEQ             loc_F073E
F0722:  LDRB            R4, [R0]
F0724:  MOV             R11, R0
F0726:  CMP             R4, #0xEF
F0728:  BNE             loc_F073E
F072A:  LDRB            R4, [R0,#1]
F072C:  MOV             R11, R0
F072E:  CMP             R4, #0xBB
F0730:  BNE             loc_F073E
F0732:  LDRB            R4, [R0,#2]
F0734:  MOV             R11, R0
F0736:  CMP             R4, #0xBF
F0738:  IT EQ
F073A:  ADDEQ.W         R11, R11, #3
F073E:  MOV.W           R10, #0
F0742:  MOV.W           R12, #0x1C0000
F0746:  B               loc_F0868
F0748:  LDRB.W          R6, [R11]
F074C:  CMP             R6, R3
F074E:  BHI.W           loc_F0872
F0752:  SXTB            R5, R6
F0754:  CMP             R5, #0
F0756:  BMI             loc_F075E
F0758:  ADD.W           R11, R11, #1
F075C:  B               loc_F0864
F075E:  CMP             R6, #0xC2
F0760:  BCC.W           loc_F0872
F0764:  CMP             R6, #0xDF
F0766:  BHI             loc_F0794
F0768:  SUB.W           R5, R1, R11
F076C:  CMP             R5, #2
F076E:  BLT.W           loc_F0872
F0772:  LDRB.W          R5, [R11,#1]
F0776:  AND.W           R4, R5, #0xC0
F077A:  CMP             R4, #0x80
F077C:  BNE             loc_F0872
F077E:  AND.W           R4, R6, #0x1F
F0782:  AND.W           R5, R5, #0x3F ; '?'
F0786:  ORR.W           R4, R5, R4,LSL#6
F078A:  CMP             R4, R3
F078C:  BHI             loc_F0872
F078E:  ADD.W           R11, R11, #2
F0792:  B               loc_F0864
F0794:  CMP             R6, #0xEF
F0796:  BHI             loc_F07BA
F0798:  SUB.W           R4, R1, R11
F079C:  CMP             R4, #3
F079E:  BLT             loc_F0872
F07A0:  LDRB.W          R8, [R11,#1]
F07A4:  CMP             R6, #0xED
F07A6:  LDRB.W          LR, [R11,#2]
F07AA:  BEQ             loc_F07EE
F07AC:  CMP             R6, #0xE0
F07AE:  BNE             loc_F07F4
F07B0:  AND.W           R4, R8, #0xE0
F07B4:  CMP             R4, #0xA0
F07B6:  BEQ             loc_F07FC
F07B8:  B               loc_F0872
F07BA:  CMP             R6, #0xF4
F07BC:  BHI             loc_F0872
F07BE:  SUB.W           R4, R1, R11
F07C2:  CMP             R4, #4
F07C4:  BLT             loc_F0872
F07C6:  SUB.W           R4, R2, R10
F07CA:  CMP             R4, #2
F07CC:  BCC             loc_F0872
F07CE:  LDRB.W          R9, [R11,#1]
F07D2:  CMP             R6, #0xF4
F07D4:  LDRB.W          R8, [R11,#2]
F07D8:  LDRB.W          LR, [R11,#3]
F07DC:  BEQ             loc_F0820
F07DE:  CMP             R6, #0xF0
F07E0:  BNE             loc_F0826
F07E2:  ADD.W           R4, R9, #0x70 ; 'p'
F07E6:  UXTB            R4, R4
F07E8:  CMP             R4, #0x30 ; '0'
F07EA:  BCC             loc_F082E
F07EC:  B               loc_F0872
F07EE:  AND.W           R4, R8, #0xE0
F07F2:  B               loc_F07F8
F07F4:  AND.W           R4, R8, #0xC0
F07F8:  CMP             R4, #0x80
F07FA:  BNE             loc_F0872
F07FC:  AND.W           R4, LR, #0xC0
F0800:  CMP             R4, #0x80
F0802:  BNE             loc_F0872
F0804:  LSLS            R5, R6, #0xC
F0806:  AND.W           R4, R8, #0x3F ; '?'
F080A:  UXTH            R5, R5
F080C:  ORR.W           R4, R5, R4,LSL#6
F0810:  AND.W           R5, LR, #0x3F ; '?'
F0814:  ADD             R4, R5
F0816:  CMP             R4, R3
F0818:  BHI             loc_F0872
F081A:  ADD.W           R11, R11, #3
F081E:  B               loc_F0864
F0820:  AND.W           R4, R9, #0xF0
F0824:  B               loc_F082A
F0826:  AND.W           R4, R9, #0xC0
F082A:  CMP             R4, #0x80
F082C:  BNE             loc_F0872
F082E:  AND.W           R4, R8, #0xC0
F0832:  CMP             R4, #0x80
F0834:  ITT EQ
F0836:  ANDEQ.W         R4, LR, #0xC0
F083A:  CMPEQ           R4, #0x80
F083C:  BNE             loc_F0872
F083E:  AND.W           R5, R9, #0x3F ; '?'
F0842:  AND.W           R4, R12, R6,LSL#18
F0846:  ORR.W           R4, R4, R5,LSL#12
F084A:  AND.W           R5, R8, #0x3F ; '?'
F084E:  ORR.W           R4, R4, R5,LSL#6
F0852:  AND.W           R5, LR, #0x3F ; '?'
F0856:  ADD             R4, R5
F0858:  CMP             R4, R3
F085A:  BHI             loc_F0872
F085C:  ADD.W           R11, R11, #4
F0860:  ADD.W           R10, R10, #1
F0864:  ADD.W           R10, R10, #1
F0868:  CMP             R11, R1
F086A:  IT CC
F086C:  CMPCC           R10, R2
F086E:  BCC.W           loc_F0748
F0872:  SUB.W           R0, R11, R0
F0876:  POP.W           {R8-R11}
F087A:  POP             {R4-R7,PC}
