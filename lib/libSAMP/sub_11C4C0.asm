; =========================================================
; Game Engine Function: sub_11C4C0
; Address            : 0x11C4C0 - 0x11C550
; =========================================================

11C4C0:  PUSH            {R4-R7,LR}
11C4C2:  ADD             R7, SP, #0xC
11C4C4:  PUSH.W          {R8-R11}
11C4C8:  SUB             SP, SP, #4
11C4CA:  MOV             R6, R1
11C4CC:  MOV             R9, R1
11C4CE:  LDR.W           R4, [R6,#4]!
11C4D2:  MOV             R8, R0
11C4D4:  CBZ             R4, loc_11C506
11C4D6:  LDRD.W          R0, R1, [R2]
11C4DA:  ADD.W           R6, R9, #4
11C4DE:  LDRD.W          R3, R2, [R4,#0x10]
11C4E2:  SUBS            R5, R0, R3
11C4E4:  SBCS.W          R5, R1, R2
11C4E8:  BCS             loc_11C4F0
11C4EA:  LDR             R2, [R4]
11C4EC:  CBNZ            R2, loc_11C500
11C4EE:  B               loc_11C50A
11C4F0:  SUBS            R3, R3, R0
11C4F2:  SBCS            R2, R1
11C4F4:  BCS             loc_11C50C
11C4F6:  MOV             R6, R4
11C4F8:  LDR.W           R2, [R6,#4]!
11C4FC:  CBZ             R2, loc_11C50C
11C4FE:  MOV             R4, R6
11C500:  MOV             R6, R4
11C502:  MOV             R4, R2
11C504:  B               loc_11C4DE
11C506:  MOV             R4, R6
11C508:  B               loc_11C50C
11C50A:  MOV             R6, R4
11C50C:  LDR             R5, [R6]
11C50E:  MOV.W           R10, #0
11C512:  CBNZ            R5, loc_11C540
11C514:  MOVS            R0, #0x20 ; ' '; unsigned int
11C516:  LDR.W           R11, [R7,#arg_0]
11C51A:  BLX             j__Znwj; operator new(uint)
11C51E:  MOV             R5, R0
11C520:  LDR.W           R0, [R11]
11C524:  MOV             R2, R6
11C526:  MOV             R3, R5
11C528:  LDRD.W          R0, R1, [R0]
11C52C:  STRD.W          R0, R1, [R5,#0x10]
11C530:  MOV             R0, R9
11C532:  MOV             R1, R4
11C534:  STRB.W          R10, [R5,#0x18]
11C538:  BL              sub_11C550
11C53C:  MOV.W           R10, #1
11C540:  STRB.W          R10, [R8,#4]
11C544:  STR.W           R5, [R8]
11C548:  ADD             SP, SP, #4
11C54A:  POP.W           {R8-R11}
11C54E:  POP             {R4-R7,PC}
