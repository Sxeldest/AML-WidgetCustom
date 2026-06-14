; =========================================================
; Game Engine Function: sub_1605A0
; Address            : 0x1605A0 - 0x16069A
; =========================================================

1605A0:  PUSH            {R4-R7,LR}
1605A2:  ADD             R7, SP, #0xC
1605A4:  PUSH.W          {R8-R11}
1605A8:  SUB             SP, SP, #0x3C
1605AA:  MOV             R5, R1
1605AC:  MOV             R11, R0
1605AE:  LDR             R0, [R2,#4]
1605B0:  MOV             R4, R2
1605B2:  LDR             R1, [R2,#0xC]
1605B4:  ORRS.W          R2, R0, R1
1605B8:  BEQ             loc_160692
1605BA:  SUB.W           R9, R5, R1
1605BE:  STR.W           R9, [SP,#0x58+var_20]
1605C2:  CMP             R1, #0
1605C4:  IT EQ
1605C6:  MOVEQ           R1, R5
1605C8:  SUB.W           R10, R1, R0
1605CC:  LDR             R0, [R4]; s
1605CE:  MOV             R8, R3
1605D0:  STR.W           R10, [SP,#0x58+var_24]
1605D4:  CBZ             R0, loc_1605E8
1605D6:  LDRB            R1, [R0]
1605D8:  CBZ             R1, loc_1605E8
1605DA:  MOVS            R1, #0x2F ; '/'; c
1605DC:  BLX             strrchr
1605E0:  CBZ             R0, loc_1605E8
1605E2:  LDRB.W          R1, [R0,#1]!
1605E6:  CBNZ            R1, loc_1605EA
1605E8:  LDR             R0, [R4]
1605EA:  LDR             R6, =(byte_8F794 - 0x1605F2)
1605EC:  CMP             R0, #0
1605EE:  ADD             R6, PC; byte_8F794
1605F0:  IT EQ
1605F2:  MOVEQ           R0, R6
1605F4:  STR             R0, [SP,#0x58+var_28]
1605F6:  LDR             R0, [R4,#8]; lpmangled
1605F8:  STR             R0, [SP,#0x58+var_2C]
1605FA:  CBZ             R0, loc_16061E
1605FC:  LDRB            R1, [R0]
1605FE:  CBZ             R1, loc_16061E
160600:  ADD.W           R11, R11, #4
160604:  MOV.W           R1, #0x800
160608:  ADD             R2, SP, #0x58+outlen; lpoutlen
16060A:  ADD             R3, SP, #0x58+status; lpstatus
16060C:  STR             R1, [SP,#0x58+outlen]
16060E:  MOV             R1, R11; lpout
160610:  BLX             j___cxa_demangle
160614:  LDR             R0, [SP,#0x58+status]
160616:  CBNZ            R0, loc_160624
160618:  STR.W           R11, [SP,#0x58+var_2C]
16061C:  B               loc_160624
16061E:  LDR             R0, =(aNoname - 0x160624); "__noname__" ...
160620:  ADD             R0, PC; "__noname__"
160622:  STR             R0, [SP,#0x58+var_2C]
160624:  LDR             R0, =(aUnhandledExcep - 0x160630); " <- UNHANDLED EXCEPTION HERE!" ...
160626:  CMP.W           R8, #0
16062A:  LDR             R1, [R4,#0xC]
16062C:  ADD             R0, PC; " <- UNHANDLED EXCEPTION HERE!"
16062E:  IT NE
160630:  MOVNE           R6, R0
160632:  STR             R6, [SP,#0x58+outlen]
160634:  CBZ             R1, loc_16066E
160636:  STR             R5, [SP,#0x58+status]
160638:  ADD             R2, SP, #0x58+var_3C
16063A:  LDR             R0, [R4,#4]
16063C:  ADD             R3, SP, #0x58+var_20
16063E:  LDR             R1, =(a08x08x08xXX - 0x160650); "{:08X} -> [{:08X}]{}::[{:08X}]{}+{:X} ("... ...
160640:  ADD             R6, SP, #0x58+var_2C
160642:  STR             R0, [SP,#0x58+var_38]
160644:  ADD.W           R0, R9, R10
160648:  STRD.W          R3, R2, [SP,#0x58+var_48]
16064C:  ADD             R1, PC; "{:08X} -> [{:08X}]{}::[{:08X}]{}+{:X} ("...
16064E:  STR             R0, [SP,#0x58+var_3C]
160650:  ADD             R0, SP, #0x58+var_38
160652:  ADD             R3, SP, #0x58+status
160654:  ADD             R5, SP, #0x58+var_24
160656:  ADD             R4, SP, #0x58+var_28
160658:  STMEA.W         SP, {R0,R4-R6}
16065C:  MOVS            R0, #3
16065E:  MOVS            R2, #0x2E ; '.'
160660:  ADD.W           R12, SP, #0x58+outlen
160664:  STR.W           R12, [SP,#0x58+var_40]
160668:  BL              sub_160DCC
16066C:  B               loc_160692
16066E:  STR             R5, [SP,#0x58+status]
160670:  ADD             R3, SP, #0x58+var_28
160672:  LDR             R0, [R4,#4]
160674:  ADD             R2, SP, #0x58+var_24
160676:  LDR             R1, =(a08x08x08x - 0x160686); "{:08X} -> [{:08X}]{}::[{:08X}]{}" ...
160678:  ADD             R6, SP, #0x58+var_38
16067A:  STR             R0, [SP,#0x58+var_38]
16067C:  ADD             R0, SP, #0x58+outlen
16067E:  STRD.W          R6, R3, [SP,#0x58+var_58]
160682:  ADD             R1, PC; "{:08X} -> [{:08X}]{}::[{:08X}]{}"
160684:  ADD             R3, SP, #0x58+status
160686:  STRD.W          R2, R0, [SP,#0x58+var_50]
16068A:  MOVS            R0, #3
16068C:  MOVS            R2, #0x20 ; ' '
16068E:  BL              sub_160EEC
160692:  ADD             SP, SP, #0x3C ; '<'
160694:  POP.W           {R8-R11}
160698:  POP             {R4-R7,PC}
