; =========================================================
; Game Engine Function: sub_159A70
; Address            : 0x159A70 - 0x159B14
; =========================================================

159A70:  PUSH            {R4-R7,LR}
159A72:  ADD             R7, SP, #0xC
159A74:  PUSH.W          {R8-R10}
159A78:  LDR             R4, [R0,#4]
159A7A:  CMP             R4, #0
159A7C:  BEQ             loc_159B0A
159A7E:  MOV             R6, R0
159A80:  MOV.W           R0, #0x55555555
159A84:  AND.W           R0, R0, R4,LSR#1
159A88:  LDR             R5, [R1]
159A8A:  SUBS            R0, R4, R0
159A8C:  MOV.W           R1, #0x33333333
159A90:  AND.W           R1, R1, R0,LSR#2
159A94:  BIC.W           R0, R0, #0xCCCCCCCC
159A98:  ADD             R0, R1
159A9A:  MOV.W           R1, #0x1010101
159A9E:  ADD.W           R0, R0, R0,LSR#4
159AA2:  BIC.W           R0, R0, #0xF0F0F0F0
159AA6:  MULS            R0, R1
159AA8:  MOV.W           R9, R0,LSR#24
159AAC:  CMP.W           R9, #1
159AB0:  BHI             loc_159ABA
159AB2:  SUBS            R0, R4, #1
159AB4:  AND.W           R8, R0, R5
159AB8:  B               loc_159ACA
159ABA:  CMP             R5, R4
159ABC:  MOV             R8, R5
159ABE:  BCC             loc_159ACA
159AC0:  MOV             R0, R5
159AC2:  MOV             R1, R4
159AC4:  BLX             sub_221798
159AC8:  MOV             R8, R1
159ACA:  LDR             R0, [R6]
159ACC:  LDR.W           R0, [R0,R8,LSL#2]
159AD0:  CBZ             R0, loc_159B0A
159AD2:  LDR             R6, [R0]
159AD4:  CBZ             R6, loc_159B0A
159AD6:  SUB.W           R10, R4, #1
159ADA:  LDR             R0, [R6,#4]
159ADC:  CMP             R5, R0
159ADE:  BNE             loc_159AE8
159AE0:  LDR             R0, [R6,#8]
159AE2:  CMP             R0, R5
159AE4:  BNE             loc_159B04
159AE6:  B               loc_159B0C
159AE8:  CMP.W           R9, #1
159AEC:  BHI             loc_159AF4
159AEE:  AND.W           R0, R0, R10
159AF2:  B               loc_159B00
159AF4:  CMP             R0, R4
159AF6:  BCC             loc_159B00
159AF8:  MOV             R1, R4
159AFA:  BLX             sub_221798
159AFE:  MOV             R0, R1
159B00:  CMP             R0, R8
159B02:  BNE             loc_159B0A
159B04:  LDR             R6, [R6]
159B06:  CMP             R6, #0
159B08:  BNE             loc_159ADA
159B0A:  MOVS            R6, #0
159B0C:  MOV             R0, R6
159B0E:  POP.W           {R8-R10}
159B12:  POP             {R4-R7,PC}
