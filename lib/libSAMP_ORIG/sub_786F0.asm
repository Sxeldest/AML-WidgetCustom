; =========================================================
; Game Engine Function: sub_786F0
; Address            : 0x786F0 - 0x789C2
; =========================================================

786F0:  PUSH            {R4-R7,LR}
786F2:  ADD             R7, SP, #0xC
786F4:  PUSH.W          {R8}
786F8:  VPUSH           {D8}
786FC:  SUB             SP, SP, #0x38
786FE:  MOV             R4, R0
78700:  LDR             R0, =(__stack_chk_guard_ptr - 0x78708)
78702:  MOVS            R1, #1
78704:  ADD             R0, PC; __stack_chk_guard_ptr
78706:  LDR             R0, [R0]; __stack_chk_guard
78708:  LDR             R0, [R0]
7870A:  STR             R0, [SP,#0x50+var_1C]
7870C:  MOV             R0, R4
7870E:  BL              sub_7D794
78712:  LDR             R0, =(_ZTV12coordsLayout - 0x78718); `vtable for'coordsLayout ...
78714:  ADD             R0, PC; `vtable for'coordsLayout
78716:  ADDS            R0, #8
78718:  STR             R0, [R4]
7871A:  MOVS            R0, #0x90; unsigned int
7871C:  BLX             j__Znwj; operator new(uint)
78720:  MOV             R5, R0
78722:  LDR             R0, =(off_114C24 - 0x7872C)
78724:  VMOV.F32        S16, #0.5
78728:  ADD             R0, PC; off_114C24
7872A:  LDR.W           R8, [R0]; dword_116D58
7872E:  MOVS            R0, #0
78730:  STRB.W          R0, [SP,#0x50+var_38+2]
78734:  MOVW            R0, #0x5802
78738:  STRH.W          R0, [SP,#0x50+var_38]
7873C:  VLDR            S0, [R8]
78740:  VMUL.F32        S0, S0, S16
78744:  VMOV            R2, S0
78748:  ADD             R1, SP, #0x50+var_38
7874A:  MOV             R0, R5
7874C:  BL              sub_7C9B0
78750:  LDRB.W          R0, [SP,#0x50+var_38]
78754:  STR             R5, [R4,#0x6C]
78756:  LSLS            R0, R0, #0x1F
78758:  ITT NE
7875A:  LDRNE           R0, [SP,#0x50+var_30]; void *
7875C:  BLXNE           j__ZdlPv; operator delete(void *)
78760:  MOVS            R0, #0x90; unsigned int
78762:  BLX             j__Znwj; operator new(uint)
78766:  VLDR            S0, [R8]
7876A:  MOV             R5, R0
7876C:  MOVS            R0, #0
7876E:  VMUL.F32        S0, S0, S16
78772:  STRB.W          R0, [SP,#0x50+var_38+2]
78776:  MOVW            R0, #0x5902
7877A:  STRH.W          R0, [SP,#0x50+var_38]
7877E:  VMOV            R2, S0
78782:  ADD             R1, SP, #0x50+var_38
78784:  MOV             R0, R5
78786:  BL              sub_7C9B0
7878A:  LDRB.W          R0, [SP,#0x50+var_38]
7878E:  STR             R5, [R4,#0x70]
78790:  LSLS            R0, R0, #0x1F
78792:  ITT NE
78794:  LDRNE           R0, [SP,#0x50+var_30]; void *
78796:  BLXNE           j__ZdlPv; operator delete(void *)
7879A:  MOVS            R0, #0x90; unsigned int
7879C:  BLX             j__Znwj; operator new(uint)
787A0:  VLDR            S0, [R8]
787A4:  MOV             R5, R0
787A6:  MOVS            R0, #0
787A8:  VMUL.F32        S0, S0, S16
787AC:  STRB.W          R0, [SP,#0x50+var_38+2]
787B0:  MOVW            R0, #0x5A02
787B4:  STRH.W          R0, [SP,#0x50+var_38]
787B8:  VMOV            R2, S0
787BC:  ADD             R1, SP, #0x50+var_38
787BE:  MOV             R0, R5
787C0:  BL              sub_7C9B0
787C4:  LDRB.W          R0, [SP,#0x50+var_38]
787C8:  STR             R5, [R4,#0x74]
787CA:  LSLS            R0, R0, #0x1F
787CC:  ITT NE
787CE:  LDRNE           R0, [SP,#0x50+var_30]; void *
787D0:  BLXNE           j__ZdlPv; operator delete(void *)
787D4:  MOVS            R0, #0x90; unsigned int
787D6:  BLX             j__Znwj; operator new(uint)
787DA:  VLDR            S0, [R8]
787DE:  MOV             R6, R0
787E0:  MOVW            R0, #0x6165
787E4:  VMUL.F32        S0, S0, S16
787E8:  MOVT            R0, #0x6573
787EC:  STR.W           R0, [SP,#0x50+var_34+1]
787F0:  MOV             R0, #0x72636E49
787F8:  STR.W           R0, [SP,#0x50+var_38+1]
787FC:  MOVS            R0, #0
787FE:  STRB.W          R0, [SP,#0x50+var_30+1]
78802:  MOVS            R0, #0x10
78804:  STRB.W          R0, [SP,#0x50+var_38]
78808:  VMOV            R2, S0
7880C:  ADD             R5, SP, #0x50+var_38
7880E:  MOV             R0, R6
78810:  MOV             R1, R5
78812:  BL              sub_7C9B0
78816:  LDRB.W          R0, [SP,#0x50+var_38]
7881A:  STR             R6, [R4,#0x78]
7881C:  LSLS            R0, R0, #0x1F
7881E:  ITT NE
78820:  LDRNE           R0, [SP,#0x50+var_30]; void *
78822:  BLXNE           j__ZdlPv; operator delete(void *)
78826:  LDR             R1, [R4,#0x6C]
78828:  MOV             R0, R4
7882A:  BL              sub_7C73C
7882E:  LDR             R1, [R4,#0x70]
78830:  MOV             R0, R4
78832:  BL              sub_7C73C
78836:  LDR             R1, [R4,#0x74]
78838:  MOV             R0, R4
7883A:  BL              sub_7C73C
7883E:  LDR             R1, [R4,#0x78]
78840:  MOV             R0, R4
78842:  BL              sub_7C73C
78846:  LDR             R0, [R4,#0x6C]
78848:  VMOV.F32        Q8, #1.0
7884C:  MOV             R6, SP
7884E:  LDR             R1, [R0,#0x54]
78850:  ADDS            R1, #0x60 ; '`'
78852:  VST1.32         {D16-D17}, [R1]
78856:  LDR             R1, [R4,#0x70]
78858:  LDR             R1, [R1,#0x54]
7885A:  ADDS            R1, #0x60 ; '`'
7885C:  VST1.32         {D16-D17}, [R1]
78860:  LDR             R1, [R4,#0x74]
78862:  LDR             R1, [R1,#0x54]
78864:  ADDS            R1, #0x60 ; '`'
78866:  VST1.32         {D16-D17}, [R1]
7886A:  ADR             R1, dword_78A00
7886C:  LDR             R0, [R0,#0x54]
7886E:  VLD1.64         {D16-D17}, [R1@128]
78872:  ADDS            R0, #0x60 ; '`'
78874:  VST1.32         {D16-D17}, [R0]
78878:  LDR             R0, [R4,#0x6C]
7887A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x78882); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_5,std::allocator<coordsLayout::coordsLayout(void)::$_5>,void ()(void)> ...
7887C:  STR             R6, [SP,#0x50+var_40]
7887E:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_5,std::allocator<coordsLayout::coordsLayout(void)::$_5>,void ()(void)>
78880:  STR             R4, [SP,#0x50+var_4C]
78882:  ADDS            R1, #8
78884:  STR             R1, [SP,#0x50+var_50]
78886:  STRD.W          R1, R4, [SP,#0x50+var_38]
7888A:  ADD.W           R1, R0, #0x58 ; 'X'
7888E:  MOV             R0, R5
78890:  STR             R5, [SP,#0x50+var_28]
78892:  BL              sub_737F4
78896:  LDR             R0, [SP,#0x50+var_28]
78898:  CMP             R5, R0
7889A:  BEQ             loc_788A2
7889C:  CBZ             R0, loc_788AC
7889E:  MOVS            R1, #5
788A0:  B               loc_788A4
788A2:  MOVS            R1, #4
788A4:  LDR             R2, [R0]
788A6:  LDR.W           R1, [R2,R1,LSL#2]
788AA:  BLX             R1
788AC:  LDR             R0, [SP,#0x50+var_40]
788AE:  CMP             R6, R0
788B0:  BEQ             loc_788B8
788B2:  CBZ             R0, loc_788C2
788B4:  MOVS            R1, #5
788B6:  B               loc_788BA
788B8:  MOVS            R1, #4
788BA:  LDR             R2, [R0]
788BC:  LDR.W           R1, [R2,R1,LSL#2]
788C0:  BLX             R1
788C2:  LDR             R0, [R4,#0x70]
788C4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_6NS_9allocatorIS3_EEFvvEEE - 0x788CC); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_6,std::allocator<coordsLayout::coordsLayout(void)::$_6>,void ()(void)> ...
788C6:  STR             R6, [SP,#0x50+var_40]
788C8:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_6,std::allocator<coordsLayout::coordsLayout(void)::$_6>,void ()(void)>
788CA:  STR             R4, [SP,#0x50+var_4C]
788CC:  ADDS            R1, #8
788CE:  STR             R1, [SP,#0x50+var_50]
788D0:  STRD.W          R1, R4, [SP,#0x50+var_38]
788D4:  ADD.W           R1, R0, #0x58 ; 'X'
788D8:  MOV             R0, R5
788DA:  STR             R5, [SP,#0x50+var_28]
788DC:  BL              sub_737F4
788E0:  LDR             R0, [SP,#0x50+var_28]
788E2:  CMP             R5, R0
788E4:  BEQ             loc_788EC
788E6:  CBZ             R0, loc_788F6
788E8:  MOVS            R1, #5
788EA:  B               loc_788EE
788EC:  MOVS            R1, #4
788EE:  LDR             R2, [R0]
788F0:  LDR.W           R1, [R2,R1,LSL#2]
788F4:  BLX             R1
788F6:  LDR             R0, [SP,#0x50+var_40]
788F8:  CMP             R6, R0
788FA:  BEQ             loc_78902
788FC:  CBZ             R0, loc_7890C
788FE:  MOVS            R1, #5
78900:  B               loc_78904
78902:  MOVS            R1, #4
78904:  LDR             R2, [R0]
78906:  LDR.W           R1, [R2,R1,LSL#2]
7890A:  BLX             R1
7890C:  LDR             R0, [R4,#0x74]
7890E:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_7NS_9allocatorIS3_EEFvvEEE - 0x78916); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_7,std::allocator<coordsLayout::coordsLayout(void)::$_7>,void ()(void)> ...
78910:  STR             R6, [SP,#0x50+var_40]
78912:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_7,std::allocator<coordsLayout::coordsLayout(void)::$_7>,void ()(void)>
78914:  STR             R4, [SP,#0x50+var_4C]
78916:  ADDS            R1, #8
78918:  STR             R1, [SP,#0x50+var_50]
7891A:  STRD.W          R1, R4, [SP,#0x50+var_38]
7891E:  ADD.W           R1, R0, #0x58 ; 'X'
78922:  MOV             R0, R5
78924:  STR             R5, [SP,#0x50+var_28]
78926:  BL              sub_737F4
7892A:  LDR             R0, [SP,#0x50+var_28]
7892C:  CMP             R5, R0
7892E:  BEQ             loc_78936
78930:  CBZ             R0, loc_78940
78932:  MOVS            R1, #5
78934:  B               loc_78938
78936:  MOVS            R1, #4
78938:  LDR             R2, [R0]
7893A:  LDR.W           R1, [R2,R1,LSL#2]
7893E:  BLX             R1
78940:  LDR             R0, [SP,#0x50+var_40]
78942:  CMP             R6, R0
78944:  BEQ             loc_7894C
78946:  CBZ             R0, loc_78956
78948:  MOVS            R1, #5
7894A:  B               loc_7894E
7894C:  MOVS            R1, #4
7894E:  LDR             R2, [R0]
78950:  LDR.W           R1, [R2,R1,LSL#2]
78954:  BLX             R1
78956:  LDR             R0, [R4,#0x78]
78958:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_8NS_9allocatorIS3_EEFvvEEE - 0x78960); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_8,std::allocator<coordsLayout::coordsLayout(void)::$_8>,void ()(void)> ...
7895A:  STR             R6, [SP,#0x50+var_40]
7895C:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_8,std::allocator<coordsLayout::coordsLayout(void)::$_8>,void ()(void)>
7895E:  STR             R4, [SP,#0x50+var_4C]
78960:  ADDS            R1, #8
78962:  STR             R1, [SP,#0x50+var_50]
78964:  STRD.W          R1, R4, [SP,#0x50+var_38]
78968:  ADD.W           R1, R0, #0x58 ; 'X'
7896C:  MOV             R0, R5
7896E:  STR             R5, [SP,#0x50+var_28]
78970:  BL              sub_737F4
78974:  LDR             R0, [SP,#0x50+var_28]
78976:  CMP             R5, R0
78978:  BEQ             loc_78980
7897A:  CBZ             R0, loc_7898A
7897C:  MOVS            R1, #5
7897E:  B               loc_78982
78980:  MOVS            R1, #4
78982:  LDR             R2, [R0]
78984:  LDR.W           R1, [R2,R1,LSL#2]
78988:  BLX             R1
7898A:  LDR             R0, [SP,#0x50+var_40]
7898C:  CMP             R6, R0
7898E:  BEQ             loc_78996
78990:  CBZ             R0, loc_789A0
78992:  MOVS            R1, #5
78994:  B               loc_78998
78996:  MOVS            R1, #4
78998:  LDR             R2, [R0]
7899A:  LDR.W           R1, [R2,R1,LSL#2]
7899E:  BLX             R1
789A0:  LDR             R0, [SP,#0x50+var_1C]
789A2:  LDR             R1, =(__stack_chk_guard_ptr - 0x789A8)
789A4:  ADD             R1, PC; __stack_chk_guard_ptr
789A6:  LDR             R1, [R1]; __stack_chk_guard
789A8:  LDR             R1, [R1]
789AA:  CMP             R1, R0
789AC:  ITTTT EQ
789AE:  MOVEQ           R0, R4
789B0:  ADDEQ           SP, SP, #0x38 ; '8'
789B2:  VPOPEQ          {D8}
789B6:  POPEQ.W         {R8}
789BA:  IT EQ
789BC:  POPEQ           {R4-R7,PC}
789BE:  BLX             __stack_chk_fail
