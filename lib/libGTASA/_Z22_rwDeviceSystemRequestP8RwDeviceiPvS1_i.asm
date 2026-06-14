; =========================================================
; Game Engine Function: _Z22_rwDeviceSystemRequestP8RwDeviceiPvS1_i
; Address            : 0x1D7378 - 0x1D7412
; =========================================================

1D7378:  PUSH            {R4-R7,LR}
1D737A:  ADD             R7, SP, #0xC
1D737C:  PUSH.W          {R8}
1D7380:  SUB             SP, SP, #8
1D7382:  LDR.W           R8, [R7,#arg_0]
1D7386:  MOV             R5, R2
1D7388:  LDR             R6, [R0,#4]
1D738A:  MOV             R4, R1
1D738C:  MOV             R2, R3
1D738E:  MOV             R0, R4
1D7390:  MOV             R1, R5
1D7392:  MOV             R3, R8
1D7394:  BLX             R6
1D7396:  MOV             R6, R0
1D7398:  CBZ             R6, loc_1D73A4
1D739A:  MOV             R0, R6
1D739C:  ADD             SP, SP, #8
1D739E:  POP.W           {R8}
1D73A2:  POP             {R4-R7,PC}
1D73A4:  SUB.W           R0, R4, #0xD; switch 6 cases
1D73A8:  CMP             R0, #5
1D73AA:  BHI             def_1D73AE; jumptable 001D73AE default case
1D73AC:  MOVS            R6, #1
1D73AE:  TBB.W           [PC,R0]; switch jump
1D73B2:  DCB 4; jump table for switch statement
1D73B3:  DCB 7
1D73B4:  DCB 0x19
1D73B5:  DCB 0x1D
1D73B6:  DCB 3
1D73B7:  DCB 3
1D73B8:  B               loc_1D739A; jumptable 001D73AE cases 17,18
1D73BA:  MOVS            R6, #1; jumptable 001D73AE case 13
1D73BC:  STR             R6, [R5]
1D73BE:  B               loc_1D739A
1D73C0:  MOVS            R6, #0; jumptable 001D73AE case 14
1D73C2:  CMP.W           R8, #0
1D73C6:  IT EQ
1D73C8:  MOVEQ           R6, #1
1D73CA:  BNE             loc_1D73F6
1D73CC:  LDR             R0, =(RwEngineInstance_ptr - 0x1D73D4)
1D73CE:  LDR             R1, =(aOnlyRenderingS - 0x1D73D6); "Only rendering sub system"
1D73D0:  ADD             R0, PC; RwEngineInstance_ptr
1D73D2:  ADD             R1, PC; "Only rendering sub system"
1D73D4:  LDR             R0, [R0]; RwEngineInstance
1D73D6:  LDR             R0, [R0]
1D73D8:  LDR.W           R2, [R0,#0xF8]
1D73DC:  MOV             R0, R5
1D73DE:  BLX             R2
1D73E0:  CBNZ            R6, loc_1D73F8
1D73E2:  B               def_1D73AE; jumptable 001D73AE default case
1D73E4:  MOVS            R0, #0; jumptable 001D73AE case 15
1D73E6:  MOVS            R6, #1
1D73E8:  STR             R0, [R5]
1D73EA:  B               loc_1D739A
1D73EC:  MOVS            R6, #0; jumptable 001D73AE case 16
1D73EE:  CMP.W           R8, #0
1D73F2:  IT EQ
1D73F4:  MOVEQ           R6, #1
1D73F6:  CBZ             R6, def_1D73AE; jumptable 001D73AE default case
1D73F8:  MOVS            R6, #1
1D73FA:  B               loc_1D739A
1D73FC:  MOVS            R6, #0; jumptable 001D73AE default case
1D73FE:  MOVS            R0, #0x18; int
1D7400:  MOV             R1, R4
1D7402:  STR             R6, [SP,#0x18+var_18]
1D7404:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D7408:  STR             R0, [SP,#0x18+var_14]
1D740A:  MOV             R0, SP
1D740C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D7410:  B               loc_1D739A
