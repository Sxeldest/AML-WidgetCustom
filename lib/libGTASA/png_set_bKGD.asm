; =========================================================
; Game Engine Function: png_set_bKGD
; Address            : 0x2016C4 - 0x2016EE
; =========================================================

2016C4:  CMP             R0, #0
2016C6:  IT EQ
2016C8:  BXEQ            LR
2016CA:  CMP             R1, #0
2016CC:  IT NE
2016CE:  CMPNE           R2, #0
2016D0:  BEQ             locret_2016EC
2016D2:  LDR             R0, [R1,#8]
2016D4:  ADD.W           R3, R1, #0xAA
2016D8:  VLD1.16         {D16}, [R2]
2016DC:  ORR.W           R0, R0, #0x20 ; ' '
2016E0:  LDRH            R2, [R2,#8]
2016E2:  VST1.16         {D16}, [R3]
2016E6:  STRH.W          R2, [R1,#0xB2]
2016EA:  STR             R0, [R1,#8]
2016EC:  BX              LR
