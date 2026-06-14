; =========================================================
; Game Engine Function: sub_265344
; Address            : 0x265344 - 0x265394
; =========================================================

265344:  PUSH            {R4-R7,LR}
265346:  ADD             R7, SP, #0xC
265348:  PUSH.W          {R11}
26534C:  MOV             R5, R1
26534E:  MOV             R4, R0
265350:  CBZ             R5, loc_26536C
265352:  LDR             R1, =(aNoOutput - 0x26535A); "No Output"
265354:  MOV             R0, R5; char *
265356:  ADD             R1, PC; "No Output"
265358:  BLX             strcmp
26535C:  CMP             R0, #0
26535E:  ITTT NE
265360:  MOVWNE          R0, #0xA004
265364:  POPNE.W         {R11}
265368:  POPNE           {R4-R7,PC}
26536A:  B               loc_265370
26536C:  LDR             R5, =(aNoOutput - 0x265372); "No Output"
26536E:  ADD             R5, PC; "No Output"
265370:  MOVS            R0, #1; item_count
265372:  MOVS            R1, #8; item_size
265374:  BLX             calloc
265378:  MOV             R6, R0
26537A:  MOV             R0, R5; char *
26537C:  BLX             j_strdup
265380:  MOV             R1, #0x161B0
265388:  STR             R6, [R4,R1]
26538A:  STR             R0, [R4,#0x24]
26538C:  MOVS            R0, #0
26538E:  POP.W           {R11}
265392:  POP             {R4-R7,PC}
