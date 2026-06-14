; =========================================================
; Game Engine Function: sub_F28CC
; Address            : 0xF28CC - 0xF2916
; =========================================================

F28CC:  PUSH            {R4-R7,LR}
F28CE:  ADD             R7, SP, #0xC
F28D0:  PUSH.W          {R8}
F28D4:  MOV             R5, R1
F28D6:  LDRB            R1, [R0,#0x14]
F28D8:  DMB.W           ISH
F28DC:  LSLS            R1, R1, #0x1F
F28DE:  BNE             loc_F2910
F28E0:  LDRD.W          R6, R4, [R0,#8]
F28E4:  CMP             R6, R4
F28E6:  BEQ             loc_F2910
F28E8:  MOV             R8, R2
F28EA:  LDR             R0, [R6]
F28EC:  LDRB            R1, [R0,#8]
F28EE:  DMB.W           ISH
F28F2:  LSLS            R1, R1, #0x1F
F28F4:  BEQ             loc_F290A
F28F6:  LDRB            R1, [R0,#9]
F28F8:  DMB.W           ISH
F28FC:  LSLS            R1, R1, #0x1F
F28FE:  BNE             loc_F290A
F2900:  LDR             R1, [R0]
F2902:  MOV             R2, R8
F2904:  LDR             R3, [R1,#0x10]
F2906:  MOV             R1, R5
F2908:  BLX             R3
F290A:  ADDS            R6, #8
F290C:  CMP             R6, R4
F290E:  BNE             loc_F28EA
F2910:  POP.W           {R8}
F2914:  POP             {R4-R7,PC}
