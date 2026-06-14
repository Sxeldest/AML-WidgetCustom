; =========================================================
; Game Engine Function: _Z27CopyFromRadarTraceSerializeP11sRadarTraceR20sRadarTraceSerialize
; Address            : 0x48D6F4 - 0x48D7A8
; =========================================================

48D6F4:  LDR             R2, [R1]
48D6F6:  STR             R2, [R0]
48D6F8:  LDR             R2, [R1,#4]
48D6FA:  STR             R2, [R0,#4]
48D6FC:  VLDR            D16, [R1,#8]
48D700:  LDR             R2, [R1,#0x10]
48D702:  STR             R2, [R0,#0x10]
48D704:  VSTR            D16, [R0,#8]
48D708:  LDRH            R2, [R1,#0x14]
48D70A:  STRH            R2, [R0,#0x14]
48D70C:  LDR             R2, [R1,#0x18]
48D70E:  STR             R2, [R0,#0x18]
48D710:  LDRH            R2, [R1,#0x1C]
48D712:  STRH            R2, [R0,#0x1C]
48D714:  LDR             R2, [R1,#0x20]
48D716:  STR             R2, [R0,#0x20]
48D718:  LDRB.W          R3, [R1,#0x24]
48D71C:  LDRH.W          R2, [R0,#0x25]
48D720:  STRB.W          R3, [R0,#0x24]
48D724:  LDRH.W          R3, [R1,#0x25]
48D728:  BFI.W           R2, R3, #0, #1
48D72C:  STRH.W          R2, [R0,#0x25]
48D730:  LDRH.W          R3, [R1,#0x25]
48D734:  LSRS            R3, R3, #1
48D736:  BFI.W           R2, R3, #1, #1
48D73A:  STRH.W          R2, [R0,#0x25]
48D73E:  LDRH.W          R3, [R1,#0x25]
48D742:  LSRS            R3, R3, #2
48D744:  BFI.W           R2, R3, #2, #1
48D748:  STRH.W          R2, [R0,#0x25]
48D74C:  LDRH.W          R3, [R1,#0x25]
48D750:  LSRS            R3, R3, #3
48D752:  BFI.W           R2, R3, #3, #1
48D756:  STRH.W          R2, [R0,#0x25]
48D75A:  LDRH.W          R3, [R1,#0x25]
48D75E:  LSRS            R3, R3, #4
48D760:  BFI.W           R2, R3, #4, #1
48D764:  STRH.W          R2, [R0,#0x25]
48D768:  LDRH.W          R3, [R1,#0x25]
48D76C:  LSRS            R3, R3, #5
48D76E:  BFI.W           R2, R3, #5, #1
48D772:  STRH.W          R2, [R0,#0x25]
48D776:  LDRH.W          R3, [R1,#0x25]
48D77A:  LSRS            R3, R3, #6
48D77C:  BFI.W           R2, R3, #6, #2
48D780:  STRH.W          R2, [R0,#0x25]
48D784:  LDRH.W          R3, [R1,#0x25]
48D788:  LSRS            R3, R3, #8
48D78A:  BFI.W           R2, R3, #8, #2
48D78E:  STRH.W          R2, [R0,#0x25]
48D792:  LDRH.W          R1, [R1,#0x25]
48D796:  MOVW            R3, #0xC3FF
48D79A:  ANDS            R2, R3
48D79C:  AND.W           R1, R1, #0x3C00
48D7A0:  ORRS            R1, R2
48D7A2:  STRH.W          R1, [R0,#0x25]
48D7A6:  BX              LR
