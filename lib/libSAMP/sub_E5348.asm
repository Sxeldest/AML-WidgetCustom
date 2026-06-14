; =========================================================
; Game Engine Function: sub_E5348
; Address            : 0xE5348 - 0xE53A0
; =========================================================

E5348:  PUSH            {R4-R7,LR}
E534A:  ADD             R7, SP, #0xC
E534C:  PUSH.W          {R8-R10}
E5350:  MOV             R4, R0
E5352:  LDR             R0, [R1,#0x40]
E5354:  CBZ             R0, loc_E5366
E5356:  LDR             R0, [R1]
E5358:  MOV             R5, R1
E535A:  MOV             R8, R3
E535C:  MOV             R9, R2
E535E:  LDR             R1, [R0,#0x18]
E5360:  MOV             R0, R5
E5362:  BLX             R1
E5364:  CBZ             R0, loc_E537C
E5366:  MOVS            R0, #0
E5368:  STR             R0, [R4]
E536A:  MOV.W           R6, #0xFFFFFFFF
E536E:  MOV.W           R0, #0xFFFFFFFF
E5372:  STRD.W          R6, R0, [R4,#8]
E5376:  POP.W           {R8-R10}
E537A:  POP             {R4-R7,PC}
E537C:  LDR             R6, [R7,#off]
E537E:  MOVS            R2, #0; whence
E5380:  LDR             R0, [R5,#0x40]; stream
E5382:  MOV.W           R10, #0
E5386:  MOV             R1, R6; off
E5388:  BLX             fseeko
E538C:  CBZ             R0, loc_E5394
E538E:  STR.W           R10, [R4]
E5392:  B               loc_E536A
E5394:  LDR             R0, [R7,#arg_4]
E5396:  STR.W           R9, [R5,#0x48]
E539A:  STRD.W          R9, R8, [R4]
E539E:  B               loc_E5372
