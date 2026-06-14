; =========================================================
; Game Engine Function: sub_172950
; Address            : 0x172950 - 0x1729EA
; =========================================================

172950:  PUSH            {R4-R7,LR}
172952:  ADD             R7, SP, #0xC
172954:  PUSH.W          {R8,R9,R11}
172958:  VPUSH           {D8-D9}
17295C:  MOV             R9, R0
17295E:  LDR             R0, [R0,#8]
172960:  CMP             R0, #1
172962:  BLT             loc_1729C6
172964:  VMOV.I32        Q4, #0
172968:  MOV.W           R8, #0
17296C:  MOVS            R6, #0
17296E:  MOVS            R5, #0
172970:  LDR.W           R0, [R9]
172974:  CMP             R5, R0
172976:  BNE             loc_17298A
172978:  LDR.W           R0, [R9,#0x10]
17297C:  ADD             R0, R6
17297E:  STR.W           R8, [R0,#0x14]
172982:  VST1.8          {D8-D9}, [R0]!
172986:  STR.W           R8, [R0]
17298A:  LDR.W           R1, [R9,#0x10]
17298E:  ADDS            R4, R1, R6
172990:  LDR             R0, [R4,#8]
172992:  CBZ             R0, loc_1729A8
172994:  STR.W           R8, [R1,R6]
172998:  STR.W           R8, [R4,#4]
17299C:  BL              sub_165578
1729A0:  LDR.W           R1, [R9,#0x10]
1729A4:  STR.W           R8, [R4,#8]
1729A8:  ADDS            R4, R1, R6
1729AA:  LDR             R0, [R4,#0x14]
1729AC:  CBZ             R0, loc_1729BA
1729AE:  STRD.W          R8, R8, [R4,#0xC]
1729B2:  BL              sub_165578
1729B6:  STR.W           R8, [R4,#0x14]
1729BA:  LDR.W           R0, [R9,#8]
1729BE:  ADDS            R5, #1
1729C0:  ADDS            R6, #0x18
1729C2:  CMP             R5, R0
1729C4:  BLT             loc_172970
1729C6:  LDR.W           R0, [R9,#0x10]
1729CA:  MOVS            R1, #1
1729CC:  MOVS            R4, #0
1729CE:  STRD.W          R4, R1, [R9]
1729D2:  CBZ             R0, loc_1729E0
1729D4:  STRD.W          R4, R4, [R9,#8]
1729D8:  BL              sub_165578
1729DC:  STR.W           R4, [R9,#0x10]
1729E0:  VPOP            {D8-D9}
1729E4:  POP.W           {R8,R9,R11}
1729E8:  POP             {R4-R7,PC}
