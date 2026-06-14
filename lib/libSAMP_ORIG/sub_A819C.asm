; =========================================================
; Game Engine Function: sub_A819C
; Address            : 0xA819C - 0xA8214
; =========================================================

A819C:  PUSH            {R7,LR}
A819E:  MOV             R7, SP
A81A0:  SUB             SP, SP, #8
A81A2:  MOV             R12, R2
A81A4:  LDR             R2, [R7,#8]
A81A6:  BIC.W           LR, R12, #1
A81AA:  CMP.W           LR, #6
A81AE:  BEQ             loc_A81C2
A81B0:  CMP.W           LR, #4
A81B4:  BNE             loc_A81CC
A81B6:  LDR             R3, [R3]
A81B8:  ADD             SP, SP, #8
A81BA:  POP.W           {R7,LR}
A81BE:  B.W             sub_886C0
A81C2:  LDRD.W          R3, R12, [R3]
A81C6:  STRD.W          R3, R12, [SP,#0x10+var_10]
A81CA:  B               loc_A820C
A81CC:  CMP.W           R12, #9; switch 10 cases
A81D0:  BHI             def_A81D2; jumptable 000A81D2 default case, cases 4-7
A81D2:  TBB.W           [PC,R12]; switch jump
A81D6:  DCB 5; jump table for switch statement
A81D7:  DCB 8
A81D8:  DCB 0xA
A81D9:  DCB 0xD
A81DA:  DCB 0xF
A81DB:  DCB 0xF
A81DC:  DCB 0xF
A81DD:  DCB 0xF
A81DE:  DCB 0x12
A81DF:  DCB 0x17
A81E0:  LDRSB.W         R3, [R3]; jumptable 000A81D2 case 0
A81E4:  B               loc_A81B8
A81E6:  LDRB            R3, [R3]; jumptable 000A81D2 case 1
A81E8:  B               loc_A81B8
A81EA:  LDRSH.W         R3, [R3]; jumptable 000A81D2 case 2
A81EE:  B               loc_A81B8
A81F0:  LDRH            R3, [R3]; jumptable 000A81D2 case 3
A81F2:  B               loc_A81B8
A81F4:  MOVS            R0, #0; jumptable 000A81D2 default case, cases 4-7
A81F6:  ADD             SP, SP, #8
A81F8:  POP             {R7,PC}
A81FA:  VLDR            S0, [R3]; jumptable 000A81D2 case 8
A81FE:  VCVT.F64.F32    D16, S0
A8202:  B               loc_A8208
A8204:  VLDR            D16, [R3]; jumptable 000A81D2 case 9
A8208:  VSTR            D16, [SP,#0x10+var_10]
A820C:  BL              sub_886C0
A8210:  ADD             SP, SP, #8
A8212:  POP             {R7,PC}
