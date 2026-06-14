; =========================================================
; Game Engine Function: sub_1492FC
; Address            : 0x1492FC - 0x149332
; =========================================================

1492FC:  PUSH            {R4,R5,R7,LR}
1492FE:  ADD             R7, SP, #8
149300:  LDR.W           R1, [R0,#0x12C]
149304:  MOV             R4, R0
149306:  LDR             R5, =(off_234970 - 0x14930C)
149308:  ADD             R5, PC; off_234970
14930A:  CBZ             R1, loc_14931A
14930C:  LDR             R0, [R5]; dword_23DEF0
14930E:  LDR             R0, [R0]
149310:  BL              sub_F9A3C
149314:  MOVS            R0, #0
149316:  STR.W           R0, [R4,#0x12C]
14931A:  LDR.W           R1, [R4,#0x128]
14931E:  CBZ             R1, loc_14932E
149320:  LDR             R0, [R5]; dword_23DEF0
149322:  LDR             R0, [R0]
149324:  BL              sub_F9E64
149328:  MOVS            R0, #0
14932A:  STR.W           R0, [R4,#0x128]
14932E:  MOV             R0, R4
149330:  POP             {R4,R5,R7,PC}
