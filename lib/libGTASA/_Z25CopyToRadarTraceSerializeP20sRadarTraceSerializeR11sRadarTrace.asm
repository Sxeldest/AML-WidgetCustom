; =========================================================
; Game Engine Function: _Z25CopyToRadarTraceSerializeP20sRadarTraceSerializeR11sRadarTrace
; Address            : 0x48D640 - 0x48D6F4
; =========================================================

48D640:  LDR             R2, [R1]
48D642:  STR             R2, [R0]
48D644:  LDR             R2, [R1,#4]
48D646:  STR             R2, [R0,#4]
48D648:  VLDR            D16, [R1,#8]
48D64C:  LDR             R2, [R1,#0x10]
48D64E:  STR             R2, [R0,#0x10]
48D650:  VSTR            D16, [R0,#8]
48D654:  LDRH            R2, [R1,#0x14]
48D656:  STRH            R2, [R0,#0x14]
48D658:  LDR             R2, [R1,#0x18]
48D65A:  STR             R2, [R0,#0x18]
48D65C:  LDRH            R2, [R1,#0x1C]
48D65E:  STRH            R2, [R0,#0x1C]
48D660:  LDR             R2, [R1,#0x20]
48D662:  STR             R2, [R0,#0x20]
48D664:  LDRB.W          R3, [R1,#0x24]
48D668:  LDRH.W          R2, [R0,#0x25]
48D66C:  STRB.W          R3, [R0,#0x24]
48D670:  LDRH.W          R3, [R1,#0x25]
48D674:  BFI.W           R2, R3, #0, #1
48D678:  STRH.W          R2, [R0,#0x25]
48D67C:  LDRH.W          R3, [R1,#0x25]
48D680:  LSRS            R3, R3, #1
48D682:  BFI.W           R2, R3, #1, #1
48D686:  STRH.W          R2, [R0,#0x25]
48D68A:  LDRH.W          R3, [R1,#0x25]
48D68E:  LSRS            R3, R3, #2
48D690:  BFI.W           R2, R3, #2, #1
48D694:  STRH.W          R2, [R0,#0x25]
48D698:  LDRH.W          R3, [R1,#0x25]
48D69C:  LSRS            R3, R3, #3
48D69E:  BFI.W           R2, R3, #3, #1
48D6A2:  STRH.W          R2, [R0,#0x25]
48D6A6:  LDRH.W          R3, [R1,#0x25]
48D6AA:  LSRS            R3, R3, #4
48D6AC:  BFI.W           R2, R3, #4, #1
48D6B0:  STRH.W          R2, [R0,#0x25]
48D6B4:  LDRH.W          R3, [R1,#0x25]
48D6B8:  LSRS            R3, R3, #5
48D6BA:  BFI.W           R2, R3, #5, #1
48D6BE:  STRH.W          R2, [R0,#0x25]
48D6C2:  LDRH.W          R3, [R1,#0x25]
48D6C6:  LSRS            R3, R3, #6
48D6C8:  BFI.W           R2, R3, #6, #2
48D6CC:  STRH.W          R2, [R0,#0x25]
48D6D0:  LDRH.W          R3, [R1,#0x25]
48D6D4:  LSRS            R3, R3, #8
48D6D6:  BFI.W           R2, R3, #8, #2
48D6DA:  STRH.W          R2, [R0,#0x25]
48D6DE:  LDRH.W          R1, [R1,#0x25]
48D6E2:  MOVW            R3, #0xC3FF
48D6E6:  ANDS            R2, R3
48D6E8:  AND.W           R1, R1, #0x3C00
48D6EC:  ORRS            R1, R2
48D6EE:  STRH.W          R1, [R0,#0x25]
48D6F2:  BX              LR
