; =========================================================
; Game Engine Function: png_get_int_32
; Address            : 0x1FD566 - 0x1FD592
; =========================================================

1FD566:  LDRB            R2, [R0,#1]
1FD568:  LDRB            R1, [R0]
1FD56A:  LDRB            R3, [R0,#2]
1FD56C:  LSLS            R2, R2, #0x10
1FD56E:  LDRB            R0, [R0,#3]
1FD570:  ORR.W           R2, R2, R1,LSL#24
1FD574:  LSLS            R1, R1, #0x18
1FD576:  ORR.W           R2, R2, R3,LSL#8
1FD57A:  CMP.W           R1, #0xFFFFFFFF
1FD57E:  ORR.W           R0, R0, R2
1FD582:  IT GT
1FD584:  BXGT            LR
1FD586:  NEGS            R1, R0
1FD588:  CMP.W           R1, #0xFFFFFFFF
1FD58C:  IT LE
1FD58E:  MOVLE           R0, #0
1FD590:  BX              LR
