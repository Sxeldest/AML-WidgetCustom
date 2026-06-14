; =========================================================
; Game Engine Function: sub_225790
; Address            : 0x225790 - 0x225922
; =========================================================

225790:  PUSH            {R4-R7,LR}
225792:  ADD             R7, SP, #0xC
225794:  PUSH.W          {R8-R10}
225798:  VPUSH           {D8-D9}
22579C:  MOV             R4, R0
22579E:  MOVW            R1, #0xB530
2257A2:  LDR             R0, [R4,R1]; p
2257A4:  ADD.W           R9, R4, R1
2257A8:  CMP             R0, #0
2257AA:  IT NE
2257AC:  BLXNE           free
2257B0:  LDR             R0, =(off_685300 - 0x2257C2)
2257B2:  ADR             R1, dword_225930
2257B4:  VLD1.64         {D16-D17}, [R1@128]
2257B8:  MOVS            R6, #0
2257BA:  MOVW            R1, #0xB2F4
2257BE:  ADD             R0, PC; off_685300
2257C0:  STRD.W          R6, R6, [R9]
2257C4:  MOV.W           R8, #0xFFFFFFFF
2257C8:  STR.W           R6, [R9,#8]
2257CC:  VMOV.I32        Q4, #0
2257D0:  STR             R6, [R4,R1]
2257D2:  MOVW            R1, #0xB2E0
2257D6:  MOVW            R2, #0x4838
2257DA:  STR             R0, [R4,R1]
2257DC:  MOVW            R0, #0xB330
2257E0:  MOVS            R1, #0
2257E2:  STR             R6, [R4,R0]
2257E4:  MOVW            R0, #0xB334
2257E8:  MOVT            R1, #0xBFF0
2257EC:  STR             R6, [R4,R0]
2257EE:  MOVW            R0, #0x934C
2257F2:  STR             R1, [R4,R0]
2257F4:  MOVW            R0, #0x9348
2257F8:  MOV.W           R1, #0x24000
2257FC:  STR             R6, [R4,R0]
2257FE:  MOVW            R0, #0x9374
225802:  STR             R6, [R4,R0]
225804:  MOVW            R0, #0x9370
225808:  STR             R6, [R4,R0]
22580A:  MOVW            R0, #0xB2CC
22580E:  STR             R6, [R4,R0]
225810:  MOVW            R0, #0xB2C8
225814:  STR             R6, [R4,R0]
225816:  MOVW            R0, #0xB478
22581A:  STR             R6, [R4,R0]
22581C:  MOVW            R0, #0xB2C4
225820:  STR             R1, [R4,R0]
225822:  MOVW            R0, #0xB474
225826:  MOVS            R1, #1
225828:  STR             R6, [R4,R0]
22582A:  MOVW            R0, #0xB294
22582E:  STR             R6, [R4,R0]
225830:  MOVW            R0, #0xB298
225834:  STR             R6, [R4,R0]
225836:  MOVW            R0, #0xB29C
22583A:  STR             R6, [R4,R0]
22583C:  MOVW            R0, #0x9368
225840:  STR             R6, [R4,R0]
225842:  MOVW            R0, #0x936C
225846:  STR.W           R8, [R4,R0]
22584A:  MOVW            R0, #0x9308
22584E:  STR             R6, [R4,R0]
225850:  MOVW            R0, #0x9378
225854:  STR             R6, [R4,R0]
225856:  MOVW            R0, #0x930C
22585A:  STR             R6, [R4,R0]
22585C:  MOVW            R0, #0x9320
225860:  STRH            R1, [R4,R0]
225862:  MOVW            R0, #0xB320
225866:  ADD             R0, R4
225868:  VST1.32         {D8-D9}, [R0]
22586C:  MOVW            R0, #0x9310
225870:  ADD             R0, R4
225872:  VST1.64         {D16-D17}, [R0]
225876:  MOVW            R0, #0x9354
22587A:  STR.W           R8, [R4,R0]
22587E:  MOVW            R0, #0x9350
225882:  STR.W           R8, [R4,R0]
225886:  MOVW            R0, #0xB2D0
22588A:  STR             R6, [R4,R0]
22588C:  MOVW            R0, #0x937C
225890:  STR             R6, [R4,R0]
225892:  MOVW            R0, #0xB2D4
225896:  STR.W           R8, [R4,R0]
22589A:  MOVW            R0, #0xB460
22589E:  LDR             R0, [R4,R0]
2258A0:  STR             R1, [R4,R2]
2258A2:  NEGS            R0, R0
2258A4:  MOVW            R2, #0xB2D8
2258A8:  STR             R0, [R4,R2]
2258AA:  MOVW            R0, #0x9358
2258AE:  ADD             R0, R4
2258B0:  VST1.64         {D8-D9}, [R0]
2258B4:  MOV             R0, R4
2258B6:  STRD.W          R1, R6, [R4]
2258BA:  BLX             j_INT123_exit_id3
2258BE:  MOVW            R0, #0xB4FC
2258C2:  MOVW            R1, #0xB534
2258C6:  STRB            R6, [R4,R0]
2258C8:  MOVW            R0, #0xB520
2258CC:  ADD             R0, R4
2258CE:  ADDS            R5, R4, R1
2258D0:  VST1.32         {D8-D9}, [R0]
2258D4:  MOVW            R0, #0xB510
2258D8:  ADD             R0, R4
2258DA:  VST1.32         {D8-D9}, [R0]
2258DE:  ADD.W           R0, R4, #0xB500
2258E2:  VST1.32         {D8-D9}, [R0]
2258E6:  MOVW            R0, #0xB538
2258EA:  ADD.W           R10, R4, R0
2258EE:  LDR.W           R0, [R9]; p
2258F2:  CMP             R0, #0
2258F4:  IT NE
2258F6:  BLXNE           free
2258FA:  MOVW            R0, #0x92E0
2258FE:  STR.W           R6, [R9]
225902:  STR             R6, [R5]
225904:  STR.W           R6, [R10]
225908:  STR             R6, [R4,R0]
22590A:  MOVW            R0, #0x4A74
22590E:  STR             R6, [R4,R0]
225910:  MOVW            R0, #0x932C
225914:  STR.W           R8, [R4,R0]
225918:  VPOP            {D8-D9}
22591C:  POP.W           {R8-R10}
225920:  POP             {R4-R7,PC}
