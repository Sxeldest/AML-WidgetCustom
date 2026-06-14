; =========================================================
; Game Engine Function: sub_17C4D0
; Address            : 0x17C4D0 - 0x17C5A6
; =========================================================

17C4D0:  PUSH            {R4-R7,LR}
17C4D2:  ADD             R7, SP, #0xC
17C4D4:  PUSH.W          {R8-R11}
17C4D8:  SUB             SP, SP, #0x2C
17C4DA:  STR             R1, [SP,#0x48+var_30]
17C4DC:  MOV             R8, R3
17C4DE:  MOV             R9, R2
17C4E0:  MOV             R5, R0
17C4E2:  LDR.W           R10, [R7,#arg_8]
17C4E6:  LDRD.W          R6, R11, [R7,#arg_0]
17C4EA:  BL              sub_17C080
17C4EE:  CMP             R0, #0
17C4F0:  BEQ             loc_17C586
17C4F2:  ADD             R2, SP, #0x48+var_20
17C4F4:  MOV             R1, R8
17C4F6:  MOV             R4, R0
17C4F8:  BL              sub_17C5B0
17C4FC:  ADD             R2, SP, #0x48+var_24
17C4FE:  MOV             R0, R4
17C500:  MOV             R1, R6
17C502:  BL              sub_17C5B0
17C506:  ADD             R2, SP, #0x48+var_28
17C508:  MOV             R0, R4
17C50A:  MOV             R1, R11
17C50C:  BL              sub_17C5B0
17C510:  ADD             R2, SP, #0x48+var_2C
17C512:  MOV             R0, R4
17C514:  MOV             R1, R10
17C516:  BL              sub_17C5B0
17C51A:  LDR             R1, [R5]
17C51C:  ADD             R0, SP, #0x48+var_40
17C51E:  LDR             R2, [R5,#0x18]
17C520:  LDRD.W          R5, R6, [SP,#0x48+var_24]
17C524:  LDRD.W          R10, R8, [SP,#0x48+var_2C]
17C528:  STM.W           R0, {R5,R8,R10}
17C52C:  MOV             R0, R4
17C52E:  STRD.W          R9, R6, [SP,#0x48+var_48]
17C532:  LDR             R3, [SP,#0x48+var_30]
17C534:  BL              sub_17C1B8
17C538:  LDR             R0, [R4]
17C53A:  MOV             R1, R6
17C53C:  LDR             R2, [R0,#0x5C]
17C53E:  MOV             R0, R4
17C540:  BLX             R2
17C542:  LDR             R0, [R4]
17C544:  MOV             R1, R5
17C546:  LDR             R2, [R0,#0x5C]
17C548:  MOV             R0, R4
17C54A:  BLX             R2
17C54C:  LDR             R0, [R4]
17C54E:  MOV             R1, R8
17C550:  LDR             R2, [R0,#0x5C]
17C552:  MOV             R0, R4
17C554:  BLX             R2
17C556:  LDR             R0, [R4]
17C558:  MOV             R1, R10
17C55A:  LDR             R2, [R0,#0x5C]
17C55C:  MOV             R0, R4
17C55E:  BLX             R2
17C560:  LDR             R0, [R4]
17C562:  LDR.W           R1, [R0,#0x390]
17C566:  MOV             R0, R4
17C568:  BLX             R1
17C56A:  CBZ             R0, loc_17C59E
17C56C:  LDR             R0, [R4]
17C56E:  LDR             R1, [R0,#0x40]
17C570:  MOV             R0, R4
17C572:  BLX             R1
17C574:  LDR             R0, [R4]
17C576:  LDR             R1, [R0,#0x44]
17C578:  MOV             R0, R4
17C57A:  ADD             SP, SP, #0x2C ; ','
17C57C:  POP.W           {R8-R11}
17C580:  POP.W           {R4-R7,LR}
17C584:  BX              R1
17C586:  LDR             R1, =(aAxl - 0x17C590); "AXL" ...
17C588:  MOVS            R0, #4
17C58A:  LDR             R2, =(aEnvNotLoadedSh - 0x17C592); "Env not loaded (ShowPlayerDialog)" ...
17C58C:  ADD             R1, PC; "AXL"
17C58E:  ADD             R2, PC; "Env not loaded (ShowPlayerDialog)"
17C590:  ADD             SP, SP, #0x2C ; ','
17C592:  POP.W           {R8-R11}
17C596:  POP.W           {R4-R7,LR}
17C59A:  B.W             sub_2242C8
17C59E:  ADD             SP, SP, #0x2C ; ','
17C5A0:  POP.W           {R8-R11}
17C5A4:  POP             {R4-R7,PC}
