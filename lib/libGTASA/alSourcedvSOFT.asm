; =========================================================
; Game Engine Function: alSourcedvSOFT
; Address            : 0x2576F0 - 0x257884
; =========================================================

2576F0:  PUSH            {R4-R7,LR}
2576F2:  ADD             R7, SP, #0xC
2576F4:  PUSH.W          {R8}
2576F8:  SUB             SP, SP, #0x10
2576FA:  MOV             R6, R2
2576FC:  MOV             R8, R1
2576FE:  MOV             R5, R0
257700:  BLX             j_GetContextRef
257704:  MOV             R4, R0
257706:  CMP             R4, #0
257708:  BEQ.W           loc_257844
25770C:  ADD.W           R0, R4, #8
257710:  MOV             R1, R5
257712:  BLX             j_LookupUIntMapKey
257716:  CMP             R0, #0
257718:  BEQ             loc_257774
25771A:  CMP             R6, #0
25771C:  BEQ.W           loc_2577A8
257720:  MOVS            R1, #1
257722:  CMP.W           R8, #0x1200
257726:  BGT.W           loc_2577E4
25772A:  MOVW            R2, #0x1001
25772E:  SUB.W           R2, R8, R2
257732:  CMP             R2, #0x32 ; '2'; switch 51 cases
257734:  BHI.W           def_257738; jumptable 00257738 default case
257738:  TBB.W           [PC,R2]; switch jump
25773C:  DCB 0x70; jump table for switch statement
25773D:  DCB 0x70
25773E:  DCB 0x70
25773F:  DCB 0x1A
257740:  DCB 0x1A
257741:  DCB 0x1A
257742:  DCB 0x70
257743:  DCB 0x88
257744:  DCB 0x70
257745:  DCB 0x70
257746:  DCB 0x88
257747:  DCB 0x88
257748:  DCB 0x70
257749:  DCB 0x70
25774A:  DCB 0x88
25774B:  DCB 0x70
25774C:  DCB 0x88
25774D:  DCB 0x88
25774E:  DCB 0x88
25774F:  DCB 0x88
257750:  DCB 0x70
257751:  DCB 0x70
257752:  DCB 0x88
257753:  DCB 0x88
257754:  DCB 0x88
257755:  DCB 0x88
257756:  DCB 0x88
257757:  DCB 0x88
257758:  DCB 0x88
257759:  DCB 0x88
25775A:  DCB 0x88
25775B:  DCB 0x70
25775C:  DCB 0x70
25775D:  DCB 0x70
25775E:  DCB 0x70
25775F:  DCB 0x70
257760:  DCB 0x70
257761:  DCB 0x70
257762:  DCB 0x70
257763:  DCB 0x88
257764:  DCB 0x88
257765:  DCB 0x88
257766:  DCB 0x88
257767:  DCB 0x88
257768:  DCB 0x88
257769:  DCB 0x88
25776A:  DCB 0x88
25776B:  DCB 0x88
25776C:  DCB 0x6A
25776D:  DCB 0x6A
25776E:  DCB 0x70
25776F:  ALIGN 2
257770:  MOVS            R1, #3; jumptable 00257738 cases 3-5
257772:  B               loc_25781C; jumptable 00257738 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
257774:  LDR             R0, =(TrapALError_ptr - 0x25777A)
257776:  ADD             R0, PC; TrapALError_ptr
257778:  LDR             R0, [R0]; TrapALError
25777A:  LDRB            R0, [R0]
25777C:  CMP             R0, #0
25777E:  ITT NE
257780:  MOVNE           R0, #5; sig
257782:  BLXNE           raise
257786:  LDREX.W         R0, [R4,#0x50]
25778A:  CBNZ            R0, loc_2577DA
25778C:  ADD.W           R0, R4, #0x50 ; 'P'
257790:  MOVW            R1, #0xA001
257794:  DMB.W           ISH
257798:  STREX.W         R2, R1, [R0]
25779C:  CBZ             R2, loc_2577DE
25779E:  LDREX.W         R2, [R0]
2577A2:  CMP             R2, #0
2577A4:  BEQ             loc_257798
2577A6:  B               loc_2577DA
2577A8:  LDR             R0, =(TrapALError_ptr - 0x2577AE)
2577AA:  ADD             R0, PC; TrapALError_ptr
2577AC:  LDR             R0, [R0]; TrapALError
2577AE:  LDRB            R0, [R0]
2577B0:  CMP             R0, #0
2577B2:  ITT NE
2577B4:  MOVNE           R0, #5; sig
2577B6:  BLXNE           raise
2577BA:  LDREX.W         R0, [R4,#0x50]
2577BE:  CBNZ            R0, loc_2577DA
2577C0:  ADD.W           R0, R4, #0x50 ; 'P'
2577C4:  MOVW            R1, #0xA003
2577C8:  DMB.W           ISH
2577CC:  STREX.W         R2, R1, [R0]
2577D0:  CBZ             R2, loc_2577DE
2577D2:  LDREX.W         R2, [R0]
2577D6:  CMP             R2, #0
2577D8:  BEQ             loc_2577CC
2577DA:  CLREX.W
2577DE:  DMB.W           ISH
2577E2:  B               loc_25783E
2577E4:  MOVS            R2, #0x20006
2577EA:  CMP             R8, R2
2577EC:  BLE             loc_2577FA
2577EE:  SUB.W           R2, R8, #0x20000
2577F2:  SUBS            R2, #7
2577F4:  CMP             R2, #6
2577F6:  BCC             loc_25781C; jumptable 00257738 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2577F8:  B               loc_25784C; jumptable 00257738 cases 7,10,11,14,16-19,22-30,39-47
2577FA:  MOVW            R2, #0x1201
2577FE:  CMP             R8, R2
257800:  BEQ             loc_257810; jumptable 00257738 cases 48,49
257802:  CMP.W           R8, #0xC000
257806:  IT NE
257808:  CMPNE.W         R8, #0xD000
25780C:  BEQ             loc_25781C; jumptable 00257738 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
25780E:  B               loc_25784C; jumptable 00257738 cases 7,10,11,14,16-19,22-30,39-47
257810:  MOVS            R1, #2; jumptable 00257738 cases 48,49
257812:  B               loc_25781C; jumptable 00257738 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
257814:  MOVW            R2, #0x202; jumptable 00257738 default case
257818:  CMP             R8, R2
25781A:  BNE             loc_25784C; jumptable 00257738 cases 7,10,11,14,16-19,22-30,39-47
25781C:  ADD             R3, SP, #0x20+var_1C; jumptable 00257738 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
25781E:  MOVS            R2, #0
257820:  VLDR            D16, [R6]
257824:  ADDS            R2, #1
257826:  ADDS            R6, #8
257828:  CMP             R2, R1
25782A:  VCVT.F32.F64    S0, D16
25782E:  VSTM            R3!, {S0}
257832:  BLT             loc_257820
257834:  ADD             R3, SP, #0x20+var_1C
257836:  MOV             R1, R4
257838:  MOV             R2, R8
25783A:  BL              sub_256840
25783E:  MOV             R0, R4
257840:  BLX             j_ALCcontext_DecRef
257844:  ADD             SP, SP, #0x10
257846:  POP.W           {R8}
25784A:  POP             {R4-R7,PC}
25784C:  LDR             R0, =(TrapALError_ptr - 0x257852); jumptable 00257738 cases 7,10,11,14,16-19,22-30,39-47
25784E:  ADD             R0, PC; TrapALError_ptr
257850:  LDR             R0, [R0]; TrapALError
257852:  LDRB            R0, [R0]
257854:  CMP             R0, #0
257856:  ITT NE
257858:  MOVNE           R0, #5; sig
25785A:  BLXNE           raise
25785E:  LDREX.W         R0, [R4,#0x50]
257862:  CMP             R0, #0
257864:  BNE             loc_2577DA
257866:  ADD.W           R0, R4, #0x50 ; 'P'
25786A:  MOVW            R1, #0xA002
25786E:  DMB.W           ISH
257872:  STREX.W         R2, R1, [R0]
257876:  CMP             R2, #0
257878:  BEQ             loc_2577DE
25787A:  LDREX.W         R2, [R0]
25787E:  CMP             R2, #0
257880:  BEQ             loc_257872
257882:  B               loc_2577DA
