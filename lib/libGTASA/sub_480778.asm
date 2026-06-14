; =========================================================
; Game Engine Function: sub_480778
; Address            : 0x480778 - 0x480826
; =========================================================

480778:  PUSH            {R4-R7,LR}
48077A:  ADD             R7, SP, #0xC
48077C:  PUSH.W          {R8}
480780:  SUB             SP, SP, #0x18
480782:  LDR             R0, [R0]
480784:  LDR             R2, [R0,#0x14]
480786:  CMP             R2, #1
480788:  BLT             loc_480790
48078A:  LDR             R3, [R0,#0x74]
48078C:  CMP             R2, R3
48078E:  BLE             loc_4807B4
480790:  LDR.W           LR, [R0,#0x78]
480794:  CMP.W           LR, #0
480798:  BEQ             loc_4807C4
48079A:  LDR.W           R12, [R0,#0x7C]
48079E:  CMP             R2, R12
4807A0:  BLT             loc_4807C4
4807A2:  LDR.W           R3, [R0,#0x80]
4807A6:  CMP             R2, R3
4807A8:  BGT             loc_4807C4
4807AA:  SUB.W           R3, R2, R12
4807AE:  ADD.W           R3, LR, R3,LSL#2
4807B2:  B               loc_4807BA
4807B4:  LDR             R3, [R0,#0x70]
4807B6:  ADD.W           R3, R3, R2,LSL#2
4807BA:  LDR.W           R12, [R3]
4807BE:  CMP.W           R12, #0
4807C2:  BNE             loc_4807CC
4807C4:  LDR             R3, [R0,#0x70]
4807C6:  STR             R2, [R0,#0x18]
4807C8:  LDR.W           R12, [R3]
4807CC:  MOV             R2, R12
4807CE:  LDRB.W          R3, [R2],#1
4807D2:  CMP             R3, #0
4807D4:  BEQ             loc_4807F6
4807D6:  CMP             R3, #0x25 ; '%'
4807D8:  BNE             loc_4807CE
4807DA:  LDRB            R2, [R2]
4807DC:  CMP             R2, #0x73 ; 's'
4807DE:  BNE             loc_4807F6
4807E0:  ADD.W           R2, R0, #0x18
4807E4:  MOV             R0, R1
4807E6:  MOV             R1, R12
4807E8:  ADD             SP, SP, #0x18
4807EA:  POP.W           {R8}
4807EE:  POP.W           {R4-R7,LR}
4807F2:  B.W             sub_5E6BC0
4807F6:  ADD.W           LR, R0, #0x18
4807FA:  ADD.W           R8, R0, #0x24 ; '$'
4807FE:  LDM.W           LR, {R2,R3,LR}
480802:  LDM.W           R8, {R4-R6,R8}
480806:  LDR             R0, [R0,#0x34]
480808:  STRD.W          LR, R4, [SP,#0x28+var_28]
48080C:  ADD.W           LR, SP, #0x28+var_20
480810:  STM.W           LR, {R5,R6,R8}
480814:  STR             R0, [SP,#0x28+var_14]
480816:  MOV             R0, R1
480818:  MOV             R1, R12
48081A:  BL              sub_5E6BC0
48081E:  ADD             SP, SP, #0x18
480820:  POP.W           {R8}
480824:  POP             {R4-R7,PC}
