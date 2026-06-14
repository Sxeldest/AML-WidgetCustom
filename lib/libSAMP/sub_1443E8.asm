; =========================================================
; Game Engine Function: sub_1443E8
; Address            : 0x1443E8 - 0x144454
; =========================================================

1443E8:  PUSH            {R4,R5,R7,LR}
1443EA:  ADD             R7, SP, #8
1443EC:  SUB             SP, SP, #0x120
1443EE:  MOV             R4, R0
1443F0:  LDR.W           R0, [R0,#0x218]
1443F4:  CMP             R0, #5
1443F6:  BNE             loc_144450
1443F8:  ADD             R0, SP, #0x128+var_120
1443FA:  MOV             R5, R1
1443FC:  BL              sub_17D4A8
144400:  MOVS            R1, #0xDC
144402:  STRB.W          R1, [R7,#var_9]
144406:  SUB.W           R1, R7, #-var_9
14440A:  MOVS            R2, #8
14440C:  MOVS            R3, #1
14440E:  BL              sub_17D628
144412:  MOVS            R0, #0x45 ; 'E'
144414:  STRB.W          R0, [R7,#var_9]
144418:  ADD             R0, SP, #0x128+var_120
14441A:  SUB.W           R1, R7, #-var_9
14441E:  MOVS            R2, #8
144420:  MOVS            R3, #1
144422:  BL              sub_17D628
144426:  CBZ             R5, loc_144430
144428:  ADD             R0, SP, #0x128+var_120
14442A:  BL              sub_17D84A
14442E:  B               loc_144436
144430:  ADD             R0, SP, #0x128+var_120
144432:  BL              sub_17D828
144436:  LDR.W           R0, [R4,#0x210]
14443A:  LDR             R1, [R0]
14443C:  LDR             R5, [R1,#0x20]
14443E:  MOVS            R1, #6
144440:  MOVS            R2, #2
144442:  STR             R1, [SP,#0x128+var_128]
144444:  ADD             R1, SP, #0x128+var_120
144446:  MOVS            R3, #9
144448:  BLX             R5
14444A:  ADD             R0, SP, #0x128+var_120
14444C:  BL              sub_17D542
144450:  ADD             SP, SP, #0x120
144452:  POP             {R4,R5,R7,PC}
