; =========================================================
; Game Engine Function: sub_1330A8
; Address            : 0x1330A8 - 0x133118
; =========================================================

1330A8:  PUSH            {R4-R7,LR}
1330AA:  ADD             R7, SP, #0xC
1330AC:  PUSH.W          {R8-R10}
1330B0:  VPUSH           {D8-D9}
1330B4:  SUB             SP, SP, #8
1330B6:  MOV             R8, R0
1330B8:  ADD.W           R9, R0, #0x7C ; '|'
1330BC:  ADD.W           R4, R0, #0x6C ; 'l'
1330C0:  ADR             R0, dword_133118
1330C2:  VLD1.64         {D8-D9}, [R0]
1330C6:  MOVS            R6, #0
1330C8:  MOV             R10, SP
1330CA:  LDR             R1, [R4]
1330CC:  LDRD.W          R0, R2, [R1,#0x44]
1330D0:  SUBS            R2, R2, R0
1330D2:  CMP             R2, #1
1330D4:  BLT             loc_133100
1330D6:  MOVS            R5, #0
1330D8:  LDR.W           R0, [R0,R5,LSL#2]
1330DC:  CBZ             R0, loc_1330F2
1330DE:  ADD.W           R1, R0, #0x1C
1330E2:  STRD.W          R6, R6, [SP,#0x30+var_30]
1330E6:  VST1.32         {D8-D9}, [R1]
1330EA:  MOV             R1, R10
1330EC:  BL              sub_12BD38
1330F0:  LDR             R1, [R4]
1330F2:  LDRD.W          R0, R2, [R1,#0x44]
1330F6:  ADDS            R5, #1
1330F8:  SUBS            R2, R2, R0
1330FA:  CMP.W           R5, R2,ASR#2
1330FE:  BLT             loc_1330D8
133100:  ADDS            R4, #4
133102:  CMP             R4, R9
133104:  BNE             loc_1330CA
133106:  MOV             R0, R8
133108:  BL              sub_13D758
13310C:  ADD             SP, SP, #8
13310E:  VPOP            {D8-D9}
133112:  POP.W           {R8-R10}
133116:  POP             {R4-R7,PC}
