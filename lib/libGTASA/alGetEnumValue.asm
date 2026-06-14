; =========================================================
; Game Engine Function: alGetEnumValue
; Address            : 0x2542F4 - 0x254338
; =========================================================

2542F4:  PUSH            {R4-R7,LR}
2542F6:  ADD             R7, SP, #0xC
2542F8:  PUSH.W          {R11}
2542FC:  MOV             R4, R0
2542FE:  CBZ             R4, loc_25431E
254300:  LDR             R6, =(off_661348 - 0x254308); "ALC_INVALID" ...
254302:  MOVS            R5, #0
254304:  ADD             R6, PC; off_661348
254306:  LDR.W           R0, [R6,R5,LSL#3]; char *
25430A:  MOV             R1, R4; char *
25430C:  BLX             strcmp
254310:  CBZ             R0, loc_254326
254312:  ADDS            R5, #1
254314:  MOVW            R0, #0x103
254318:  CMP             R5, R0
25431A:  BNE             loc_254306
25431C:  B               loc_254328
25431E:  MOVS            R0, #0
254320:  POP.W           {R11}
254324:  POP             {R4-R7,PC}
254326:  MOV             R0, R5
254328:  LDR             R1, =(off_661348 - 0x25432E); "ALC_INVALID" ...
25432A:  ADD             R1, PC; off_661348
25432C:  ADD.W           R0, R1, R0,LSL#3
254330:  LDR             R0, [R0,#4]
254332:  POP.W           {R11}
254336:  POP             {R4-R7,PC}
