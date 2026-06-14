; =========================================================
; Game Engine Function: sub_204BD0
; Address            : 0x204BD0 - 0x204BF2
; =========================================================

204BD0:  PUSH            {R4,R6,R7,LR}
204BD2:  ADD             R7, SP, #8
204BD4:  MOV             R4, R0
204BD6:  LDR             R2, =(loc_2056BC+1 - 0x204BE2)
204BD8:  LDR             R0, [R4]
204BDA:  MOV             R1, R4
204BDC:  LDR             R3, =(nullsub_7+1 - 0x204BE6)
204BDE:  ADD             R2, PC; loc_2056BC
204BE0:  LDR             R0, [R0]
204BE2:  ADD             R3, PC; nullsub_7
204BE4:  LDR             R0, [R0]
204BE6:  BLX             j_png_set_write_fn
204BEA:  MOV             R0, R4
204BEC:  POP.W           {R4,R6,R7,LR}
204BF0:  B               loc_204CF0
