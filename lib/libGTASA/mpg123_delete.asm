; =========================================================
; Game Engine Function: mpg123_delete
; Address            : 0x23376C - 0x233848
; =========================================================

23376C:  PUSH            {R4-R7,LR}
23376E:  ADD             R7, SP, #0xC
233770:  PUSH.W          {R11}
233774:  MOV             R4, R0
233776:  CMP             R4, #0
233778:  BEQ             loc_233842
23377A:  MOVW            R1, #0xB2E0
23377E:  ADDS            R6, R4, R1
233780:  LDR             R0, [R4,R1]
233782:  CBZ             R0, loc_23378E
233784:  LDR             R1, [R0,#4]
233786:  CMP             R1, #0
233788:  ITT NE
23378A:  MOVNE           R0, R4
23378C:  BLXNE           R1
23378E:  MOVS            R5, #0
233790:  STR             R5, [R6]
233792:  LDR             R0, [R4,#4]
233794:  CBZ             R0, loc_2337AA
233796:  MOVW            R0, #0xB2B8
23379A:  STR             R5, [R4,R0]
23379C:  MOVW            R0, #0xB2BC
2337A0:  STR             R5, [R4,R0]
2337A2:  MOVW            R0, #0xB2B0
2337A6:  STR             R5, [R4,R0]
2337A8:  STR             R5, [R4,#4]
2337AA:  MOVW            R0, #0xB290
2337AE:  MOVW            R1, #0xB288
2337B2:  STR             R5, [R4,R0]
2337B4:  MOVW            R0, #0xB2A8
2337B8:  MOVW            R2, #0xB28C
2337BC:  STR             R5, [R4,R0]
2337BE:  MOVW            R0, #0xA308
2337C2:  ADD             R0, R4
2337C4:  STR             R0, [R4,R1]
2337C6:  MOVW            R1, #0x4834
2337CA:  LDR             R1, [R4,R1]
2337CC:  STR             R0, [R4,R2]
2337CE:  MOVW            R0, #0x4830
2337D2:  LDR             R0, [R4,R0]
2337D4:  MOVW            R2, #0x9384
2337D8:  STR             R5, [R4,R2]
2337DA:  BLX             j___aeabi_memclr8_1
2337DE:  MOVW            R0, #0x9388
2337E2:  MOV.W           R1, #0x1F00
2337E6:  ADD             R0, R4
2337E8:  BLX             j___aeabi_memclr8
2337EC:  MOVW            R0, #0x4A70
2337F0:  VMOV.I32        Q8, #0
2337F4:  STRH            R5, [R4,R0]
2337F6:  MOVW            R0, #0x4A60
2337FA:  ADD             R0, R4
2337FC:  MOVW            R1, #0x4808
233800:  VST1.64         {D16-D17}, [R0]
233804:  MOVW            R0, #0x4A50
233808:  ADD             R0, R4
23380A:  VST1.64         {D16-D17}, [R0]
23380E:  ADD.W           R0, R4, #8
233812:  BLX             j___aeabi_memclr8
233816:  MOV             R0, R4
233818:  BL              sub_225790
23381C:  MOVW            R1, #0x9324
233820:  LDR             R0, [R4,R1]; p
233822:  CBZ             R0, loc_23382E
233824:  ADDS            R5, R4, R1
233826:  BLX             free
23382A:  MOVS            R0, #0
23382C:  STR             R0, [R5]
23382E:  MOV             R0, R4
233830:  BLX             j_INT123_frame_exit
233834:  MOV             R0, R4; p
233836:  POP.W           {R11}
23383A:  POP.W           {R4-R7,LR}
23383E:  B.W             j_free
233842:  POP.W           {R11}
233846:  POP             {R4-R7,PC}
