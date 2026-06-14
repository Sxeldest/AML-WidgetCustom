; =========================================================
; Game Engine Function: sub_1544E8
; Address            : 0x1544E8 - 0x1545AA
; =========================================================

1544E8:  PUSH            {R4,R6,R7,LR}
1544EA:  ADD             R7, SP, #8
1544EC:  SUB             SP, SP, #0x18
1544EE:  MOV             R4, R0
1544F0:  BL              sub_164A28
1544F4:  CBZ             R0, loc_1544FA
1544F6:  BL              sub_164A14
1544FA:  MOV             R0, R4
1544FC:  MOVW            R1, #0xAC44
154500:  MOVS            R2, #4
154502:  BL              sub_164A00
154506:  CBZ             R0, loc_15456A
154508:  BL              sub_164CF0
15450C:  MOVW            R1, #0xFFFF
154510:  BICS            R0, R1
154512:  CMP.W           R0, #0x2040000
154516:  BNE             loc_154584
154518:  MOVS            R0, #0xA
15451A:  MOVS            R1, #2
15451C:  BL              sub_1649C4
154520:  MOVS            R0, #0x25 ; '%'
154522:  MOVW            R1, #0x2710
154526:  BL              sub_1649C4
15452A:  MOVW            R1, #0x999A
15452E:  MOV.W           R0, #0x3F800000
154532:  MOVT            R1, #0x3F19
154536:  MOV.W           R2, #0x3F800000
15453A:  MOV.W           R4, #0x3F800000
15453E:  BL              sub_164A3C
154542:  MOVS            R1, #0
154544:  MOVS            R0, #0
154546:  MOVT            R1, #0xBF80
15454A:  ADD             R2, SP, #0x20+var_14
15454C:  STR             R1, [SP,#0x20+var_10]
15454E:  MOV             R3, SP
154550:  STR             R0, [SP,#0x20+var_C]
154552:  MOVS            R1, #0
154554:  STRD.W          R4, R0, [SP,#0x20+var_18]
154558:  STRD.W          R0, R0, [SP,#0x20+var_20]
15455C:  MOVS            R0, #0
15455E:  BL              sub_164A50
154562:  BL              sub_164A70
154566:  ADD             SP, SP, #0x18
154568:  POP             {R4,R6,R7,PC}
15456A:  MOVS            R0, #0x18; thrown_size
15456C:  BLX             j___cxa_allocate_exception
154570:  MOV             R4, R0
154572:  BL              sub_1649EC
154576:  LDR             R1, =(aBassInit - 0x15457E); "BASS_Init" ...
154578:  MOV             R2, R0
15457A:  ADD             R1, PC; "BASS_Init"
15457C:  MOV             R0, R4
15457E:  BL              sub_1545C8
154582:  B               loc_15459C
154584:  MOVS            R0, #0x18; thrown_size
154586:  BLX             j___cxa_allocate_exception
15458A:  MOV             R4, R0
15458C:  BL              sub_1649EC
154590:  LDR             R1, =(aIncompatibleBa - 0x154598); "Incompatible BASS FX" ...
154592:  MOV             R2, R0
154594:  ADD             R1, PC; "Incompatible BASS FX"
154596:  MOV             R0, R4
154598:  BL              sub_1545C8
15459C:  LDR             R1, =(_ZTI13BassException - 0x1545A6); `typeinfo for'BassException ...
15459E:  MOV             R0, R4; void *
1545A0:  LDR             R2, =(sub_15466C+1 - 0x1545A8)
1545A2:  ADD             R1, PC; lptinfo
1545A4:  ADD             R2, PC; sub_15466C ; void (*)(void *)
1545A6:  BLX             j___cxa_throw
