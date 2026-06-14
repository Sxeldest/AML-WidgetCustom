; =========================================================
; Game Engine Function: png_get_sCAL
; Address            : 0x1F3CD0 - 0x1F3D22
; =========================================================

1F3CD0:  PUSH            {R4-R7,LR}
1F3CD2:  ADD             R7, SP, #0xC
1F3CD4:  PUSH.W          {R11}
1F3CD8:  MOV             R5, R1
1F3CDA:  MOV             R1, R0
1F3CDC:  CMP             R1, #0
1F3CDE:  MOV             R4, R3
1F3CE0:  MOV.W           R0, #0
1F3CE4:  IT NE
1F3CE6:  CMPNE           R5, #0
1F3CE8:  BEQ             loc_1F3D1C
1F3CEA:  LDRB            R0, [R5,#9]
1F3CEC:  LSLS            R0, R0, #0x19
1F3CEE:  BMI             loc_1F3CF8
1F3CF0:  MOVS            R0, #0
1F3CF2:  POP.W           {R11}
1F3CF6:  POP             {R4-R7,PC}
1F3CF8:  LDRB.W          R0, [R5,#0x108]
1F3CFC:  STR             R0, [R2]
1F3CFE:  LDR.W           R0, [R5,#0x10C]; char *
1F3D02:  LDR             R6, [R7,#arg_0]
1F3D04:  BLX             atof
1F3D08:  STRD.W          R0, R1, [R4]
1F3D0C:  LDR.W           R0, [R5,#0x110]; char *
1F3D10:  BLX             atof
1F3D14:  STRD.W          R0, R1, [R6]
1F3D18:  MOV.W           R0, #0x4000
1F3D1C:  POP.W           {R11}
1F3D20:  POP             {R4-R7,PC}
