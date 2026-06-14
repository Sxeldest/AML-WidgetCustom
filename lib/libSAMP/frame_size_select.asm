; =========================================================
; Game Engine Function: frame_size_select
; Address            : 0x1A3150 - 0x1A31FE
; =========================================================

1A3150:  PUSH            {R4,R6,R7,LR}
1A3152:  ADD             R7, SP, #8
1A3154:  MOVW            R12, #0x851F
1A3158:  MOV             R4, R0
1A315A:  MOVT            R12, #0x51EB
1A315E:  SMMUL.W         R0, R2, R12
1A3162:  ASRS            R3, R0, #7
1A3164:  ADD.W           R0, R3, R0,LSR#31
1A3168:  CMP             R0, R4
1A316A:  BGT             loc_1A31F8
1A316C:  MOVW            R3, #0x1388
1A3170:  CMP             R1, R3
1A3172:  BNE             loc_1A3178
1A3174:  MOV             R0, R4
1A3176:  B               loc_1A3196
1A3178:  MOVW            R3, #0x1389
1A317C:  SUB.W           LR, R1, R3
1A3180:  CMP.W           LR, #8
1A3184:  BHI             loc_1A31F8
1A3186:  MOVW            R3, #0x138D
1A318A:  CMP             R1, R3
1A318C:  BGT             loc_1A31E2
1A318E:  LSL.W           R0, R0, LR
1A3192:  CMP             R0, R4
1A3194:  BGT             loc_1A31F8
1A3196:  MOVS            R1, #0x64 ; 'd'
1A3198:  MULS            R1, R0
1A319A:  CMP             R1, R2
1A319C:  ITTT NE
1A319E:  MOVNE.W         R1, #0x190
1A31A2:  MULNE           R1, R0
1A31A4:  CMPNE           R1, R2
1A31A6:  BEQ             locret_1A31E0
1A31A8:  MOVS            R1, #0xC8
1A31AA:  MULS            R1, R0
1A31AC:  CMP             R1, R2
1A31AE:  ITTTT NE
1A31B0:  MOVNE           R1, #0x32 ; '2'
1A31B2:  MULNE           R1, R0
1A31B4:  ADDNE.W         R3, R2, R2,LSL#1
1A31B8:  CMPNE.W         R1, R3,LSL#1
1A31BC:  BEQ             locret_1A31E0
1A31BE:  ADD.W           R4, R2, R2,LSL#2
1A31C2:  CMP             R1, R4
1A31C4:  ITT NE
1A31C6:  LSLNE           R4, R2, #2
1A31C8:  CMPNE           R1, R4
1A31CA:  BEQ             locret_1A31E0
1A31CC:  CMP             R1, R3
1A31CE:  IT NE
1A31D0:  CMPNE           R1, R2
1A31D2:  BEQ             locret_1A31E0
1A31D4:  MOVS            R1, #0x19
1A31D6:  MULS            R1, R0
1A31D8:  CMP             R1, R2
1A31DA:  IT NE
1A31DC:  MOVNE.W         R0, #0xFFFFFFFF
1A31E0:  POP             {R4,R6,R7,PC}
1A31E2:  MOVW            R0, #0x138B
1A31E6:  SUBS            R0, R1, R0
1A31E8:  MULS            R0, R2
1A31EA:  SMMUL.W         R0, R0, R12
1A31EE:  ASRS            R1, R0, #4
1A31F0:  ADD.W           R0, R1, R0,LSR#31
1A31F4:  CMP             R0, R4
1A31F6:  BLE             loc_1A3196
1A31F8:  MOV.W           R0, #0xFFFFFFFF
1A31FC:  POP             {R4,R6,R7,PC}
