; =========================================================
; Game Engine Function: sub_1335F8
; Address            : 0x1335F8 - 0x1337CE
; =========================================================

1335F8:  PUSH            {R4-R7,LR}
1335FA:  ADD             R7, SP, #0xC
1335FC:  PUSH.W          {R11}
133600:  SUB             SP, SP, #0x18
133602:  MOV             R5, R0
133604:  LDR             R6, [R0,#8]
133606:  LDR             R0, [R0,#0x64]
133608:  MOV             R4, SP
13360A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_2NS_9allocatorIS4_EEFvvEEE - 0x133612); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_2,std::allocator<menu::content::init_callbacks(void)::$_2>,void ()(void)> ...
13360C:  STR             R4, [SP,#0x28+var_18]
13360E:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_2,std::allocator<menu::content::init_callbacks(void)::$_2>,void ()(void)>
133610:  STR             R6, [SP,#0x28+var_24]
133612:  ADDS            R1, #8
133614:  STR             R1, [SP,#0x28+var_28]
133616:  ADDS            R0, #0x58 ; 'X'
133618:  MOV             R1, R4
13361A:  BL              sub_12C504
13361E:  LDR             R0, [SP,#0x28+var_18]
133620:  CMP             R4, R0
133622:  BEQ             loc_13362A
133624:  CBZ             R0, loc_133634
133626:  MOVS            R1, #5
133628:  B               loc_13362C
13362A:  MOVS            R1, #4
13362C:  LDR             R2, [R0]
13362E:  LDR.W           R1, [R2,R1,LSL#2]
133632:  BLX             R1
133634:  LDR             R0, [R5,#0x68]
133636:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_3NS_9allocatorIS4_EEFvvEEE - 0x13363E); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_3,std::allocator<menu::content::init_callbacks(void)::$_3>,void ()(void)> ...
133638:  STR             R4, [SP,#0x28+var_18]
13363A:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_3,std::allocator<menu::content::init_callbacks(void)::$_3>,void ()(void)>
13363C:  STR             R6, [SP,#0x28+var_24]
13363E:  ADDS            R1, #8
133640:  STR             R1, [SP,#0x28+var_28]
133642:  ADDS            R0, #0x58 ; 'X'
133644:  MOV             R1, R4
133646:  BL              sub_12C504
13364A:  LDR             R0, [SP,#0x28+var_18]
13364C:  CMP             R4, R0
13364E:  BEQ             loc_133656
133650:  CBZ             R0, loc_133660
133652:  MOVS            R1, #5
133654:  B               loc_133658
133656:  MOVS            R1, #4
133658:  LDR             R2, [R0]
13365A:  LDR.W           R1, [R2,R1,LSL#2]
13365E:  BLX             R1
133660:  LDR             R0, [R5,#0x6C]
133662:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_4NS_9allocatorIS4_EEFvvEEE - 0x13366A); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_4,std::allocator<menu::content::init_callbacks(void)::$_4>,void ()(void)> ...
133664:  STR             R4, [SP,#0x28+var_18]
133666:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_4,std::allocator<menu::content::init_callbacks(void)::$_4>,void ()(void)>
133668:  STR             R6, [SP,#0x28+var_24]
13366A:  ADDS            R1, #8
13366C:  STR             R1, [SP,#0x28+var_28]
13366E:  ADDS            R0, #0x58 ; 'X'
133670:  MOV             R1, R4
133672:  BL              sub_12C504
133676:  LDR             R0, [SP,#0x28+var_18]
133678:  CMP             R4, R0
13367A:  BEQ             loc_133682
13367C:  CBZ             R0, loc_13368C
13367E:  MOVS            R1, #5
133680:  B               loc_133684
133682:  MOVS            R1, #4
133684:  LDR             R2, [R0]
133686:  LDR.W           R1, [R2,R1,LSL#2]
13368A:  BLX             R1
13368C:  LDR             R0, [R5,#0x70]
13368E:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_5NS_9allocatorIS4_EEFvvEEE - 0x133696); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_5,std::allocator<menu::content::init_callbacks(void)::$_5>,void ()(void)> ...
133690:  STR             R4, [SP,#0x28+var_18]
133692:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_5,std::allocator<menu::content::init_callbacks(void)::$_5>,void ()(void)>
133694:  STR             R6, [SP,#0x28+var_24]
133696:  ADDS            R1, #8
133698:  STR             R1, [SP,#0x28+var_28]
13369A:  ADDS            R0, #0x58 ; 'X'
13369C:  MOV             R1, R4
13369E:  BL              sub_12C504
1336A2:  LDR             R0, [SP,#0x28+var_18]
1336A4:  CMP             R4, R0
1336A6:  BEQ             loc_1336AE
1336A8:  CBZ             R0, loc_1336B8
1336AA:  MOVS            R1, #5
1336AC:  B               loc_1336B0
1336AE:  MOVS            R1, #4
1336B0:  LDR             R2, [R0]
1336B2:  LDR.W           R1, [R2,R1,LSL#2]
1336B6:  BLX             R1
1336B8:  LDR             R0, [R5,#0x74]
1336BA:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_6NS_9allocatorIS4_EEFvvEEE - 0x1336C2); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_6,std::allocator<menu::content::init_callbacks(void)::$_6>,void ()(void)> ...
1336BC:  STR             R4, [SP,#0x28+var_18]
1336BE:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_6,std::allocator<menu::content::init_callbacks(void)::$_6>,void ()(void)>
1336C0:  STR             R6, [SP,#0x28+var_24]
1336C2:  ADDS            R1, #8
1336C4:  STR             R1, [SP,#0x28+var_28]
1336C6:  ADDS            R0, #0x58 ; 'X'
1336C8:  MOV             R1, R4
1336CA:  BL              sub_12C504
1336CE:  LDR             R0, [SP,#0x28+var_18]
1336D0:  CMP             R4, R0
1336D2:  BEQ             loc_1336DA
1336D4:  CBZ             R0, loc_1336E4
1336D6:  MOVS            R1, #5
1336D8:  B               loc_1336DC
1336DA:  MOVS            R1, #4
1336DC:  LDR             R2, [R0]
1336DE:  LDR.W           R1, [R2,R1,LSL#2]
1336E2:  BLX             R1
1336E4:  LDR             R0, [R5,#0x78]
1336E6:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_7NS_9allocatorIS4_EEFvvEEE - 0x1336EE); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_7,std::allocator<menu::content::init_callbacks(void)::$_7>,void ()(void)> ...
1336E8:  STR             R4, [SP,#0x28+var_18]
1336EA:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_7,std::allocator<menu::content::init_callbacks(void)::$_7>,void ()(void)>
1336EC:  STR             R6, [SP,#0x28+var_24]
1336EE:  ADDS            R1, #8
1336F0:  STR             R1, [SP,#0x28+var_28]
1336F2:  ADDS            R0, #0x58 ; 'X'
1336F4:  MOV             R1, R4
1336F6:  BL              sub_12C504
1336FA:  LDR             R0, [SP,#0x28+var_18]
1336FC:  CMP             R4, R0
1336FE:  BEQ             loc_133706
133700:  CBZ             R0, loc_133710
133702:  MOVS            R1, #5
133704:  B               loc_133708
133706:  MOVS            R1, #4
133708:  LDR             R2, [R0]
13370A:  LDR.W           R1, [R2,R1,LSL#2]
13370E:  BLX             R1
133710:  LDR             R0, [R5,#0x7C]
133712:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_8NS_9allocatorIS4_EEFvvEEE - 0x13371A); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_8,std::allocator<menu::content::init_callbacks(void)::$_8>,void ()(void)> ...
133714:  STR             R4, [SP,#0x28+var_18]
133716:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_8,std::allocator<menu::content::init_callbacks(void)::$_8>,void ()(void)>
133718:  STR             R6, [SP,#0x28+var_24]
13371A:  ADDS            R1, #8
13371C:  STR             R1, [SP,#0x28+var_28]
13371E:  ADDS            R0, #0x58 ; 'X'
133720:  MOV             R1, R4
133722:  BL              sub_12C504
133726:  LDR             R0, [SP,#0x28+var_18]
133728:  CMP             R4, R0
13372A:  BEQ             loc_133732
13372C:  CBZ             R0, loc_13373C
13372E:  MOVS            R1, #5
133730:  B               loc_133734
133732:  MOVS            R1, #4
133734:  LDR             R2, [R0]
133736:  LDR.W           R1, [R2,R1,LSL#2]
13373A:  BLX             R1
13373C:  LDR.W           R0, [R5,#0x80]
133740:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_9NS_9allocatorIS4_EEFvvEEE - 0x133748); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_9,std::allocator<menu::content::init_callbacks(void)::$_9>,void ()(void)> ...
133742:  STR             R4, [SP,#0x28+var_18]
133744:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_9,std::allocator<menu::content::init_callbacks(void)::$_9>,void ()(void)>
133746:  STR             R6, [SP,#0x28+var_24]
133748:  ADDS            R1, #8
13374A:  STR             R1, [SP,#0x28+var_28]
13374C:  ADDS            R0, #0x58 ; 'X'
13374E:  MOV             R1, R4
133750:  BL              sub_12C504
133754:  LDR             R0, [SP,#0x28+var_18]
133756:  CMP             R4, R0
133758:  BEQ             loc_133760
13375A:  CBZ             R0, loc_13376A
13375C:  MOVS            R1, #5
13375E:  B               loc_133762
133760:  MOVS            R1, #4
133762:  LDR             R2, [R0]
133764:  LDR.W           R1, [R2,R1,LSL#2]
133768:  BLX             R1
13376A:  LDR.W           R0, [R5,#0x84]
13376E:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE4$_10NS_9allocatorIS4_EEFvvEEE - 0x133776); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_10,std::allocator<menu::content::init_callbacks(void)::$_10>,void ()(void)> ...
133770:  STR             R4, [SP,#0x28+var_18]
133772:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_10,std::allocator<menu::content::init_callbacks(void)::$_10>,void ()(void)>
133774:  STR             R6, [SP,#0x28+var_24]
133776:  ADDS            R1, #8
133778:  STR             R1, [SP,#0x28+var_28]
13377A:  ADDS            R0, #0x58 ; 'X'
13377C:  MOV             R1, R4
13377E:  BL              sub_12C504
133782:  LDR             R0, [SP,#0x28+var_18]
133784:  CMP             R4, R0
133786:  BEQ             loc_13378E
133788:  CBZ             R0, loc_133798
13378A:  MOVS            R1, #5
13378C:  B               loc_133790
13378E:  MOVS            R1, #4
133790:  LDR             R2, [R0]
133792:  LDR.W           R1, [R2,R1,LSL#2]
133796:  BLX             R1
133798:  LDR.W           R0, [R5,#0x88]
13379C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE4$_11NS_9allocatorIS4_EEFvvEEE - 0x1337A4); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_11,std::allocator<menu::content::init_callbacks(void)::$_11>,void ()(void)> ...
13379E:  STR             R4, [SP,#0x28+var_18]
1337A0:  ADD             R1, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_11,std::allocator<menu::content::init_callbacks(void)::$_11>,void ()(void)>
1337A2:  STR             R6, [SP,#0x28+var_24]
1337A4:  ADDS            R1, #8
1337A6:  STR             R1, [SP,#0x28+var_28]
1337A8:  ADDS            R0, #0x58 ; 'X'
1337AA:  MOV             R1, R4
1337AC:  BL              sub_12C504
1337B0:  LDR             R0, [SP,#0x28+var_18]
1337B2:  CMP             R4, R0
1337B4:  BEQ             loc_1337BC
1337B6:  CBZ             R0, loc_1337C6
1337B8:  MOVS            R1, #5
1337BA:  B               loc_1337BE
1337BC:  MOVS            R1, #4
1337BE:  LDR             R2, [R0]
1337C0:  LDR.W           R1, [R2,R1,LSL#2]
1337C4:  BLX             R1
1337C6:  ADD             SP, SP, #0x18
1337C8:  POP.W           {R11}
1337CC:  POP             {R4-R7,PC}
