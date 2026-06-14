; =========================================================
; Game Engine Function: png_fixed_error
; Address            : 0x1F2E84 - 0x1F2ED0
; =========================================================

1F2E84:  PUSH            {R4,R6,R7,LR}
1F2E86:  ADD             R7, SP, #8
1F2E88:  SUB             SP, SP, #0xE0
1F2E8A:  MOV             LR, R1
1F2E8C:  LDR             R1, =(aFixedPointOver_0 - 0x1F2E9A); "fixed point overflow in "
1F2E8E:  MOV.W           R12, #0
1F2E92:  CMP.W           LR, #0
1F2E96:  ADD             R1, PC; "fixed point overflow in "
1F2E98:  VLD1.64         {D16-D17}, [R1]!
1F2E9C:  VLDR            D18, [R1]
1F2EA0:  MOV             R1, SP
1F2EA2:  MOV             R2, R1
1F2EA4:  VST1.64         {D16-D17}, [R2]!
1F2EA8:  VSTR            D18, [R2]
1F2EAC:  BEQ             loc_1F2ECC
1F2EAE:  ADD.W           R2, R1, #0x18
1F2EB2:  MOVS            R3, #0
1F2EB4:  LDRB.W          R4, [LR,R3]
1F2EB8:  CBZ             R4, loc_1F2EC2
1F2EBA:  STRB            R4, [R2,R3]
1F2EBC:  ADDS            R3, #1
1F2EBE:  CMP             R3, #0xC3
1F2EC0:  BCC             loc_1F2EB4
1F2EC2:  ADDS            R2, R1, R3
1F2EC4:  STRB.W          R12, [R2,#0x18]
1F2EC8:  BLX             j_png_error
1F2ECC:  MOVS            R3, #0
1F2ECE:  B               loc_1F2EC2
