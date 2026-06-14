; =========================================================
; Game Engine Function: sub_1375F0
; Address            : 0x1375F0 - 0x13786E
; =========================================================

1375F0:  PUSH            {R4-R7,LR}
1375F2:  ADD             R7, SP, #0xC
1375F4:  PUSH.W          {R8-R11}
1375F8:  SUB             SP, SP, #0x3C
1375FA:  MOV             R9, R0
1375FC:  BL              sub_12BC78
137600:  LDR             R1, =(_ZTV11ButtonVoice - 0x137610); `vtable for'ButtonVoice ...
137602:  VMOV.I32        Q8, #0
137606:  ADD.W           R8, R9, #0x54 ; 'T'
13760A:  LDR             R0, =(aHud - 0x13761C); "hud" ...
13760C:  ADD             R1, PC; `vtable for'ButtonVoice
13760E:  MOVS            R2, #0
137610:  ADDS            R1, #8
137612:  STR.W           R1, [R9]
137616:  MOV             R1, R8
137618:  ADD             R0, PC; "hud"
13761A:  VST1.32         {D16-D17}, [R1]!
13761E:  STR.W           R2, [R9,#0x68]
137622:  STR             R2, [R1]
137624:  BL              sub_1636F0
137628:  MOV             R1, R0
13762A:  ADDS            R0, R1, #1
13762C:  BNE             loc_137638
13762E:  LDR             R0, =(asc_879DB - 0x137634); "*" ...
137630:  ADD             R0, PC; "*"
137632:  BL              sub_1636F0
137636:  MOV             R1, R0
137638:  LDR             R5, =(dword_3141C4 - 0x137640)
13763A:  LDR             R2, =(aIconMicro - 0x137642); "icon_micro" ...
13763C:  ADD             R5, PC; dword_3141C4
13763E:  ADD             R2, PC; "icon_micro"
137640:  MOV             R0, R5
137642:  BL              sub_163144
137646:  LDR             R0, [R5]
137648:  CMP             R0, #0
13764A:  BEQ.W           loc_13784C
13764E:  LDR             R1, =(unk_8F456 - 0x137654)
137650:  ADD             R1, PC; unk_8F456 ; s
137652:  ADD             R0, SP, #0x58+var_28; int
137654:  BL              sub_DC6DC
137658:  LDR             R1, =(unk_89F68 - 0x13765E)
13765A:  ADD             R1, PC; unk_89F68 ; s
13765C:  ADD             R0, SP, #0x58+var_34; int
13765E:  BL              sub_DC6DC
137662:  ADR             R0, dword_1378C8
137664:  ADD             R6, SP, #0x58+var_48
137666:  VLD1.64         {D16-D17}, [R0]
13766A:  ADR             R0, dword_1378D8
13766C:  MOV             R5, SP
13766E:  VLD1.64         {D18-D19}, [R0]
137672:  VST1.64         {D18-D19}, [R6]
137676:  VST1.64         {D16-D17}, [R5,#0x58+var_58]
13767A:  ADD             R0, SP, #0x58+var_28
13767C:  ADD             R1, SP, #0x58+var_34
13767E:  MOV             R2, R6
137680:  MOV             R3, R5
137682:  BL              sub_1379C0
137686:  LDRB.W          R0, [SP,#0x58+var_34]
13768A:  LSLS            R0, R0, #0x1F
13768C:  ITT NE
13768E:  LDRNE           R0, [SP,#0x58+var_2C]; void *
137690:  BLXNE           j__ZdlPv; operator delete(void *)
137694:  LDRB.W          R0, [SP,#0x58+var_28]
137698:  LSLS            R0, R0, #0x1F
13769A:  ITT NE
13769C:  LDRNE           R0, [SP,#0x58+var_20]; void *
13769E:  BLXNE           j__ZdlPv; operator delete(void *)
1376A2:  LDR             R1, =(unk_874C9 - 0x1376A8)
1376A4:  ADD             R1, PC; unk_874C9 ; s
1376A6:  ADD             R0, SP, #0x58+var_28; int
1376A8:  BL              sub_DC6DC
1376AC:  LDR             R1, =(unk_8ACDE - 0x1376B2)
1376AE:  ADD             R1, PC; unk_8ACDE ; s
1376B0:  ADD             R0, SP, #0x58+var_34; int
1376B2:  BL              sub_DC6DC
1376B6:  ADR             R0, dword_1378E8
1376B8:  VLD1.64         {D16-D17}, [R0]
1376BC:  ADR             R0, dword_1378F8
1376BE:  VLD1.64         {D18-D19}, [R0]
1376C2:  VST1.64         {D18-D19}, [R6]
1376C6:  VST1.64         {D16-D17}, [R5,#0x58+var_58]
1376CA:  ADD             R0, SP, #0x58+var_28
1376CC:  ADD             R1, SP, #0x58+var_34
1376CE:  MOV             R2, R6
1376D0:  MOV             R3, R5
1376D2:  BL              sub_1379C0
1376D6:  LDRB.W          R0, [SP,#0x58+var_34]
1376DA:  LSLS            R0, R0, #0x1F
1376DC:  ITT NE
1376DE:  LDRNE           R0, [SP,#0x58+var_2C]; void *
1376E0:  BLXNE           j__ZdlPv; operator delete(void *)
1376E4:  LDRB.W          R0, [SP,#0x58+var_28]
1376E8:  LSLS            R0, R0, #0x1F
1376EA:  ITT NE
1376EC:  LDRNE           R0, [SP,#0x58+var_20]; void *
1376EE:  BLXNE           j__ZdlPv; operator delete(void *)
1376F2:  LDR             R1, =(unk_8ED1A - 0x1376F8)
1376F4:  ADD             R1, PC; unk_8ED1A ; s
1376F6:  ADD             R0, SP, #0x58+var_28; int
1376F8:  BL              sub_DC6DC
1376FC:  LDR             R1, =(unk_82C5D - 0x137702)
1376FE:  ADD             R1, PC; unk_82C5D ; s
137700:  ADD             R0, SP, #0x58+var_34; int
137702:  BL              sub_DC6DC
137706:  ADR             R0, dword_137908
137708:  VLD1.64         {D16-D17}, [R0]
13770C:  ADR             R0, dword_137918
13770E:  VLD1.64         {D18-D19}, [R0]
137712:  VST1.64         {D18-D19}, [R6]
137716:  VST1.64         {D16-D17}, [R5,#0x58+var_58]
13771A:  ADD             R0, SP, #0x58+var_28
13771C:  ADD             R1, SP, #0x58+var_34
13771E:  MOV             R2, R6
137720:  MOV             R3, R5
137722:  BL              sub_1379C0
137726:  LDRB.W          R0, [SP,#0x58+var_34]
13772A:  LSLS            R0, R0, #0x1F
13772C:  ITT NE
13772E:  LDRNE           R0, [SP,#0x58+var_2C]; void *
137730:  BLXNE           j__ZdlPv; operator delete(void *)
137734:  LDRB.W          R0, [SP,#0x58+var_28]
137738:  LSLS            R0, R0, #0x1F
13773A:  ITT NE
13773C:  LDRNE           R0, [SP,#0x58+var_20]; void *
13773E:  BLXNE           j__ZdlPv; operator delete(void *)
137742:  LDR             R1, =(unk_8D75A - 0x137748)
137744:  ADD             R1, PC; unk_8D75A ; s
137746:  ADD             R0, SP, #0x58+var_28; int
137748:  BL              sub_DC6DC
13774C:  LDR             R1, =(unk_86B67 - 0x137752)
13774E:  ADD             R1, PC; unk_86B67 ; s
137750:  ADD             R0, SP, #0x58+var_34; int
137752:  BL              sub_DC6DC
137756:  ADR             R0, dword_137928
137758:  VLD1.64         {D16-D17}, [R0]
13775C:  ADR             R0, dword_137938
13775E:  VLD1.64         {D18-D19}, [R0]
137762:  VST1.64         {D18-D19}, [R6]
137766:  VST1.64         {D16-D17}, [R5,#0x58+var_58]
13776A:  ADD             R0, SP, #0x58+var_28
13776C:  ADD             R1, SP, #0x58+var_34
13776E:  MOV             R2, R6
137770:  MOV             R3, R5
137772:  BL              sub_1379C0
137776:  LDRB.W          R0, [SP,#0x58+var_34]
13777A:  LSLS            R0, R0, #0x1F
13777C:  ITT NE
13777E:  LDRNE           R0, [SP,#0x58+var_2C]; void *
137780:  BLXNE           j__ZdlPv; operator delete(void *)
137784:  LDRB.W          R0, [SP,#0x58+var_28]
137788:  LSLS            R0, R0, #0x1F
13778A:  ITT NE
13778C:  LDRNE           R0, [SP,#0x58+var_20]; void *
13778E:  BLXNE           j__ZdlPv; operator delete(void *)
137792:  LDR             R1, =(unk_883A2 - 0x137798)
137794:  ADD             R1, PC; unk_883A2 ; s
137796:  ADD             R0, SP, #0x58+var_28; int
137798:  BL              sub_DC6DC
13779C:  LDR             R1, =(unk_8411A - 0x1377A2)
13779E:  ADD             R1, PC; unk_8411A ; s
1377A0:  ADD             R0, SP, #0x58+var_34; int
1377A2:  BL              sub_DC6DC
1377A6:  ADR             R0, dword_137948
1377A8:  VLD1.64         {D16-D17}, [R0]
1377AC:  ADR             R0, dword_137958
1377AE:  VLD1.64         {D18-D19}, [R0]
1377B2:  VST1.64         {D18-D19}, [R6]
1377B6:  VST1.64         {D16-D17}, [R5,#0x58+var_58]
1377BA:  ADD             R0, SP, #0x58+var_28
1377BC:  ADD             R1, SP, #0x58+var_34
1377BE:  MOV             R2, R6
1377C0:  MOV             R3, R5
1377C2:  BL              sub_1379C0
1377C6:  LDRB.W          R0, [SP,#0x58+var_34]
1377CA:  LSLS            R0, R0, #0x1F
1377CC:  ITT NE
1377CE:  LDRNE           R0, [SP,#0x58+var_2C]; void *
1377D0:  BLXNE           j__ZdlPv; operator delete(void *)
1377D4:  LDRB.W          R0, [SP,#0x58+var_28]
1377D8:  LSLS            R0, R0, #0x1F
1377DA:  ITT NE
1377DC:  LDRNE           R0, [SP,#0x58+var_20]; void *
1377DE:  BLXNE           j__ZdlPv; operator delete(void *)
1377E2:  LDR             R0, =(unk_3141C8 - 0x1377E8)
1377E4:  ADD             R0, PC; unk_3141C8
1377E6:  LDR             R4, [R0,#(dword_3141D0 - 0x3141C8)]
1377E8:  CBZ             R4, loc_137834
1377EA:  LDR             R0, =(word_3141DC - 0x1377F4)
1377EC:  MOV.W           R10, #0
1377F0:  ADD             R0, PC; word_3141DC
1377F2:  MOV             R11, R0
1377F4:  LDR             R6, [R4,#0xC]
1377F6:  LDRB.W          R0, [R6,#0x50]
1377FA:  MOV             R5, R6
1377FC:  CBZ             R0, loc_13780A
1377FE:  LDR             R0, [R6]
137800:  LDR             R2, [R0,#0x24]
137802:  MOV             R0, R6
137804:  MOVS            R1, #0
137806:  BLX             R2
137808:  LDR             R5, [R4,#0xC]
13780A:  MOV             R1, R11
13780C:  LDR             R0, [R5,#0x74]
13780E:  LDR.W           R1, [R11,#(dword_3141E0 - 0x3141DC)]
137812:  STRB.W          R10, [R6,#0x50]
137816:  CMP             R1, R0
137818:  BEQ             loc_13782E
13781A:  LDRB.W          R0, [R5,#0x50]
13781E:  CBZ             R0, loc_13782A
137820:  LDR             R0, [R5]
137822:  LDR             R2, [R0,#0x24]
137824:  MOV             R0, R5
137826:  MOVS            R1, #0
137828:  BLX             R2
13782A:  STRB.W          R10, [R5,#0x50]
13782E:  LDR             R4, [R4]
137830:  CMP             R4, #0
137832:  BNE             loc_1377F4
137834:  LDR             R1, =(aAxl - 0x13783C); "AXL" ...
137836:  LDR             R2, =(aVoicebuttonVoi - 0x13783E); "VoiceButton: voice icon system loaded!" ...
137838:  ADD             R1, PC; "AXL"
13783A:  ADD             R2, PC; "VoiceButton: voice icon system loaded!"
13783C:  MOVS            R0, #4; prio
13783E:  BLX             __android_log_print
137842:  MOV             R0, R9
137844:  ADD             SP, SP, #0x3C ; '<'
137846:  POP.W           {R8-R11}
13784A:  POP             {R4-R7,PC}
13784C:  MOVS            R0, #8; thrown_size
13784E:  BLX             j___cxa_allocate_exception
137852:  LDR             R1, =(aAtlasTextureNo - 0x13785A); "atlas texture not found!" ...
137854:  MOV             R5, R0
137856:  ADD             R1, PC; "atlas texture not found!"
137858:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
13785C:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x137864)
13785E:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x137866)
137860:  ADD             R0, PC; _ZTISt13runtime_error_ptr
137862:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
137864:  LDR             R1, [R0]; lptinfo
137866:  MOV             R0, R5; void *
137868:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
13786A:  BLX             j___cxa_throw
