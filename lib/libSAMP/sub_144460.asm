; =========================================================
; Game Engine Function: sub_144460
; Address            : 0x144460 - 0x1444DC
; =========================================================

144460:  PUSH            {R4-R7,LR}
144462:  ADD             R7, SP, #0xC
144464:  PUSH.W          {R11}
144468:  SUB             SP, SP, #0x138
14446A:  MOV             R4, R0
14446C:  LDR.W           R0, [R0,#0x218]
144470:  CMP             R0, #5
144472:  BNE             loc_1444D4
144474:  ADD             R0, SP, #0x148+var_128
144476:  MOV             R5, R1
144478:  BL              sub_17D4A8
14447C:  MOV             R0, R5; char *
14447E:  MOV.W           R1, #0xFFFFFFFF; size_t
144482:  BLX             __strlen_chk
144486:  MOV             R6, R0
144488:  STR             R0, [SP,#0x148+var_14]
14448A:  ADD             R0, SP, #0x148+var_128
14448C:  ADD             R1, SP, #0x148+var_14
14448E:  MOVS            R2, #0x20 ; ' '
144490:  MOVS            R3, #1
144492:  BL              sub_17D628
144496:  ADD             R0, SP, #0x148+var_128
144498:  MOV             R1, R5
14449A:  MOV             R2, R6
14449C:  BL              sub_17D566
1444A0:  LDR.W           R0, [R4,#0x210]
1444A4:  MOVS            R3, #0
1444A6:  LDR             R1, =(off_234C64 - 0x1444AC)
1444A8:  ADD             R1, PC; off_234C64
1444AA:  LDR             R2, [R0]
1444AC:  LDR             R1, [R1]; unk_23C7B4
1444AE:  LDR             R6, [R2,#0x6C]
1444B0:  MOV.W           R12, #0xFFFFFFFF
1444B4:  MOVS            R4, #8
1444B6:  ADD             R2, SP, #0x148+var_128
1444B8:  MOVW            R5, #0xFFFF
1444BC:  STRD.W          R4, R3, [SP,#0x148+var_148]
1444C0:  STRD.W          R3, R12, [SP,#0x148+var_140]
1444C4:  STR             R3, [SP,#0x148+var_130]
1444C6:  MOVS            R3, #1
1444C8:  STRD.W          R5, R5, [SP,#0x148+var_138]
1444CC:  BLX             R6
1444CE:  ADD             R0, SP, #0x148+var_128
1444D0:  BL              sub_17D542
1444D4:  ADD             SP, SP, #0x138
1444D6:  POP.W           {R11}
1444DA:  POP             {R4-R7,PC}
