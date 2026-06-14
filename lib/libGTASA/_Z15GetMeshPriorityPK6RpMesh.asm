; =========================================================
; Game Engine Function: _Z15GetMeshPriorityPK6RpMesh
; Address            : 0x21831C - 0x21835A
; =========================================================

21831C:  LDR             R0, [R0,#8]
21831E:  CMP             R0, #0
218320:  ITT EQ
218322:  MOVEQ           R0, #0
218324:  BXEQ            LR
218326:  LDR             R1, [R0]
218328:  CBZ             R1, loc_218344
21832A:  LDR             R1, [R1]
21832C:  LDRB.W          R2, [R1,#0x22]
218330:  LDRB            R1, [R0,#7]
218332:  AND.W           R0, R2, #0xF
218336:  CMP             R0, #6
218338:  BNE             loc_218350
21833A:  MOVS            R0, #3
21833C:  CMP             R1, #0xFF
21833E:  IT EQ
218340:  MOVEQ           R0, #1
218342:  BX              LR
218344:  LDRB            R1, [R0,#7]
218346:  MOVS            R0, #4
218348:  CMP             R1, #0xFF
21834A:  IT EQ
21834C:  MOVEQ           R0, #2
21834E:  BX              LR
218350:  MOVS            R0, #6
218352:  CMP             R1, #0xFF
218354:  IT EQ
218356:  MOVEQ           R0, #5
218358:  BX              LR
