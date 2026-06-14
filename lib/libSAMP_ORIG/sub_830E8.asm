; =========================================================
; Game Engine Function: sub_830E8
; Address            : 0x830E8 - 0x83112
; =========================================================

830E8:  PUSH            {R4,R5,R7,LR}
830EA:  ADD             R7, SP, #8
830EC:  MOV             R4, R0
830EE:  LDR             R0, [R0,#0x10]
830F0:  CBZ             R0, loc_8310E
830F2:  LDR             R1, [R0]
830F4:  LDR             R1, [R1,#0x18]
830F6:  BLX             R1
830F8:  LDR             R0, [R4,#0x10]
830FA:  CMP             R4, R0
830FC:  BEQ             loc_83104
830FE:  CBZ             R0, loc_8310E
83100:  MOVS            R1, #5
83102:  B               loc_83106
83104:  MOVS            R1, #4
83106:  LDR             R2, [R0]
83108:  LDR.W           R1, [R2,R1,LSL#2]
8310C:  BLX             R1
8310E:  MOV             R0, R4
83110:  POP             {R4,R5,R7,PC}
