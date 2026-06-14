; =========================================================
; Game Engine Function: sub_20D7B4
; Address            : 0x20D7B4 - 0x20D9D6
; =========================================================

20D7B4:  PUSH            {R4-R7,LR}
20D7B6:  ADD             R7, SP, #0xC
20D7B8:  PUSH.W          {R7-R11}
20D7BC:  MOV             R8, R1
20D7BE:  MOV             R10, R0
20D7C0:  CBZ             R2, loc_20D7DC
20D7C2:  LDRB.W          R1, [R8]
20D7C6:  LDR.W           R0, [R8,#4]
20D7CA:  LSLS            R2, R1, #0x1F
20D7CC:  IT EQ
20D7CE:  LSREQ           R0, R1, #1
20D7D0:  SUBS            R0, #4
20D7D2:  CLZ.W           R0, R0
20D7D6:  MOV.W           R9, R0,LSR#5
20D7DA:  B               loc_20D7E0
20D7DC:  MOV.W           R9, #0
20D7E0:  LDRD.W          R5, R4, [R7,#arg_0]
20D7E4:  CMP             R3, #1
20D7E6:  BEQ             loc_20D82C
20D7E8:  CMP             R3, #0
20D7EA:  BNE.W           def_20D81E; jumptable 0020D81E default case
20D7EE:  CMP.W           R9, #0
20D7F2:  BEQ             loc_20D818
20D7F4:  LDRB.W          R0, [R8]
20D7F8:  LDR.W           R6, [R8,#8]
20D7FC:  LSLS            R0, R0, #0x1F
20D7FE:  IT EQ
20D800:  ADDEQ.W         R6, R8, #4
20D804:  MOV             R0, R8
20D806:  ADD.W           R11, R6, #0xC
20D80A:  BL              sub_1FF450
20D80E:  MOV             R2, R0
20D810:  MOV             R0, R6
20D812:  MOV             R1, R11
20D814:  BL              sub_20E8A6
20D818:  CMP             R4, #4; switch 5 cases
20D81A:  BHI.W           def_20D81E; jumptable 0020D81E default case
20D81E:  TBB.W           [PC,R4]; switch jump
20D822:  DCB 3; jump table for switch statement
20D823:  DCB 0x27
20D824:  DCB 0x35
20D825:  DCB 0x41
20D826:  DCB 0x1A
20D827:  ALIGN 2
20D828:  LDR             R0, =0x2000403; jumptable 0020D81E case 0
20D82A:  B               loc_20D8C2
20D82C:  CMP             R4, #4; switch 5 cases
20D82E:  BHI             def_20D81E; jumptable 0020D81E default case
20D830:  TBB.W           [PC,R4]; switch jump
20D834:  DCB 0x46; jump table for switch statement
20D835:  DCB 3
20D836:  DCB 0x4F
20D837:  DCB 3
20D838:  DCB 0x5D
20D839:  ALIGN 2
20D83A:  MOVS            R0, #4; jumptable 0020D830 cases 1,3
20D83C:  STRB.W          R0, [R10,#3]
20D840:  MOVS            R0, #3
20D842:  CMP             R5, #2
20D844:  STRB.W          R0, [R10]
20D848:  BEQ             loc_20D918
20D84A:  CMP             R5, #1
20D84C:  BEQ             loc_20D914
20D84E:  CMP             R5, #0
20D850:  BNE             def_20D81E; jumptable 0020D81E default case
20D852:  MOVS            R0, #2
20D854:  B               loc_20D93A
20D856:  MOVS            R0, #3; jumptable 0020D81E case 4
20D858:  STRB.W          R0, [R10,#3]
20D85C:  MOVS            R0, #4
20D85E:  CMP             R5, #2
20D860:  STRB.W          R0, [R10]
20D864:  BEQ             loc_20D91E
20D866:  CMP             R5, #1
20D868:  BNE             loc_20D8A0
20D86A:  MOV.W           R0, #0x200
20D86E:  B               loc_20D958
20D870:  MOVS            R0, #2; jumptable 0020D81E case 1
20D872:  STRB.W          R0, [R10,#3]
20D876:  MOVS            R0, #3
20D878:  CMP             R5, #2
20D87A:  STRB.W          R0, [R10]
20D87E:  BEQ             loc_20D94C
20D880:  CMP             R5, #1
20D882:  BEQ             loc_20D952
20D884:  CMP             R5, #0
20D886:  BNE             def_20D81E; jumptable 0020D81E default case
20D888:  MOVS            R0, #4
20D88A:  B               loc_20D93A
20D88C:  MOVS            R0, #3; jumptable 0020D81E case 2
20D88E:  STRB.W          R0, [R10,#3]
20D892:  MOVS            R0, #4
20D894:  CMP             R5, #2
20D896:  STRB.W          R0, [R10]
20D89A:  BEQ             loc_20D91E
20D89C:  CMP             R5, #1
20D89E:  BEQ             loc_20D924
20D8A0:  CBNZ            R5, def_20D81E; jumptable 0020D81E default case
20D8A2:  B               loc_20D936
20D8A4:  MOVS            R0, #2; jumptable 0020D81E case 3
20D8A6:  STRB.W          R0, [R10,#3]
20D8AA:  MOVS            R0, #4
20D8AC:  CMP             R5, #2
20D8AE:  STRB.W          R0, [R10]
20D8B2:  BEQ             loc_20D956
20D8B4:  CMP             R5, #1
20D8B6:  BEQ             loc_20D970
20D8B8:  CBNZ            R5, def_20D81E; jumptable 0020D81E default case
20D8BA:  MOV.W           R0, #0x300
20D8BE:  B               loc_20D93A
20D8C0:  LDR             R0, =0x4000203; jumptable 0020D830 case 0
20D8C2:  STR.W           R0, [R10]
20D8C6:  CBZ             R5, loc_20D90E
20D8C8:  CMP             R5, #2
20D8CA:  BEQ             loc_20D90E
20D8CC:  CMP             R5, #1
20D8CE:  BNE             def_20D81E; jumptable 0020D81E default case
20D8D0:  B               loc_20D95C
20D8D2:  MOVS            R0, #3; jumptable 0020D830 case 2
20D8D4:  STRB.W          R0, [R10,#3]
20D8D8:  MOVS            R0, #2
20D8DA:  CMP             R5, #2
20D8DC:  STRB.W          R0, [R10]
20D8E0:  BEQ             loc_20D99C
20D8E2:  CMP             R5, #1
20D8E4:  BEQ             loc_20D9B8
20D8E6:  CBNZ            R5, def_20D81E; jumptable 0020D81E default case
20D8E8:  MOV.W           R0, #0x400
20D8EC:  B               loc_20D93A
20D8EE:  MOVS            R0, #4; jumptable 0020D830 case 4
20D8F0:  STRB.W          R0, [R10,#3]
20D8F4:  MOVS            R0, #2
20D8F6:  CMP             R5, #2
20D8F8:  STRB.W          R0, [R10]
20D8FC:  BEQ             loc_20D940
20D8FE:  CMP             R5, #1
20D900:  BEQ             loc_20D946
20D902:  CBNZ            R5, def_20D81E; jumptable 0020D81E default case
20D904:  MOVS            R0, #3
20D906:  B               loc_20D93A
20D908:  LDR             R0, =0x4000302; jumptable 0020D81E default case
20D90A:  STR.W           R0, [R10]
20D90E:  POP.W           {R3,R8-R11}
20D912:  POP             {R4-R7,PC}
20D914:  MOVS            R0, #2
20D916:  B               loc_20D9BC
20D918:  MOVW            R0, #0x201
20D91C:  B               loc_20D9A0
20D91E:  MOV.W           R0, #0x102
20D922:  B               loc_20D974
20D924:  CMP.W           R9, #0
20D928:  BNE             loc_20D936
20D92A:  MOV             R0, R8
20D92C:  MOVS            R1, #0
20D92E:  MOVS            R2, #1
20D930:  MOVS            R3, #0x20 ; ' '
20D932:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6insertEjjw; std::wstring::insert(uint,uint,wchar_t)
20D936:  MOV.W           R0, #0x200
20D93A:  STRH.W          R0, [R10,#1]
20D93E:  B               loc_20D90E
20D940:  MOV.W           R0, #0x300
20D944:  B               loc_20D9BC
20D946:  MOVW            R0, #0x103
20D94A:  B               loc_20D9A0
20D94C:  MOVW            R0, #0x401
20D950:  B               loc_20D974
20D952:  MOVS            R0, #4
20D954:  B               loc_20D958
20D956:  MOVS            R0, #3
20D958:  STRH.W          R0, [R10,#1]
20D95C:  CMP.W           R9, #0
20D960:  BNE             loc_20D90E
20D962:  MOV             R0, R8
20D964:  MOVS            R1, #0
20D966:  MOVS            R2, #1
20D968:  MOVS            R3, #0x20 ; ' '
20D96A:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6insertEjjw; std::wstring::insert(uint,uint,wchar_t)
20D96E:  B               loc_20D90E
20D970:  MOVW            R0, #0x301
20D974:  CMP.W           R9, #0
20D978:  STRH.W          R0, [R10,#1]
20D97C:  BEQ             loc_20D90E
20D97E:  LDRB.W          R0, [R8]
20D982:  LDR.W           R1, [R8,#8]
20D986:  LSLS            R0, R0, #0x1F
20D988:  IT EQ
20D98A:  ADDEQ.W         R1, R8, #4
20D98E:  MOV             R0, R8
20D990:  POP.W           {R3,R8-R11}
20D994:  POP.W           {R4-R7,LR}
20D998:  B.W             sub_20E8C4
20D99C:  MOV.W           R0, #0x104
20D9A0:  CMP.W           R9, #0
20D9A4:  STRH.W          R0, [R10,#1]
20D9A8:  BEQ             loc_20D90E
20D9AA:  MOV             R0, R8
20D9AC:  POP.W           {R3,R8-R11}
20D9B0:  POP.W           {R4-R7,LR}
20D9B4:  B.W             sub_20E8E2
20D9B8:  MOV.W           R0, #0x400
20D9BC:  CMP.W           R9, #0
20D9C0:  STRH.W          R0, [R10,#1]
20D9C4:  BNE             loc_20D90E
20D9C6:  MOV             R0, R8
20D9C8:  MOVS            R1, #0x20 ; ' '
20D9CA:  POP.W           {R3,R8-R11}
20D9CE:  POP.W           {R4-R7,LR}
20D9D2:  B.W             sub_224838
