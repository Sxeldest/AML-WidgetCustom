; =========================================================
; Game Engine Function: mpg123_open
; Address            : 0x22F628 - 0x22F708
; =========================================================

22F628:  PUSH            {R4-R7,LR}
22F62A:  ADD             R7, SP, #0xC
22F62C:  PUSH.W          {R8}
22F630:  MOV             R5, R0
22F632:  MOV             R8, R1
22F634:  CMP             R5, #0
22F636:  BEQ             loc_22F6FE
22F638:  MOVW            R1, #0xB2E0
22F63C:  ADDS            R4, R5, R1
22F63E:  LDR             R0, [R5,R1]
22F640:  CBZ             R0, loc_22F64C
22F642:  LDR             R1, [R0,#4]
22F644:  CMP             R1, #0
22F646:  ITT NE
22F648:  MOVNE           R0, R5
22F64A:  BLXNE           R1
22F64C:  MOVS            R6, #0
22F64E:  STR             R6, [R4]
22F650:  LDR             R0, [R5,#4]
22F652:  CBZ             R0, loc_22F668
22F654:  MOVW            R0, #0xB2B8
22F658:  STR             R6, [R5,R0]
22F65A:  MOVW            R0, #0xB2BC
22F65E:  STR             R6, [R5,R0]
22F660:  MOVW            R0, #0xB2B0
22F664:  STR             R6, [R5,R0]
22F666:  STR             R6, [R5,#4]
22F668:  MOVW            R0, #0xB290
22F66C:  MOVW            R1, #0xB288
22F670:  STR             R6, [R5,R0]
22F672:  MOVW            R0, #0xB2A8
22F676:  MOVW            R2, #0xB28C
22F67A:  STR             R6, [R5,R0]
22F67C:  MOVW            R0, #0xA308
22F680:  ADD             R0, R5
22F682:  STR             R0, [R5,R1]
22F684:  MOVW            R1, #0x4834
22F688:  LDR             R1, [R5,R1]
22F68A:  STR             R0, [R5,R2]
22F68C:  MOVW            R0, #0x4830
22F690:  LDR             R0, [R5,R0]
22F692:  MOVW            R2, #0x9384
22F696:  STR             R6, [R5,R2]
22F698:  BLX             j___aeabi_memclr8_1
22F69C:  MOVW            R0, #0x9388
22F6A0:  MOV.W           R1, #0x1F00
22F6A4:  ADD             R0, R5
22F6A6:  BLX             j___aeabi_memclr8
22F6AA:  MOVW            R0, #0x4A70
22F6AE:  VMOV.I32        Q8, #0
22F6B2:  STRH            R6, [R5,R0]
22F6B4:  MOVW            R0, #0x4A60
22F6B8:  ADD             R0, R5
22F6BA:  MOVW            R1, #0x4808
22F6BE:  VST1.64         {D16-D17}, [R0]
22F6C2:  MOVW            R0, #0x4A50
22F6C6:  ADD             R0, R5
22F6C8:  VST1.64         {D16-D17}, [R0]
22F6CC:  ADD.W           R0, R5, #8
22F6D0:  BLX             j___aeabi_memclr8
22F6D4:  MOV             R0, R5
22F6D6:  BL              sub_225790
22F6DA:  MOVW            R1, #0x9324
22F6DE:  LDR             R0, [R5,R1]; p
22F6E0:  CBZ             R0, loc_22F6EC
22F6E2:  ADDS            R4, R5, R1
22F6E4:  BLX             free
22F6E8:  MOVS            R0, #0
22F6EA:  STR             R0, [R4]
22F6EC:  MOV             R0, R5
22F6EE:  MOV             R1, R8
22F6F0:  MOV.W           R2, #0xFFFFFFFF
22F6F4:  POP.W           {R8}
22F6F8:  POP.W           {R4-R7,LR}
22F6FC:  B               INT123_open_stream
22F6FE:  MOV.W           R0, #0xFFFFFFFF
22F702:  POP.W           {R8}
22F706:  POP             {R4-R7,PC}
