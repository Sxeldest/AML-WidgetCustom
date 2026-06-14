; =========================================================
; Game Engine Function: _ZN18CMotionBlurStreaks6UpdateEv
; Address            : 0x5C045C - 0x5C0630
; =========================================================

5C045C:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C0462)
5C045E:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0460:  LDR             R0, [R0]; CMotionBlurStreaks::aStreaks ...
5C0462:  LDR             R0, [R0]; CMotionBlurStreaks::aStreaks
5C0464:  CBZ             R0, loc_5C04C6
5C0466:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C046C)
5C0468:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C046A:  LDR             R1, [R0]; CMotionBlurStreaks::aStreaks ...
5C046C:  VLDR            D16, [R1,#8]
5C0470:  VLDR            D17, [R1,#0x14]
5C0474:  VLDR            D18, [R1,#0x38]
5C0478:  LDR.W           R12, [R1,#(dword_A5661C - 0xA56600)]
5C047C:  LDR             R2, [R1,#(dword_A56640 - 0xA56600)]
5C047E:  LDRB.W          R3, [R1,#(byte_A56651 - 0xA56600)]
5C0482:  LDR             R0, [R1,#(dword_A56610 - 0xA56600)]
5C0484:  STR.W           R12, [R1,#(dword_A56628 - 0xA56600)]
5C0488:  STR             R2, [R1,#(dword_A5664C - 0xA56600)]
5C048A:  STRB.W          R3, [R1,#(byte_A56652 - 0xA56600)]
5C048E:  STR             R0, [R1,#(dword_A5661C - 0xA56600)]
5C0490:  VSTR            D17, [R1,#0x20]
5C0494:  VSTR            D18, [R1,#0x44]
5C0498:  VSTR            D16, [R1,#0x14]
5C049C:  VLDR            D16, [R1,#0x2C]
5C04A0:  LDR             R0, [R1,#(dword_A56634 - 0xA56600)]
5C04A2:  STR             R0, [R1,#(dword_A56640 - 0xA56600)]
5C04A4:  MOVS            R0, #0
5C04A6:  VSTR            D16, [R1,#0x38]
5C04AA:  LDRB.W          R2, [R1,#(byte_A56650 - 0xA56600)]
5C04AE:  STRB.W          R2, [R1,#(byte_A56651 - 0xA56600)]
5C04B2:  STRB.W          R0, [R1,#(byte_A56650 - 0xA56600)]
5C04B6:  ORR.W           R1, R2, R3
5C04BA:  LSLS            R1, R1, #0x18
5C04BC:  BNE             loc_5C04C6
5C04BE:  LDR             R1, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C04C4)
5C04C0:  ADD             R1, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C04C2:  LDR             R1, [R1]; CMotionBlurStreaks::aStreaks ...
5C04C4:  STR             R0, [R1]; CMotionBlurStreaks::aStreaks
5C04C6:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C04CC)
5C04C8:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C04CA:  LDR             R0, [R0]; CMotionBlurStreaks::aStreaks ...
5C04CC:  LDR             R0, [R0,#(dword_A56654 - 0xA56600)]
5C04CE:  CBZ             R0, loc_5C0538
5C04D0:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C04D6)
5C04D2:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C04D4:  LDR             R1, [R0]; CMotionBlurStreaks::aStreaks ...
5C04D6:  VLDR            D16, [R1,#0x5C]
5C04DA:  VLDR            D17, [R1,#0x68]
5C04DE:  VLDR            D18, [R1,#0x8C]
5C04E2:  LDR.W           R12, [R1,#(dword_A56670 - 0xA56600)]
5C04E6:  LDR.W           R2, [R1,#(dword_A56694 - 0xA56600)]
5C04EA:  LDRB.W          R3, [R1,#(byte_A566A5 - 0xA56600)]
5C04EE:  LDR             R0, [R1,#(dword_A56664 - 0xA56600)]
5C04F0:  STR.W           R12, [R1,#(dword_A5667C - 0xA56600)]
5C04F4:  STR.W           R2, [R1,#(dword_A566A0 - 0xA56600)]
5C04F8:  STRB.W          R3, [R1,#(byte_A566A6 - 0xA56600)]
5C04FC:  STR             R0, [R1,#(dword_A56670 - 0xA56600)]
5C04FE:  VSTR            D17, [R1,#0x74]
5C0502:  VSTR            D18, [R1,#0x98]
5C0506:  VSTR            D16, [R1,#0x68]
5C050A:  VLDR            D16, [R1,#0x80]
5C050E:  LDR.W           R0, [R1,#(dword_A56688 - 0xA56600)]
5C0512:  LDRB.W          R2, [R1,#(byte_A566A4 - 0xA56600)]
5C0516:  VSTR            D16, [R1,#0x8C]
5C051A:  STR.W           R0, [R1,#(dword_A56694 - 0xA56600)]
5C051E:  MOVS            R0, #0
5C0520:  STRB.W          R2, [R1,#(byte_A566A5 - 0xA56600)]
5C0524:  STRB.W          R0, [R1,#(byte_A566A4 - 0xA56600)]
5C0528:  ORR.W           R1, R2, R3
5C052C:  LSLS            R1, R1, #0x18
5C052E:  BNE             loc_5C0538
5C0530:  LDR             R1, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C0536)
5C0532:  ADD             R1, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0534:  LDR             R1, [R1]; CMotionBlurStreaks::aStreaks ...
5C0536:  STR             R0, [R1,#(dword_A56654 - 0xA56600)]
5C0538:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C053E)
5C053A:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C053C:  LDR             R0, [R0]; CMotionBlurStreaks::aStreaks ...
5C053E:  LDR.W           R0, [R0,#(dword_A566A8 - 0xA56600)]
5C0542:  CBZ             R0, loc_5C05B2
5C0544:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C054A)
5C0546:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0548:  LDR             R1, [R0]; CMotionBlurStreaks::aStreaks ...
5C054A:  VLDR            D16, [R1,#0xB0]
5C054E:  VLDR            D17, [R1,#0xBC]
5C0552:  VLDR            D18, [R1,#0xE0]
5C0556:  LDR.W           R12, [R1,#(dword_A566C4 - 0xA56600)]
5C055A:  LDR.W           R2, [R1,#(dword_A566E8 - 0xA56600)]
5C055E:  LDRB.W          R3, [R1,#(byte_A566F9 - 0xA56600)]
5C0562:  LDR.W           R0, [R1,#(dword_A566B8 - 0xA56600)]
5C0566:  STR.W           R12, [R1,#(dword_A566D0 - 0xA56600)]
5C056A:  STR.W           R2, [R1,#(dword_A566F4 - 0xA56600)]
5C056E:  STRB.W          R3, [R1,#(byte_A566FA - 0xA56600)]
5C0572:  STR.W           R0, [R1,#(dword_A566C4 - 0xA56600)]
5C0576:  VSTR            D17, [R1,#0xC8]
5C057A:  VSTR            D18, [R1,#0xEC]
5C057E:  VSTR            D16, [R1,#0xBC]
5C0582:  VLDR            D16, [R1,#0xD4]
5C0586:  LDR.W           R0, [R1,#(dword_A566DC - 0xA56600)]
5C058A:  LDRB.W          R2, [R1,#(byte_A566F8 - 0xA56600)]
5C058E:  VSTR            D16, [R1,#0xE0]
5C0592:  STR.W           R0, [R1,#(dword_A566E8 - 0xA56600)]
5C0596:  MOVS            R0, #0
5C0598:  STRB.W          R2, [R1,#(byte_A566F9 - 0xA56600)]
5C059C:  STRB.W          R0, [R1,#(byte_A566F8 - 0xA56600)]
5C05A0:  ORR.W           R1, R2, R3
5C05A4:  LSLS            R1, R1, #0x18
5C05A6:  BNE             loc_5C05B2
5C05A8:  LDR             R1, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C05AE)
5C05AA:  ADD             R1, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C05AC:  LDR             R1, [R1]; CMotionBlurStreaks::aStreaks ...
5C05AE:  STR.W           R0, [R1,#(dword_A566A8 - 0xA56600)]
5C05B2:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C05B8)
5C05B4:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C05B6:  LDR             R0, [R0]; CMotionBlurStreaks::aStreaks ...
5C05B8:  LDR.W           R0, [R0,#(dword_A566FC - 0xA56600)]
5C05BC:  CBZ             R0, locret_5C062E
5C05BE:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C05C4)
5C05C0:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C05C2:  LDR             R1, [R0]; CMotionBlurStreaks::aStreaks ...
5C05C4:  VLDR            D16, [R1,#0x104]
5C05C8:  VLDR            D17, [R1,#0x110]
5C05CC:  VLDR            D18, [R1,#0x134]
5C05D0:  LDR.W           R12, [R1,#(dword_A56718 - 0xA56600)]
5C05D4:  LDR.W           R2, [R1,#(dword_A5673C - 0xA56600)]
5C05D8:  LDRB.W          R3, [R1,#(byte_A5674D - 0xA56600)]
5C05DC:  LDR.W           R0, [R1,#(dword_A5670C - 0xA56600)]
5C05E0:  STR.W           R12, [R1,#(dword_A56724 - 0xA56600)]
5C05E4:  STR.W           R2, [R1,#(dword_A56748 - 0xA56600)]
5C05E8:  STRB.W          R3, [R1,#(byte_A5674E - 0xA56600)]
5C05EC:  STR.W           R0, [R1,#(dword_A56718 - 0xA56600)]
5C05F0:  VSTR            D17, [R1,#0x11C]
5C05F4:  VSTR            D18, [R1,#0x140]
5C05F8:  VSTR            D16, [R1,#0x110]
5C05FC:  VLDR            D16, [R1,#0x128]
5C0600:  LDR.W           R0, [R1,#(dword_A56730 - 0xA56600)]
5C0604:  LDRB.W          R2, [R1,#(byte_A5674C - 0xA56600)]
5C0608:  VSTR            D16, [R1,#0x134]
5C060C:  STR.W           R0, [R1,#(dword_A5673C - 0xA56600)]
5C0610:  MOVS            R0, #0
5C0612:  STRB.W          R2, [R1,#(byte_A5674D - 0xA56600)]
5C0616:  STRB.W          R0, [R1,#(byte_A5674C - 0xA56600)]
5C061A:  ORR.W           R1, R2, R3
5C061E:  LSLS            R1, R1, #0x18
5C0620:  IT NE
5C0622:  BXNE            LR
5C0624:  LDR             R1, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C062A)
5C0626:  ADD             R1, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0628:  LDR             R1, [R1]; CMotionBlurStreaks::aStreaks ...
5C062A:  STR.W           R0, [R1,#(dword_A566FC - 0xA56600)]
5C062E:  BX              LR
