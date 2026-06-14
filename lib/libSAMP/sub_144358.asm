; =========================================================
; Game Engine Function: sub_144358
; Address            : 0x144358 - 0x1443D8
; =========================================================

144358:  PUSH            {R4-R7,LR}
14435A:  ADD             R7, SP, #0xC
14435C:  PUSH.W          {R11}
144360:  SUB             SP, SP, #0x138
144362:  MOV             R4, R0
144364:  LDR.W           R0, [R0,#0x218]
144368:  CMP             R0, #5
14436A:  BNE             loc_1443D0
14436C:  ADD             R0, SP, #0x148+var_128
14436E:  MOV             R5, R1
144370:  BL              sub_17D4A8
144374:  MOV             R0, R5; char *
144376:  MOV.W           R1, #0xFFFFFFFF; size_t
14437A:  BLX             __strlen_chk
14437E:  MOV             R6, R0
144380:  STRB.W          R0, [R7,#var_11]
144384:  ADD             R0, SP, #0x148+var_128
144386:  SUB.W           R1, R7, #-var_11
14438A:  MOVS            R2, #8
14438C:  MOVS            R3, #1
14438E:  BL              sub_17D628
144392:  ADD             R0, SP, #0x148+var_128
144394:  UXTB            R2, R6
144396:  MOV             R1, R5
144398:  BL              sub_17D566
14439C:  LDR.W           R0, [R4,#0x210]
1443A0:  MOVS            R3, #0
1443A2:  LDR             R1, =(off_234C60 - 0x1443A8)
1443A4:  ADD             R1, PC; off_234C60
1443A6:  LDR             R2, [R0]
1443A8:  LDR             R1, [R1]; unk_23C754
1443AA:  LDR             R6, [R2,#0x6C]
1443AC:  MOV.W           R12, #0xFFFFFFFF
1443B0:  MOVS            R4, #8
1443B2:  ADD             R2, SP, #0x148+var_128
1443B4:  MOVW            R5, #0xFFFF
1443B8:  STRD.W          R4, R3, [SP,#0x148+var_148]
1443BC:  STRD.W          R3, R12, [SP,#0x148+var_140]
1443C0:  STR             R3, [SP,#0x148+var_130]
1443C2:  MOVS            R3, #1
1443C4:  STRD.W          R5, R5, [SP,#0x148+var_138]
1443C8:  BLX             R6
1443CA:  ADD             R0, SP, #0x148+var_128
1443CC:  BL              sub_17D542
1443D0:  ADD             SP, SP, #0x138
1443D2:  POP.W           {R11}
1443D6:  POP             {R4-R7,PC}
