; =========================================================
; Game Engine Function: sub_1070DE
; Address            : 0x1070DE - 0x1070FC
; =========================================================

1070DE:  PUSH            {R7,LR}
1070E0:  MOV             R7, SP
1070E2:  LDR             R0, [R0,#4]
1070E4:  LDR             R2, [R0,#0x5C]
1070E6:  LDR             R1, [R0]
1070E8:  LDR             R3, [R2,#0x14]
1070EA:  LDR.W           R12, [R1,#0x10]
1070EE:  ADDS            R3, #0x30 ; '0'
1070F0:  LDM             R3, {R1-R3}
1070F2:  BLX             R12
1070F4:  POP.W           {R7,LR}
1070F8:  B.W             sub_F88F8
