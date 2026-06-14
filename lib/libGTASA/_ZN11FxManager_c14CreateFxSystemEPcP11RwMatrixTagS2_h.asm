; =========================================================
; Game Engine Function: _ZN11FxManager_c14CreateFxSystemEPcP11RwMatrixTagS2_h
; Address            : 0x36D624 - 0x36D692
; =========================================================

36D624:  PUSH            {R4-R7,LR}
36D626:  ADD             R7, SP, #0xC
36D628:  PUSH.W          {R8,R9,R11}
36D62C:  SUB             SP, SP, #0x88
36D62E:  MOV             R6, R0
36D630:  LDR             R0, =(__stack_chk_guard_ptr - 0x36D63A)
36D632:  MOV             R4, R1
36D634:  MOV             R8, R3
36D636:  ADD             R0, PC; __stack_chk_guard_ptr
36D638:  MOV             R5, R2
36D63A:  LDR             R0, [R0]; __stack_chk_guard
36D63C:  LDR             R0, [R0]
36D63E:  STR             R0, [SP,#0xA0+var_1C]
36D640:  MOV             R0, R4; this
36D642:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36D646:  LDR.W           R9, [R7,#arg_0]
36D64A:  LDR             R1, [R6]
36D64C:  CBNZ            R1, loc_36D654
36D64E:  B               loc_36D65C
36D650:  LDR             R1, [R1,#4]
36D652:  CBZ             R1, loc_36D65C
36D654:  LDR             R2, [R1,#8]
36D656:  CMP             R0, R2
36D658:  BNE             loc_36D650
36D65A:  B               loc_36D66A
36D65C:  LDR             R1, =(aCannotFindFxSy - 0x36D666); "Cannot Find Fx System Blueprint - %s"
36D65E:  ADD             R0, SP, #0xA0+var_9C
36D660:  MOV             R2, R4
36D662:  ADD             R1, PC; "Cannot Find Fx System Blueprint - %s"
36D664:  BL              sub_5E6BC0
36D668:  MOVS            R1, #0
36D66A:  MOV             R0, R6
36D66C:  MOV             R2, R5
36D66E:  MOV             R3, R8
36D670:  STR.W           R9, [SP,#0xA0+var_A0]
36D674:  BLX             j__ZN11FxManager_c14CreateFxSystemEP12FxSystemBP_cP11RwMatrixTagS3_h; FxManager_c::CreateFxSystem(FxSystemBP_c *,RwMatrixTag *,RwMatrixTag *,uchar)
36D678:  LDR             R1, =(__stack_chk_guard_ptr - 0x36D680)
36D67A:  LDR             R2, [SP,#0xA0+var_1C]
36D67C:  ADD             R1, PC; __stack_chk_guard_ptr
36D67E:  LDR             R1, [R1]; __stack_chk_guard
36D680:  LDR             R1, [R1]
36D682:  SUBS            R1, R1, R2
36D684:  ITTT EQ
36D686:  ADDEQ           SP, SP, #0x88
36D688:  POPEQ.W         {R8,R9,R11}
36D68C:  POPEQ           {R4-R7,PC}
36D68E:  BLX             __stack_chk_fail
