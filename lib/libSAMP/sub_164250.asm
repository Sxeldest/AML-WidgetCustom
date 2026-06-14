; =========================================================
; Game Engine Function: sub_164250
; Address            : 0x164250 - 0x1642C2
; =========================================================

164250:  PUSH            {R4-R7,LR}
164252:  ADD             R7, SP, #0xC
164254:  PUSH.W          {R8,R9,R11}
164258:  MOV             R4, R0
16425A:  MOVW            R0, #0xFFF
16425E:  BIC.W           R0, R4, R0; addr
164262:  MOV             R8, R2
164264:  MOV             R5, R1
164266:  MOV.W           R1, #0x1000; len
16426A:  MOVS            R2, #3; prot
16426C:  MOV             R9, R3
16426E:  BLX             mprotect
164272:  ADDS            R6, R4, #4
164274:  MOV.W           R1, #0x1000; len
164278:  MOVS            R2, #3; prot
16427A:  MOV             R0, R6
16427C:  BFC.W           R0, #0, #0xC; addr
164280:  BLX             mprotect
164284:  MOVS            R0, #0x40 ; '@'
164286:  STRB            R5, [R4,#2]
164288:  CMP.W           R9, #0
16428C:  IT NE
16428E:  MOVNE           R0, #0xC0
164290:  ORR.W           R0, R0, R5,LSR#12
164294:  STRB            R0, [R4]
164296:  LSRS            R0, R5, #8
164298:  LSLS            R1, R0, #0x1C
16429A:  BMI             loc_1642A4
16429C:  MOVS            R1, #0xF2
16429E:  ADD.W           R0, R8, R0,LSL#4
1642A2:  B               loc_1642AC
1642A4:  ADD.W           R0, R8, R0,LSL#4
1642A8:  MOVS            R1, #0xF6
1642AA:  ADDS            R0, #0x80
1642AC:  STRB            R1, [R4,#1]
1642AE:  STRB            R0, [R4,#3]
1642B0:  MOV             R0, R4
1642B2:  MOV             R1, R6
1642B4:  MOVS            R2, #0
1642B6:  POP.W           {R8,R9,R11}
1642BA:  POP.W           {R4-R7,LR}
1642BE:  B.W             sub_224388
