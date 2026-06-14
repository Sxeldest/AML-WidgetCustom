; =========================================================
; Game Engine Function: downmix_int
; Address            : 0x1A30A8 - 0x1A3150
; =========================================================

1A30A8:  PUSH            {R4-R7,LR}
1A30AA:  ADD             R7, SP, #0xC
1A30AC:  PUSH.W          {R8,R9,R11}
1A30B0:  LDRD.W          LR, R12, [R7,#arg_4]
1A30B4:  CMP             R2, #1
1A30B6:  BLT             loc_1A30D8
1A30B8:  LDR             R4, [R7,#arg_0]
1A30BA:  MOV.W           R8, R12,LSL#1
1A30BE:  MLA.W           R4, R12, R3, R4
1A30C2:  MOV             R6, R2
1A30C4:  MOV             R5, R1
1A30C6:  ADD.W           R4, R0, R4,LSL#1
1A30CA:  LDRSH.W         R9, [R4]
1A30CE:  ADD             R4, R8
1A30D0:  STR.W           R9, [R5],#4
1A30D4:  SUBS            R6, #1
1A30D6:  BNE             loc_1A30CA
1A30D8:  CMP.W           LR, #0
1A30DC:  BLT             loc_1A3102
1A30DE:  CMP             R2, #1
1A30E0:  BLT             loc_1A314A
1A30E2:  MLA.W           R3, R12, R3, LR
1A30E6:  ADD.W           R0, R0, R3,LSL#1
1A30EA:  MOV.W           R3, R12,LSL#1
1A30EE:  LDRSH.W         R6, [R0]
1A30F2:  ADD             R0, R3
1A30F4:  LDR             R5, [R1]
1A30F6:  SUBS            R2, #1
1A30F8:  ADD             R6, R5
1A30FA:  STR.W           R6, [R1],#4
1A30FE:  BNE             loc_1A30EE
1A3100:  B               loc_1A314A
1A3102:  CMP.W           R12, #2
1A3106:  BLT             loc_1A314A
1A3108:  ADDS.W          R6, LR, #2
1A310C:  BNE             loc_1A314A
1A310E:  CMP             R2, #1
1A3110:  BLT             loc_1A314A
1A3112:  MUL.W           R3, R12, R3
1A3116:  MOV.W           R9, R12,LSL#1
1A311A:  MOV.W           R8, #1
1A311E:  ADD.W           R0, R0, R3,LSL#1
1A3122:  ADD.W           LR, R0, #2
1A3126:  MOV             R4, LR
1A3128:  MOV             R5, R1
1A312A:  MOV             R6, R2
1A312C:  LDRSH.W         R0, [R4]
1A3130:  ADD             R4, R9
1A3132:  LDR             R3, [R5]
1A3134:  SUBS            R6, #1
1A3136:  ADD             R0, R3
1A3138:  STR.W           R0, [R5],#4
1A313C:  BNE             loc_1A312C
1A313E:  ADD.W           R8, R8, #1
1A3142:  ADD.W           LR, LR, #2
1A3146:  CMP             R8, R12
1A3148:  BNE             loc_1A3126
1A314A:  POP.W           {R8,R9,R11}
1A314E:  POP             {R4-R7,PC}
