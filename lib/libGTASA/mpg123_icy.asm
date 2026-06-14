; =========================================================
; Game Engine Function: mpg123_icy
; Address            : 0x23343C - 0x233486
; =========================================================

23343C:  MOV             R2, R0
23343E:  CMP             R2, #0
233440:  ITT EQ
233442:  MOVEQ.W         R0, #0xFFFFFFFF
233446:  BXEQ            LR
233448:  CBZ             R1, loc_233478
23344A:  MOVS            R0, #0
23344C:  MOVW            R12, #0xB478
233450:  STR             R0, [R1]
233452:  LDRB.W          R3, [R2,R12]
233456:  TST.W           R3, #0xC
23345A:  IT EQ
23345C:  BXEQ            LR
23345E:  MOVW            R3, #0xB530
233462:  ADD.W           R0, R2, R12
233466:  LDR             R2, [R2,R3]
233468:  STR             R2, [R1]
23346A:  LDR             R1, [R0]
23346C:  MOVS            R2, #2
23346E:  BFI.W           R1, R2, #2, #2
233472:  STR             R1, [R0]
233474:  MOVS            R0, #0
233476:  BX              LR
233478:  MOVW            R0, #0xB468
23347C:  MOVS            R1, #0x21 ; '!'
23347E:  STR             R1, [R2,R0]
233480:  MOV.W           R0, #0xFFFFFFFF
233484:  BX              LR
