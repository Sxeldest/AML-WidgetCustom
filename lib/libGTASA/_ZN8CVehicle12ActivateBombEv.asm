; =========================================================
; Game Engine Function: _ZN8CVehicle12ActivateBombEv
; Address            : 0x585518 - 0x585574
; =========================================================

585518:  PUSH            {R4,R5,R7,LR}
58551A:  ADD             R7, SP, #8
58551C:  MOV             R4, R0
58551E:  MOVW            R5, #0xFFFF
585522:  LDRB.W          R0, [R4,#0x4B2]
585526:  AND.W           R1, R0, #7
58552A:  CMP             R1, #2
58552C:  BEQ             loc_585556
58552E:  CMP             R1, #1
585530:  IT NE
585532:  POPNE           {R4,R5,R7,PC}
585534:  AND.W           R0, R0, #0xF8
585538:  MOVW            R1, #0x1B58
58553C:  ORR.W           R0, R0, #4
585540:  STRH.W          R1, [R4,#0x4EE]
585544:  STRB.W          R0, [R4,#0x4B2]
585548:  MOV.W           R0, #0xFFFFFFFF; int
58554C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
585550:  STR.W           R0, [R4,#0x4F0]
585554:  B               loc_585562
585556:  AND.W           R0, R0, #0xF8
58555A:  ORR.W           R0, R0, #5
58555E:  STRB.W          R0, [R4,#0x4B2]
585562:  SXTH            R1, R5; char *
585564:  ADR             R0, aGa12_0; "GA_12"
585566:  MOVW            R2, #0xBB8; __int16
58556A:  MOV             R3, R1; unsigned __int16
58556C:  POP.W           {R4,R5,R7,LR}
585570:  B.W             sub_19BFAC
