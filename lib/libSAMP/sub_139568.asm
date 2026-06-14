; =========================================================
; Game Engine Function: sub_139568
; Address            : 0x139568 - 0x13959C
; =========================================================

139568:  PUSH            {R4,R5,R7,LR}
13956A:  ADD             R7, SP, #8
13956C:  MOV             R4, R0
13956E:  LDR             R0, [R0,#0xC]
139570:  CBZ             R0, locret_13959A
139572:  LDR             R0, [R4,#8]; void *
139574:  CBZ             R0, loc_139582
139576:  LDR             R5, [R0]
139578:  BLX             j__ZdlPv; operator delete(void *)
13957C:  CMP             R5, #0
13957E:  MOV             R0, R5
139580:  BNE             loc_139576
139582:  LDR             R1, [R4,#4]
139584:  MOVS            R0, #0
139586:  STR             R0, [R4,#8]
139588:  CBZ             R1, loc_139598
13958A:  MOVS            R2, #0
13958C:  LDR             R3, [R4]
13958E:  STR.W           R0, [R3,R2,LSL#2]
139592:  ADDS            R2, #1
139594:  CMP             R1, R2
139596:  BNE             loc_13958C
139598:  STR             R0, [R4,#0xC]
13959A:  POP             {R4,R5,R7,PC}
