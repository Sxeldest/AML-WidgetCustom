; =========================================================
; Game Engine Function: sub_120764
; Address            : 0x120764 - 0x120818
; =========================================================

120764:  PUSH            {R4-R7,LR}
120766:  ADD             R7, SP, #0xC
120768:  PUSH.W          {R8-R10}
12076C:  MOV             R10, R0
12076E:  LDR             R0, =(off_23494C - 0x120778)
120770:  LDR             R4, =(off_263908 - 0x12077C)
120772:  MOV             R6, LR
120774:  ADD             R0, PC; off_23494C
120776:  MOV             R8, R1
120778:  ADD             R4, PC; off_263908
12077A:  LDR             R0, [R0]; dword_23DF24
12077C:  LDR             R2, [R4]
12077E:  LDR             R5, [R0]
120780:  MOV             R0, R10
120782:  BLX             R2
120784:  CBNZ            R0, loc_1207D0
120786:  MOVW            R2, #0x85A8
12078A:  SUBS            R1, R6, R5
12078C:  MOVT            R2, #0x38 ; '8'
120790:  MOVS            R0, #0
120792:  CMP             R1, R2
120794:  BLE             loc_1207B8
120796:  MOV             R2, #0x3885A9
12079E:  CMP             R1, R2
1207A0:  ITTT NE
1207A2:  MOVWNE          R2, #0xC5B5
1207A6:  MOVTNE          R2, #0x58 ; 'X'
1207AA:  CMPNE           R1, R2
1207AC:  BEQ             loc_1207D0
1207AE:  MOV             R2, #0x58C5DD
1207B6:  B               loc_1207CC
1207B8:  MOV             R2, #0x387A15
1207C0:  CMP             R1, R2
1207C2:  BEQ             loc_1207D0
1207C4:  MOV             R2, #0x3884F5
1207CC:  CMP             R1, R2
1207CE:  BNE             loc_1207D6
1207D0:  POP.W           {R8-R10}
1207D4:  POP             {R4-R7,PC}
1207D6:  MOVW            R0, #0x7851
1207DA:  MOV.W           R9, #0
1207DE:  MOVT            R0, #0xFFA1
1207E2:  ADD             R0, R1
1207E4:  MOV             R1, #0xFFBB9050
1207EC:  CMP             R0, R1
1207EE:  MOV.W           R0, #0
1207F2:  BCC             loc_1207D0
1207F4:  MOVS            R6, #2
1207F6:  SUB.W           R0, R9, R6,LSR#1
1207FA:  LSLS            R1, R6, #0x1F
1207FC:  IT EQ
1207FE:  LSREQ           R0, R6, #1
120800:  LDR             R2, [R4]
120802:  ADD.W           R1, R0, R8
120806:  MOV             R0, R10
120808:  BLX             R2
12080A:  CMP             R0, #0
12080C:  BNE             loc_1207D0
12080E:  ADDS            R6, #1
120810:  MOVS            R0, #0
120812:  CMP             R6, #0x28 ; '('
120814:  BNE             loc_1207F6
120816:  B               loc_1207D0
