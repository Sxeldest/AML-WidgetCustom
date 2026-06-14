; =========================================================
; Game Engine Function: sub_1F0FCC
; Address            : 0x1F0FCC - 0x1F101C
; =========================================================

1F0FCC:  PUSH            {R4,R5,R7,LR}
1F0FCE:  ADD             R7, SP, #8
1F0FD0:  MOV             R5, R2
1F0FD2:  MOV             R4, R0
1F0FD4:  CBZ             R3, loc_1F0FDC
1F0FD6:  MOV             R0, R3
1F0FD8:  BL              sub_1EE05A
1F0FDC:  LDRD.W          R3, R0, [R5,#0x50]
1F0FE0:  LDR             R1, =0x3B9ACA00
1F0FE2:  CMP.W           R3, #0xFFFFFFFF
1F0FE6:  BLE             loc_1F0FF6
1F0FE8:  UMULL.W         R2, R5, R3, R1
1F0FEC:  ASRS            R3, R3, #0x1F
1F0FEE:  MLA.W           R3, R3, R1, R5
1F0FF2:  ASRS            R1, R0, #0x1F
1F0FF4:  B               loc_1F1012
1F0FF6:  CMP             R0, #0
1F0FF8:  BEQ             loc_1F0FE8
1F0FFA:  ADDS            R2, R3, #1
1F0FFC:  UMULL.W         R5, R3, R2, R1
1F1000:  ASRS            R2, R2, #0x1F
1F1002:  MLA.W           R1, R2, R1, R3
1F1006:  LDR             R2, =0xC4653600
1F1008:  ASRS            R3, R0, #0x1F
1F100A:  ADDS            R2, R2, R0
1F100C:  SBC.W           R3, R3, #0
1F1010:  MOV             R0, R5
1F1012:  ADDS            R0, R0, R2
1F1014:  ADCS            R1, R3
1F1016:  STRD.W          R0, R1, [R4]
1F101A:  POP             {R4,R5,R7,PC}
