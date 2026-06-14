; =========================================================
; Game Engine Function: sub_129758
; Address            : 0x129758 - 0x129800
; =========================================================

129758:  PUSH            {R4-R7,LR}
12975A:  ADD             R7, SP, #0xC
12975C:  PUSH.W          {R8,R9,R11}
129760:  LDR             R0, [R0]
129762:  BLX             R0
129764:  LDR             R0, =(off_23494C - 0x129772)
129766:  MOV             R8, #0x677C04
12976E:  ADD             R0, PC; off_23494C
129770:  LDR             R6, [R0]; dword_23DF24
129772:  LDR             R0, [R6]
129774:  LDR.W           R0, [R0,R8]
129778:  LDR             R4, [R0]
12977A:  LDR             R0, [R4,#8]
12977C:  CMP.W           R0, #0x12C
129780:  BLS             loc_12978C
129782:  LDR             R1, =(aCanTExtendCveh - 0x12978C); "Can't extend CVehicleStructure pool - d"... ...
129784:  MOVS            R0, #2
129786:  MOVS            R2, #0x47 ; 'G'
129788:  ADD             R1, PC; "Can't extend CVehicleStructure pool - d"...
12978A:  B               loc_129796
12978C:  BNE             loc_1297A2
12978E:  LDR             R1, =(aCvehiclestruct - 0x129798); "CVehicleStructure pool already extended"... ...
129790:  MOVS            R0, #4; int
129792:  MOVS            R2, #0x28 ; '('
129794:  ADD             R1, PC; "CVehicleStructure pool already extended"...
129796:  POP.W           {R8,R9,R11}
12979A:  POP.W           {R4-R7,LR}
12979E:  B.W             sub_ED4F8
1297A2:  MOV.W           R0, #0x12C
1297A6:  MOV.W           R1, #0x32C
1297AA:  MOV.W           R9, #0x32C
1297AE:  BL              sub_F613C
1297B2:  MOV             R5, R0
1297B4:  LDR             R0, [R4,#8]
1297B6:  LDR             R1, [R4]; src
1297B8:  MUL.W           R2, R0, R9; n
1297BC:  LDR             R0, [R5]; dest
1297BE:  BLX             j_memcpy
1297C2:  LDRD.W          R1, R2, [R4,#4]; n
1297C6:  LDR             R0, [R5,#4]; dest
1297C8:  BLX             j_memcpy
1297CC:  LDR             R2, [R6]
1297CE:  LDRD.W          R0, R1, [R4,#0xC]
1297D2:  STRD.W          R0, R1, [R5,#0xC]
1297D6:  ADD.W           R0, R2, R8
1297DA:  BL              sub_1641C4
1297DE:  LDR             R0, [R6]
1297E0:  LDR.W           R0, [R0,R8]
1297E4:  STR             R5, [R0]
1297E6:  LDR             R0, [R4,#4]
1297E8:  BL              sub_129898
1297EC:  LDR             R0, [R4]
1297EE:  BL              sub_1298C4
1297F2:  MOV             R0, R4
1297F4:  POP.W           {R8,R9,R11}
1297F8:  POP.W           {R4-R7,LR}
1297FC:  B.W             sub_1298F0
