; =========================================================
; Game Engine Function: _Z14RtPNGImageReadPKc
; Address            : 0x20A474 - 0x20A73E
; =========================================================

20A474:  PUSH            {R4-R7,LR}
20A476:  ADD             R7, SP, #0xC
20A478:  PUSH.W          {R8,R9,R11}
20A47C:  SUB             SP, SP, #0x48
20A47E:  MOV             R2, R0
20A480:  CMP             R2, #0
20A482:  BEQ             loc_20A51E
20A484:  MOVS            R0, #2
20A486:  MOVS            R1, #1
20A488:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
20A48C:  MOV             R9, R0
20A48E:  MOVS            R5, #0
20A490:  CMP.W           R9, #0
20A494:  BEQ.W           loc_20A64E
20A498:  LDR             R1, =(loc_20A430+1 - 0x20A4A4)
20A49A:  MOVS            R3, #0
20A49C:  LDR             R0, =(a1634_1 - 0x20A4A6); "1.6.34"
20A49E:  LDR             R2, =(loc_20A444+1 - 0x20A4AA)
20A4A0:  ADD             R1, PC; loc_20A430
20A4A2:  ADD             R0, PC; "1.6.34"
20A4A4:  STR             R5, [SP,#0x60+var_24]
20A4A6:  ADD             R2, PC; loc_20A444
20A4A8:  STR             R5, [SP,#0x60+var_28]
20A4AA:  STR             R5, [SP,#0x60+var_2C]
20A4AC:  STR             R5, [SP,#0x60+var_30]
20A4AE:  STR             R5, [SP,#0x60+var_34]
20A4B0:  STR             R5, [SP,#0x60+var_38]
20A4B2:  STRD.W          R5, R1, [SP,#0x60+var_60]
20A4B6:  MOVS            R1, #0
20A4B8:  STR             R2, [SP,#0x60+var_58]
20A4BA:  MOVS            R2, #0
20A4BC:  BLX             j_png_create_read_struct_2
20A4C0:  STR             R0, [SP,#0x60+var_2C]
20A4C2:  LDR             R0, [SP,#0x60+var_2C]
20A4C4:  CMP             R0, #0
20A4C6:  BEQ.W           loc_20A644
20A4CA:  LDR             R0, [SP,#0x60+var_2C]
20A4CC:  BLX             j_png_create_info_struct
20A4D0:  STR             R0, [SP,#0x60+var_28]
20A4D2:  LDR             R0, [SP,#0x60+var_28]
20A4D4:  CBZ             R0, loc_20A536
20A4D6:  LDR             R1, =(longjmp_ptr_0 - 0x20A4E2)
20A4D8:  MOV.W           R2, #0x100
20A4DC:  LDR             R0, [SP,#0x60+var_2C]
20A4DE:  ADD             R1, PC; longjmp_ptr_0
20A4E0:  LDR             R1, [R1]; __imp_longjmp
20A4E2:  BLX             j_png_set_longjmp_fn
20A4E6:  BLX             setjmp
20A4EA:  CBZ             R0, loc_20A54C
20A4EC:  LDR             R0, [SP,#0x60+var_24]
20A4EE:  CBZ             R0, loc_20A504
20A4F0:  LDR             R0, =(RwEngineInstance_ptr - 0x20A4F6)
20A4F2:  ADD             R0, PC; RwEngineInstance_ptr
20A4F4:  LDR             R0, [R0]; RwEngineInstance
20A4F6:  LDR             R1, [R0]
20A4F8:  LDR             R0, [SP,#0x60+var_24]
20A4FA:  LDR.W           R1, [R1,#0x130]
20A4FE:  BLX             R1
20A500:  MOVS            R0, #0
20A502:  STR             R0, [SP,#0x60+var_24]
20A504:  MOV             R0, R9
20A506:  MOVS            R1, #0
20A508:  MOVS            R5, #0
20A50A:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
20A50E:  ADD             R0, SP, #0x60+var_2C
20A510:  ADD             R1, SP, #0x60+var_28
20A512:  MOVS            R2, #0
20A514:  BLX             j_png_destroy_read_struct
20A518:  STR             R5, [SP,#0x60+var_2C]
20A51A:  STR             R5, [SP,#0x60+var_28]
20A51C:  B               loc_20A64E
20A51E:  MOVS            R0, #0x16
20A520:  MOVS            R5, #0
20A522:  MOVT            R0, #0x8000; int
20A526:  STR             R5, [SP,#0x60+var_4C]
20A528:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
20A52C:  STR             R0, [SP,#0x60+var_48]
20A52E:  ADD             R0, SP, #0x60+var_4C
20A530:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
20A534:  B               loc_20A64E
20A536:  MOV             R0, R9
20A538:  MOVS            R1, #0
20A53A:  MOVS            R5, #0
20A53C:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
20A540:  ADD             R0, SP, #0x60+var_2C
20A542:  MOVS            R1, #0
20A544:  MOVS            R2, #0
20A546:  BLX             j_png_destroy_read_struct
20A54A:  B               loc_20A64E
20A54C:  LDR             R2, =(sub_20A760+1 - 0x20A556)
20A54E:  MOV             R1, R9
20A550:  LDR             R0, [SP,#0x60+var_2C]
20A552:  ADD             R2, PC; sub_20A760
20A554:  BLX             j_png_set_read_fn
20A558:  LDR             R0, [SP,#0x60+var_2C]
20A55A:  LDR             R1, [SP,#0x60+var_28]
20A55C:  BLX             j_png_read_info
20A560:  ADD             R6, SP, #0x60+var_1C
20A562:  LDR             R0, [SP,#0x60+var_2C]
20A564:  LDR             R1, [SP,#0x60+var_28]
20A566:  MOVS            R2, #0
20A568:  ADD             R3, SP, #0x60+var_20
20A56A:  ADD             R5, SP, #0x60+var_4C
20A56C:  STRD.W          R5, R6, [SP,#0x60+var_60]
20A570:  STRD.W          R3, R2, [SP,#0x60+var_58]
20A574:  ADD             R3, SP, #0x60+var_38
20A576:  STR             R2, [SP,#0x60+var_50]
20A578:  ADD             R2, SP, #0x60+var_34
20A57A:  BLX             j_png_get_IHDR
20A57E:  LDR             R0, [SP,#0x60+var_2C]
20A580:  BLX             j_png_set_strip_16
20A584:  LDR             R0, [SP,#0x60+var_1C]
20A586:  CMP             R0, #6; switch 7 cases
20A588:  BHI             def_20A58A; jumptable 0020A58A default case, cases 1,5
20A58A:  TBB.W           [PC,R0]; switch jump
20A58E:  DCB 4; jump table for switch statement
20A58F:  DCB 0x27
20A590:  DCB 0xD
20A591:  DCB 0x15
20A592:  DCB 0x1F
20A593:  DCB 0x27
20A594:  DCB 0x25
20A595:  ALIGN 2
20A596:  MOVS            R0, #8; jumptable 0020A58A case 0
20A598:  STR             R0, [SP,#0x60+var_30]
20A59A:  LDR             R0, [SP,#0x60+var_4C]
20A59C:  CMP             R0, #7
20A59E:  BGT             def_20A58A; jumptable 0020A58A default case, cases 1,5
20A5A0:  LDR             R0, [SP,#0x60+var_2C]
20A5A2:  BLX             j_png_set_expand_gray_1_2_4_to_8
20A5A6:  B               def_20A58A; jumptable 0020A58A default case, cases 1,5
20A5A8:  MOVS            R0, #0x20 ; ' '; jumptable 0020A58A case 2
20A5AA:  MOVS            R1, #0xFF
20A5AC:  STR             R0, [SP,#0x60+var_30]
20A5AE:  MOVS            R2, #1
20A5B0:  LDR             R0, [SP,#0x60+var_2C]
20A5B2:  BLX             j_png_set_filler
20A5B6:  B               def_20A58A; jumptable 0020A58A default case, cases 1,5
20A5B8:  MOVS            R0, #8; jumptable 0020A58A case 3
20A5BA:  STR             R0, [SP,#0x60+var_30]
20A5BC:  LDR             R0, [SP,#0x60+var_4C]
20A5BE:  CMP             R0, #7
20A5C0:  BGT             def_20A58A; jumptable 0020A58A default case, cases 1,5
20A5C2:  LDR             R0, [SP,#0x60+var_2C]
20A5C4:  BLX             j_png_set_packing
20A5C8:  MOVS            R0, #4
20A5CA:  B               loc_20A5DA
20A5CC:  MOVS            R0, #0x20 ; ' '; jumptable 0020A58A case 4
20A5CE:  STR             R0, [SP,#0x60+var_30]
20A5D0:  LDR             R0, [SP,#0x60+var_2C]
20A5D2:  BLX             j_png_set_gray_to_rgb
20A5D6:  B               def_20A58A; jumptable 0020A58A default case, cases 1,5
20A5D8:  MOVS            R0, #0x20 ; ' '; jumptable 0020A58A case 6
20A5DA:  STR             R0, [SP,#0x60+var_30]
20A5DC:  LDR             R0, [SP,#0x60+var_34]; jumptable 0020A58A default case, cases 1,5
20A5DE:  LDR             R1, [SP,#0x60+var_38]; int
20A5E0:  LDR             R2, [SP,#0x60+var_30]; int
20A5E2:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
20A5E6:  MOV             R5, R0
20A5E8:  CBZ             R5, loc_20A644
20A5EA:  MOV             R0, R5
20A5EC:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
20A5F0:  CBZ             R0, loc_20A63E
20A5F2:  LDR             R0, =(RwEngineInstance_ptr - 0x20A5F8)
20A5F4:  ADD             R0, PC; RwEngineInstance_ptr
20A5F6:  LDR             R0, [R0]; RwEngineInstance
20A5F8:  LDR             R0, [R0]
20A5FA:  LDRD.W          R6, R4, [R5,#0x10]
20A5FE:  LDR.W           R8, [R5,#0x18]
20A602:  LDR             R1, [SP,#0x60+var_38]
20A604:  LDR.W           R2, [R0,#0x12C]
20A608:  LSLS            R0, R1, #2
20A60A:  BLX             R2
20A60C:  STR             R0, [SP,#0x60+var_24]
20A60E:  LDR             R0, [SP,#0x60+var_24]
20A610:  CBZ             R0, loc_20A638
20A612:  LDR             R0, [SP,#0x60+var_38]
20A614:  CMP             R0, #1
20A616:  BLT             loc_20A62A
20A618:  MOVS            R0, #0
20A61A:  LDR             R1, [SP,#0x60+var_24]
20A61C:  STR.W           R4, [R1,R0,LSL#2]
20A620:  ADD             R4, R6
20A622:  ADDS            R0, #1
20A624:  LDR             R1, [SP,#0x60+var_38]
20A626:  CMP             R0, R1
20A628:  BLT             loc_20A61A
20A62A:  LDR             R0, [SP,#0x60+var_30]
20A62C:  CMP             R0, #4
20A62E:  BNE             loc_20A658
20A630:  CMP.W           R8, #0
20A634:  BNE             loc_20A664
20A636:  B               loc_20A70A
20A638:  MOV             R0, R5
20A63A:  BLX             j__Z17RwImageFreePixelsP7RwImage; RwImageFreePixels(RwImage *)
20A63E:  MOV             R0, R5
20A640:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
20A644:  MOVS            R5, #0
20A646:  MOV             R0, R9
20A648:  MOVS            R1, #0
20A64A:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
20A64E:  MOV             R0, R5
20A650:  ADD             SP, SP, #0x48 ; 'H'
20A652:  POP.W           {R8,R9,R11}
20A656:  POP             {R4-R7,PC}
20A658:  LDR             R0, [SP,#0x60+var_30]
20A65A:  CMP.W           R8, #0
20A65E:  BEQ             loc_20A70A
20A660:  CMP             R0, #8
20A662:  BNE             loc_20A70A
20A664:  LDR             R0, [SP,#0x60+var_30]
20A666:  CMP             R0, #0x1F
20A668:  BEQ             loc_20A68A
20A66A:  MOVS            R0, #0
20A66C:  MOVS            R1, #0xFF
20A66E:  MOVS            R2, #1
20A670:  ADD.W           R3, R8, R0,LSL#2
20A674:  STRB.W          R0, [R8,R0,LSL#2]
20A678:  STRB            R0, [R3,#1]
20A67A:  STRB            R0, [R3,#2]
20A67C:  ADDS            R0, #1
20A67E:  STRB            R1, [R3,#3]
20A680:  LDR             R3, [SP,#0x60+var_30]
20A682:  LSL.W           R3, R2, R3
20A686:  CMP             R0, R3
20A688:  BLT             loc_20A670
20A68A:  LDR             R0, [SP,#0x60+var_2C]
20A68C:  MOVS            R2, #8
20A68E:  LDR             R1, [SP,#0x60+var_28]
20A690:  BLX             j_png_get_valid
20A694:  CBZ             R0, loc_20A6D2
20A696:  LDR             R0, [SP,#0x60+var_2C]
20A698:  ADD             R2, SP, #0x60+var_3C
20A69A:  LDR             R1, [SP,#0x60+var_28]
20A69C:  ADD             R3, SP, #0x60+var_40
20A69E:  BLX             j_png_get_PLTE
20A6A2:  LDR             R0, [SP,#0x60+var_40]
20A6A4:  CMP             R0, #1
20A6A6:  BLT             loc_20A6D2
20A6A8:  MOVS            R0, #0
20A6AA:  LDR             R1, [SP,#0x60+var_3C]
20A6AC:  ADD.W           R2, R0, R0,LSL#1
20A6B0:  ADD.W           R3, R8, R0,LSL#2
20A6B4:  LDRB            R1, [R1,R2]
20A6B6:  STRB.W          R1, [R8,R0,LSL#2]
20A6BA:  ADDS            R0, #1
20A6BC:  LDR             R1, [SP,#0x60+var_3C]
20A6BE:  ADD             R1, R2
20A6C0:  LDRB            R1, [R1,#1]
20A6C2:  STRB            R1, [R3,#1]
20A6C4:  LDR             R1, [SP,#0x60+var_3C]
20A6C6:  ADD             R1, R2
20A6C8:  LDRB            R1, [R1,#2]
20A6CA:  STRB            R1, [R3,#2]
20A6CC:  LDR             R1, [SP,#0x60+var_40]
20A6CE:  CMP             R0, R1
20A6D0:  BLT             loc_20A6AA
20A6D2:  LDR             R0, [SP,#0x60+var_2C]
20A6D4:  MOVS            R2, #0x10
20A6D6:  LDR             R1, [SP,#0x60+var_28]
20A6D8:  BLX             j_png_get_valid
20A6DC:  CBZ             R0, loc_20A70A
20A6DE:  LDR             R0, [SP,#0x60+var_2C]
20A6E0:  ADD             R2, SP, #0x60+var_44
20A6E2:  LDR             R1, [SP,#0x60+var_28]
20A6E4:  ADD             R3, SP, #0x60+var_40
20A6E6:  STR             R2, [SP,#0x60+var_60]
20A6E8:  ADD             R2, SP, #0x60+var_3C
20A6EA:  BLX             j_png_get_tRNS
20A6EE:  LDR             R0, [SP,#0x60+var_40]
20A6F0:  CMP             R0, #1
20A6F2:  BLT             loc_20A70A
20A6F4:  ADD.W           R0, R8, #3
20A6F8:  MOVS            R1, #0
20A6FA:  LDR             R2, [SP,#0x60+var_3C]
20A6FC:  LDRB            R2, [R2,R1]
20A6FE:  STRB.W          R2, [R0,R1,LSL#2]
20A702:  ADDS            R1, #1
20A704:  LDR             R2, [SP,#0x60+var_40]
20A706:  CMP             R1, R2
20A708:  BLT             loc_20A6FA
20A70A:  LDR             R0, [SP,#0x60+var_2C]
20A70C:  LDR             R1, [SP,#0x60+var_24]
20A70E:  BLX             j_png_read_image
20A712:  LDR             R0, [SP,#0x60+var_2C]
20A714:  LDR             R1, [SP,#0x60+var_28]
20A716:  BLX             j_png_read_end
20A71A:  ADD             R0, SP, #0x60+var_2C
20A71C:  ADD             R1, SP, #0x60+var_28
20A71E:  MOVS            R2, #0
20A720:  MOVS            R4, #0
20A722:  BLX             j_png_destroy_read_struct
20A726:  LDR             R0, =(RwEngineInstance_ptr - 0x20A72C)
20A728:  ADD             R0, PC; RwEngineInstance_ptr
20A72A:  LDR             R0, [R0]; RwEngineInstance
20A72C:  LDR             R1, [R0]
20A72E:  STR             R4, [SP,#0x60+var_2C]
20A730:  STR             R4, [SP,#0x60+var_28]
20A732:  LDR             R0, [SP,#0x60+var_24]
20A734:  LDR.W           R1, [R1,#0x130]
20A738:  BLX             R1
20A73A:  STR             R4, [SP,#0x60+var_24]
20A73C:  B               loc_20A646
