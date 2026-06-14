; =========================================================
; Game Engine Function: sub_E7540
; Address            : 0xE7540 - 0xE7B38
; =========================================================

E7540:  PUSH            {R4-R7,LR}
E7542:  ADD             R7, SP, #0xC
E7544:  PUSH.W          {R8-R11}
E7548:  SUB             SP, SP, #4
E754A:  VPUSH           {D8}
E754E:  SUB             SP, SP, #0x78
E7550:  ADD.W           R5, R0, #0x20 ; ' '
E7554:  ADD.W           R9, R0, #0x4C ; 'L'
E7558:  ADD.W           R10, SP, #0xA0+var_58
E755C:  ADD.W           R8, SP, #0xA0+var_98
E7560:  VLDR            D8, =+Inf
E7564:  MOV.W           R11, #0
E7568:  MOV             R4, R1
E756A:  MOV             R6, R0
E756C:  STR.W           R11, [SP,#0xA0+var_2C]
E7570:  STRD.W          R11, R11, [SP,#0xA0+var_34]
E7574:  LDR             R0, [R6,#0x18]
E7576:  SUBS            R0, #1; switch 14 cases
E7578:  CMP             R0, #0xD
E757A:  BHI.W           def_E757E; jumptable 000E757E default case, cases 10-13
E757E:  TBH.W           [PC,R0,LSL#1]; switch jump
E7582:  DCW 0xE; jump table for switch statement
E7584:  DCW 0x3F
E7586:  DCW 0x36
E7588:  DCW 0x5B
E758A:  DCW 0x76
E758C:  DCW 0x2B
E758E:  DCW 0x62
E7590:  DCW 0x18
E7592:  DCW 0x48
E7594:  DCW 0x128
E7596:  DCW 0x128
E7598:  DCW 0x128
E759A:  DCW 0x128
E759C:  DCW 0xFD
E759E:  MOVS            R0, #1; jumptable 000E757E case 1
E75A0:  STRB.W          R0, [SP,#0xA0+var_98]
E75A4:  MOV             R0, R10
E75A6:  MOV             R1, R4
E75A8:  MOV             R2, R8
E75AA:  MOVS            R3, #0
E75AC:  BL              sub_EA68C
E75B0:  B               loc_E7682
E75B2:  MOV             R0, R4; jumptable 000E757E case 8
E75B4:  MOV.W           R1, #0xFFFFFFFF
E75B8:  BL              sub_E90DC
E75BC:  CMP             R0, #0
E75BE:  BEQ.W           loc_E7872
E75C2:  MOV             R0, R5
E75C4:  BL              sub_E67FC
E75C8:  CMP             R0, #0xA
E75CA:  STR             R0, [R6,#0x18]
E75CC:  BNE.W           loc_E771C
E75D0:  MOV             R0, R4
E75D2:  BL              sub_E9214
E75D6:  B               loc_E7634
E75D8:  LDRD.W          R0, R1, [R6,#0x60]; jumptable 000E757E case 6
E75DC:  STRD.W          R0, R1, [SP,#0xA0+var_58]
E75E0:  MOV             R0, R8
E75E2:  MOV             R1, R4
E75E4:  MOV             R2, R10
E75E6:  MOVS            R3, #0
E75E8:  BL              sub_EAA4C
E75EC:  B               loc_E7682
E75EE:  STR.W           R11, [SP,#0xA0+var_98]; jumptable 000E757E case 3
E75F2:  MOV             R0, R10
E75F4:  MOV             R1, R4
E75F6:  MOV             R2, R8
E75F8:  MOVS            R3, #0
E75FA:  BL              sub_EA882
E75FE:  B               loc_E7682
E7600:  STRB.W          R11, [SP,#0xA0+var_98]; jumptable 000E757E case 2
E7604:  MOV             R0, R10
E7606:  MOV             R1, R4
E7608:  MOV             R2, R8
E760A:  MOVS            R3, #0
E760C:  BL              sub_EA68C
E7610:  B               loc_E7682
E7612:  MOV             R0, R4; jumptable 000E757E case 9
E7614:  MOV.W           R1, #0xFFFFFFFF
E7618:  BL              sub_E8DD4
E761C:  CMP             R0, #0
E761E:  BEQ.W           loc_E7872
E7622:  MOV             R0, R5
E7624:  BL              sub_E67FC
E7628:  CMP             R0, #0xB
E762A:  STR             R0, [R6,#0x18]
E762C:  BNE             loc_E772C
E762E:  MOV             R0, R4
E7630:  BL              sub_E8F0C
E7634:  CBNZ            R0, loc_E7682
E7636:  B               loc_E7872
E7638:  MOV             R0, R10; jumptable 000E757E case 4
E763A:  MOV             R1, R4
E763C:  MOV             R2, R9
E763E:  MOVS            R3, #0
E7640:  BL              sub_EAC4C
E7644:  B               loc_E7682
E7646:  VLDR            D16, [R6,#0x70]; jumptable 000E757E case 7
E764A:  VABS.F64        D17, D16
E764E:  VCMP.F64        D17, D8
E7652:  VMRS            APSR_nzcv, FPSCR
E7656:  BMI             loc_E765C
E7658:  BGT             loc_E765C
E765A:  B               loc_E79EA
E765C:  VSTR            D16, [SP,#0xA0+var_58]
E7660:  MOV             R0, R8
E7662:  MOV             R1, R4
E7664:  MOV             R2, R10
E7666:  MOVS            R3, #0
E7668:  BL              sub_EA484
E766C:  B               loc_E7682
E766E:  LDRD.W          R0, R1, [R6,#0x68]; jumptable 000E757E case 5
E7672:  STRD.W          R0, R1, [SP,#0xA0+var_58]
E7676:  MOV             R0, R8
E7678:  MOV             R1, R4
E767A:  MOV             R2, R10
E767C:  MOVS            R3, #0
E767E:  BL              sub_EAE24
E7682:  LDR             R0, [SP,#0xA0+var_30]
E7684:  CMP             R0, #0
E7686:  BEQ             loc_E7762
E7688:  SUBS            R0, #1
E768A:  LDR             R1, [SP,#0xA0+var_34]
E768C:  LSRS            R2, R0, #5
E768E:  AND.W           R0, R0, #0x1F
E7692:  LDR.W           R1, [R1,R2,LSL#2]
E7696:  LSR.W           R0, R1, R0
E769A:  LSLS            R0, R0, #0x1F
E769C:  BEQ             loc_E76B8
E769E:  MOV             R0, R5
E76A0:  BL              sub_E67FC
E76A4:  CMP             R0, #0xD
E76A6:  STR             R0, [R6,#0x18]
E76A8:  BEQ             loc_E76E0
E76AA:  CMP             R0, #0xA
E76AC:  BNE.W           loc_E7876
E76B0:  MOV             R0, R4
E76B2:  BL              sub_E9214
E76B6:  B               loc_E76D0
E76B8:  MOV             R0, R5
E76BA:  BL              sub_E67FC
E76BE:  CMP             R0, #0xD
E76C0:  STR             R0, [R6,#0x18]
E76C2:  BEQ             loc_E76E8
E76C4:  CMP             R0, #0xB
E76C6:  BNE.W           loc_E78E8
E76CA:  MOV             R0, R4
E76CC:  BL              sub_E8F0C
E76D0:  CMP             R0, #0
E76D2:  BEQ.W           loc_E7872
E76D6:  LDR             R0, [SP,#0xA0+var_30]
E76D8:  SUBS            R0, #1
E76DA:  STR             R0, [SP,#0xA0+var_30]
E76DC:  BNE             loc_E7688
E76DE:  B               loc_E7762
E76E0:  MOV             R0, R5
E76E2:  BL              sub_E67FC
E76E6:  B               loc_E7718
E76E8:  MOV             R0, R5
E76EA:  BL              sub_E67FC
E76EE:  CMP             R0, #4
E76F0:  STR             R0, [R6,#0x18]
E76F2:  BNE.W           loc_E793E
E76F6:  MOV             R0, R4
E76F8:  MOV             R1, R9
E76FA:  BL              sub_E9018
E76FE:  CMP             R0, #0
E7700:  BEQ.W           loc_E7872
E7704:  MOV             R0, R5
E7706:  BL              sub_E67FC
E770A:  CMP             R0, #0xC
E770C:  STR             R0, [R6,#0x18]
E770E:  BNE.W           loc_E7994
E7712:  MOV             R0, R5
E7714:  BL              sub_E67FC
E7718:  STR             R0, [R6,#0x18]
E771A:  B               loc_E7574
E771C:  MOVS            R0, #1
E771E:  STRB.W          R0, [SP,#0xA0+var_58]
E7722:  ADD             R0, SP, #0xA0+var_34
E7724:  MOV             R1, R10
E7726:  BL              sub_E8994
E772A:  B               loc_E7574
E772C:  CMP             R0, #4
E772E:  BNE.W           loc_E7A8C
E7732:  MOV             R0, R4
E7734:  MOV             R1, R9
E7736:  BL              sub_E9018
E773A:  CMP             R0, #0
E773C:  BEQ.W           loc_E7872
E7740:  MOV             R0, R5
E7742:  BL              sub_E67FC
E7746:  CMP             R0, #0xC
E7748:  STR             R0, [R6,#0x18]
E774A:  BNE.W           loc_E7AE2
E774E:  STRB.W          R11, [SP,#0xA0+var_58]
E7752:  ADD             R0, SP, #0xA0+var_34
E7754:  MOV             R1, R10
E7756:  BL              sub_E8994
E775A:  MOV             R0, R5
E775C:  BL              sub_E67FC
E7760:  B               loc_E7718
E7762:  MOVS            R4, #1
E7764:  LDR             R0, [SP,#0xA0+var_34]; void *
E7766:  CBZ             R0, loc_E776C
E7768:  BLX             j__ZdlPv; operator delete(void *)
E776C:  MOV             R0, R4
E776E:  ADD             SP, SP, #0x78 ; 'x'
E7770:  VPOP            {D8}
E7774:  ADD             SP, SP, #4
E7776:  POP.W           {R8-R11}
E777A:  POP             {R4-R7,PC}
E777C:  LDR.W           R9, [R6,#0x34]; jumptable 000E757E case 14
E7780:  ADD             R0, SP, #0xA0+var_40
E7782:  MOV             R1, R5
E7784:  BL              sub_E7C78
E7788:  VLDR            D16, [R6,#0x34]
E778C:  LDR             R0, [R6,#0x3C]
E778E:  LDR             R1, =(aValue - 0xE7796); "value" ...
E7790:  STR             R0, [SP,#0xA0+var_60]
E7792:  ADD             R1, PC; "value"
E7794:  VSTR            D16, [SP,#0xA0+var_68]
E7798:  ADD             R0, SP, #0xA0+var_84; int
E779A:  BL              sub_DC6DC
E779E:  ADD             R0, SP, #0xA0+var_78
E77A0:  ADD             R3, SP, #0xA0+var_84
E77A2:  MOV             R1, R6
E77A4:  MOVS            R2, #0
E77A6:  MOVS            R5, #0
E77A8:  BL              sub_E7F28
E77AC:  STR             R5, [SP,#0xA0+var_90]
E77AE:  STRB.W          R5, [SP,#0xA0+var_98]
E77B2:  ADD             R0, SP, #0xA0+var_58
E77B4:  ADD             R2, SP, #0xA0+var_68
E77B6:  ADD             R3, SP, #0xA0+var_78
E77B8:  MOVS            R1, #0x65 ; 'e'
E77BA:  STR.W           R8, [SP,#0xA0+var_A0]
E77BE:  BL              sub_E7CE4
E77C2:  ADD             R5, SP, #0xA0+var_58
E77C4:  ADD             R2, SP, #0xA0+var_40
E77C6:  MOV             R0, R4
E77C8:  MOV             R1, R9
E77CA:  MOV             R3, R5
E77CC:  BL              sub_E7C40
E77D0:  B               loc_E7826
E77D2:  LDR.W           R9, [R6,#0x34]; jumptable 000E757E default case, cases 10-13
E77D6:  ADD             R0, SP, #0xA0+var_40
E77D8:  MOV             R1, R5
E77DA:  BL              sub_E7C78
E77DE:  VLDR            D16, [R6,#0x34]
E77E2:  LDR             R0, [R6,#0x3C]
E77E4:  LDR             R1, =(aValue - 0xE77EC); "value" ...
E77E6:  STR             R0, [SP,#0xA0+var_60]
E77E8:  ADD             R1, PC; "value"
E77EA:  VSTR            D16, [SP,#0xA0+var_68]
E77EE:  ADD             R0, SP, #0xA0+var_84; int
E77F0:  BL              sub_DC6DC
E77F4:  ADD             R0, SP, #0xA0+var_78
E77F6:  ADD             R3, SP, #0xA0+var_84
E77F8:  MOV             R1, R6
E77FA:  MOVS            R2, #0x10
E77FC:  BL              sub_E7F28
E7800:  MOVS            R0, #0
E7802:  STR             R0, [SP,#0xA0+var_90]
E7804:  STRB.W          R0, [SP,#0xA0+var_98]
E7808:  ADD             R0, SP, #0xA0+var_58
E780A:  ADD             R2, SP, #0xA0+var_68
E780C:  ADD             R3, SP, #0xA0+var_78
E780E:  MOVS            R1, #0x65 ; 'e'
E7810:  STR.W           R8, [SP,#0xA0+var_A0]
E7814:  BL              sub_E7CE4
E7818:  ADD             R5, SP, #0xA0+var_58
E781A:  ADD             R2, SP, #0xA0+var_40
E781C:  MOV             R0, R4
E781E:  MOV             R1, R9
E7820:  MOV             R3, R5
E7822:  BL              sub_E7C40
E7826:  MOV             R4, R0
E7828:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE782E); `vtable for'nlohmann::detail::exception ...
E782A:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E782C:  ADDS            R0, #8
E782E:  STR             R0, [SP,#0xA0+var_58]
E7830:  ADD.W           R0, R5, #8; this
E7834:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E7838:  MOV             R0, R5; this
E783A:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E783E:  ADD             R0, SP, #0xA0+var_98
E7840:  BL              sub_E3F7A
E7844:  LDRB.W          R0, [SP,#0xA0+var_78]
E7848:  LSLS            R0, R0, #0x1F
E784A:  ITT NE
E784C:  LDRNE           R0, [SP,#0xA0+var_70]; void *
E784E:  BLXNE           j__ZdlPv; operator delete(void *)
E7852:  LDRB.W          R0, [SP,#0xA0+var_84]
E7856:  LSLS            R0, R0, #0x1F
E7858:  ITT NE
E785A:  LDRNE           R0, [SP,#0xA0+var_7C]; void *
E785C:  BLXNE           j__ZdlPv; operator delete(void *)
E7860:  LDRB.W          R0, [SP,#0xA0+var_40]
E7864:  LSLS            R0, R0, #0x1F
E7866:  BEQ.W           loc_E7764
E786A:  LDR             R0, [SP,#0xA0+var_38]; void *
E786C:  BLX             j__ZdlPv; operator delete(void *)
E7870:  B               loc_E7764
E7872:  MOVS            R4, #0
E7874:  B               loc_E7764
E7876:  LDR.W           R9, [R6,#0x34]
E787A:  ADD             R0, SP, #0xA0+var_40
E787C:  MOV             R1, R5
E787E:  BL              sub_E7C78
E7882:  VLDR            D16, [R6,#0x34]
E7886:  LDR             R0, [R6,#0x3C]
E7888:  LDR             R1, =(aArray - 0xE7890); "array" ...
E788A:  STR             R0, [SP,#0xA0+var_60]
E788C:  ADD             R1, PC; "array"
E788E:  VSTR            D16, [SP,#0xA0+var_68]
E7892:  ADD             R0, SP, #0xA0+var_84; int
E7894:  BL              sub_DC6DC
E7898:  ADD             R0, SP, #0xA0+var_78
E789A:  ADD             R3, SP, #0xA0+var_84
E789C:  MOV             R1, R6
E789E:  MOVS            R2, #0xA
E78A0:  BL              sub_E7F28
E78A4:  MOVS            R0, #0
E78A6:  STR             R0, [SP,#0xA0+var_90]
E78A8:  STRB.W          R0, [SP,#0xA0+var_98]
E78AC:  ADD             R0, SP, #0xA0+var_58
E78AE:  ADD             R2, SP, #0xA0+var_68
E78B0:  ADD             R3, SP, #0xA0+var_78
E78B2:  MOVS            R1, #0x65 ; 'e'
E78B4:  STR.W           R8, [SP,#0xA0+var_A0]
E78B8:  BL              sub_E7CE4
E78BC:  ADD             R5, SP, #0xA0+var_58
E78BE:  ADD             R2, SP, #0xA0+var_40
E78C0:  MOV             R0, R4
E78C2:  MOV             R1, R9
E78C4:  MOV             R3, R5
E78C6:  BL              sub_E7C40
E78CA:  B               loc_E7826
E78CC:  ALIGN 0x10
E78D0:  DCFD +Inf
E78D8:  DCD aValue - 0xE7796
E78DC:  DCD aValue - 0xE77EC
E78E0:  DCD _ZTVN8nlohmann6detail9exceptionE - 0xE782E
E78E4:  DCD aArray - 0xE7890
E78E8:  LDR.W           R9, [R6,#0x34]
E78EC:  ADD             R0, SP, #0xA0+var_40
E78EE:  MOV             R1, R5
E78F0:  BL              sub_E7C78
E78F4:  VLDR            D16, [R6,#0x34]
E78F8:  LDR             R0, [R6,#0x3C]
E78FA:  LDR             R1, =(aObject - 0xE7902); "object" ...
E78FC:  STR             R0, [SP,#0xA0+var_60]
E78FE:  ADD             R1, PC; "object"
E7900:  VSTR            D16, [SP,#0xA0+var_68]
E7904:  ADD             R0, SP, #0xA0+var_84; int
E7906:  BL              sub_DC6DC
E790A:  ADD             R0, SP, #0xA0+var_78
E790C:  ADD             R3, SP, #0xA0+var_84
E790E:  MOV             R1, R6
E7910:  MOVS            R2, #0xB
E7912:  BL              sub_E7F28
E7916:  MOVS            R0, #0
E7918:  STR             R0, [SP,#0xA0+var_90]
E791A:  STRB.W          R0, [SP,#0xA0+var_98]
E791E:  ADD             R0, SP, #0xA0+var_58
E7920:  ADD             R2, SP, #0xA0+var_68
E7922:  ADD             R3, SP, #0xA0+var_78
E7924:  MOVS            R1, #0x65 ; 'e'
E7926:  STR.W           R8, [SP,#0xA0+var_A0]
E792A:  BL              sub_E7CE4
E792E:  ADD             R5, SP, #0xA0+var_58
E7930:  ADD             R2, SP, #0xA0+var_40
E7932:  MOV             R0, R4
E7934:  MOV             R1, R9
E7936:  MOV             R3, R5
E7938:  BL              sub_E7C40
E793C:  B               loc_E7826
E793E:  LDR.W           R9, [R6,#0x34]
E7942:  ADD             R0, SP, #0xA0+var_40
E7944:  MOV             R1, R5
E7946:  BL              sub_E7C78
E794A:  VLDR            D16, [R6,#0x34]
E794E:  LDR             R0, [R6,#0x3C]
E7950:  LDR             R1, =(aObjectKey - 0xE7958); "object key" ...
E7952:  STR             R0, [SP,#0xA0+var_60]
E7954:  ADD             R1, PC; "object key"
E7956:  VSTR            D16, [SP,#0xA0+var_68]
E795A:  ADD             R0, SP, #0xA0+var_84; int
E795C:  BL              sub_DC6DC
E7960:  ADD             R0, SP, #0xA0+var_78
E7962:  ADD             R3, SP, #0xA0+var_84
E7964:  MOV             R1, R6
E7966:  MOVS            R2, #4
E7968:  BL              sub_E7F28
E796C:  MOVS            R0, #0
E796E:  STR             R0, [SP,#0xA0+var_90]
E7970:  STRB.W          R0, [SP,#0xA0+var_98]
E7974:  ADD             R0, SP, #0xA0+var_58
E7976:  ADD             R2, SP, #0xA0+var_68
E7978:  ADD             R3, SP, #0xA0+var_78
E797A:  MOVS            R1, #0x65 ; 'e'
E797C:  STR.W           R8, [SP,#0xA0+var_A0]
E7980:  BL              sub_E7CE4
E7984:  ADD             R5, SP, #0xA0+var_58
E7986:  ADD             R2, SP, #0xA0+var_40
E7988:  MOV             R0, R4
E798A:  MOV             R1, R9
E798C:  MOV             R3, R5
E798E:  BL              sub_E7C40
E7992:  B               loc_E7826
E7994:  LDR.W           R9, [R6,#0x34]
E7998:  ADD             R0, SP, #0xA0+var_40
E799A:  MOV             R1, R5
E799C:  BL              sub_E7C78
E79A0:  VLDR            D16, [R6,#0x34]
E79A4:  LDR             R0, [R6,#0x3C]
E79A6:  LDR             R1, =(aObjectSeparato - 0xE79AE); "object separator" ...
E79A8:  STR             R0, [SP,#0xA0+var_60]
E79AA:  ADD             R1, PC; "object separator"
E79AC:  VSTR            D16, [SP,#0xA0+var_68]
E79B0:  ADD             R0, SP, #0xA0+var_84; int
E79B2:  BL              sub_DC6DC
E79B6:  ADD             R0, SP, #0xA0+var_78
E79B8:  ADD             R3, SP, #0xA0+var_84
E79BA:  MOV             R1, R6
E79BC:  MOVS            R2, #0xC
E79BE:  BL              sub_E7F28
E79C2:  MOVS            R0, #0
E79C4:  STR             R0, [SP,#0xA0+var_90]
E79C6:  STRB.W          R0, [SP,#0xA0+var_98]
E79CA:  ADD             R0, SP, #0xA0+var_58
E79CC:  ADD             R2, SP, #0xA0+var_68
E79CE:  ADD             R3, SP, #0xA0+var_78
E79D0:  MOVS            R1, #0x65 ; 'e'
E79D2:  STR.W           R8, [SP,#0xA0+var_A0]
E79D6:  BL              sub_E7CE4
E79DA:  ADD             R5, SP, #0xA0+var_58
E79DC:  ADD             R2, SP, #0xA0+var_40
E79DE:  MOV             R0, R4
E79E0:  MOV             R1, R9
E79E2:  MOV             R3, R5
E79E4:  BL              sub_E7C40
E79E8:  B               loc_E7826
E79EA:  LDR             R6, [R6,#0x34]
E79EC:  ADD             R0, SP, #0xA0+var_40
E79EE:  MOV             R1, R5
E79F0:  BL              sub_E7C78
E79F4:  ADD             R0, SP, #0xA0+var_84
E79F6:  MOV             R1, R5
E79F8:  BL              sub_E7C78
E79FC:  LDR             R2, =(aNumberOverflow - 0xE7A02); "number overflow parsing '" ...
E79FE:  ADD             R2, PC; "number overflow parsing '"
E7A00:  ADD             R0, SP, #0xA0+var_84; int
E7A02:  MOVS            R1, #0; int
E7A04:  MOVS            R5, #0
E7A06:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E7A0A:  VLDR            D16, [R0]
E7A0E:  LDR             R2, [R0,#8]
E7A10:  LDR             R1, =(asc_88EDF - 0xE7A18); "'" ...
E7A12:  STR             R2, [SP,#0xA0+var_70]
E7A14:  ADD             R1, PC; "'"
E7A16:  VSTR            D16, [SP,#0xA0+var_78]
E7A1A:  STRD.W          R5, R5, [R0]
E7A1E:  STR             R5, [R0,#8]
E7A20:  ADD             R0, SP, #0xA0+var_78; int
E7A22:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E7A26:  VLDR            D16, [R0]
E7A2A:  LDR             R1, [R0,#8]
E7A2C:  STR             R1, [SP,#0xA0+var_60]
E7A2E:  MOVS            R1, #0
E7A30:  VSTR            D16, [SP,#0xA0+var_68]
E7A34:  STRD.W          R1, R1, [R0]
E7A38:  STR             R1, [R0,#8]
E7A3A:  STR             R1, [SP,#0xA0+var_90]
E7A3C:  STRB.W          R1, [SP,#0xA0+var_98]
E7A40:  ADD             R0, SP, #0xA0+var_58
E7A42:  ADD             R2, SP, #0xA0+var_68
E7A44:  ADD             R3, SP, #0xA0+var_98
E7A46:  MOV.W           R1, #0x196
E7A4A:  BL              sub_E92EC
E7A4E:  ADD             R5, SP, #0xA0+var_58
E7A50:  ADD             R2, SP, #0xA0+var_40
E7A52:  MOV             R0, R4
E7A54:  MOV             R1, R6
E7A56:  MOV             R3, R5
E7A58:  BL              sub_E92B4
E7A5C:  MOV             R4, R0
E7A5E:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE7A64); `vtable for'nlohmann::detail::exception ...
E7A60:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E7A62:  ADDS            R0, #8
E7A64:  STR             R0, [SP,#0xA0+var_58]
E7A66:  ADD.W           R0, R5, #8; this
E7A6A:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E7A6E:  MOV             R0, R5; this
E7A70:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E7A74:  ADD             R0, SP, #0xA0+var_98
E7A76:  BL              sub_E3F7A
E7A7A:  LDRB.W          R0, [SP,#0xA0+var_68]
E7A7E:  LSLS            R0, R0, #0x1F
E7A80:  BEQ.W           loc_E7844
E7A84:  LDR             R0, [SP,#0xA0+var_60]; void *
E7A86:  BLX             j__ZdlPv; operator delete(void *)
E7A8A:  B               loc_E7844
E7A8C:  LDR.W           R9, [R6,#0x34]
E7A90:  ADD             R0, SP, #0xA0+var_40
E7A92:  MOV             R1, R5
E7A94:  BL              sub_E7C78
E7A98:  VLDR            D16, [R6,#0x34]
E7A9C:  LDR             R0, [R6,#0x3C]
E7A9E:  LDR             R1, =(aObjectKey - 0xE7AA6); "object key" ...
E7AA0:  STR             R0, [SP,#0xA0+var_60]
E7AA2:  ADD             R1, PC; "object key"
E7AA4:  VSTR            D16, [SP,#0xA0+var_68]
E7AA8:  ADD             R0, SP, #0xA0+var_84; int
E7AAA:  BL              sub_DC6DC
E7AAE:  ADD             R0, SP, #0xA0+var_78
E7AB0:  ADD             R3, SP, #0xA0+var_84
E7AB2:  MOV             R1, R6
E7AB4:  MOVS            R2, #4
E7AB6:  BL              sub_E7F28
E7ABA:  MOVS            R0, #0
E7ABC:  STR             R0, [SP,#0xA0+var_90]
E7ABE:  STRB.W          R0, [SP,#0xA0+var_98]
E7AC2:  ADD             R0, SP, #0xA0+var_58
E7AC4:  ADD             R2, SP, #0xA0+var_68
E7AC6:  ADD             R3, SP, #0xA0+var_78
E7AC8:  MOVS            R1, #0x65 ; 'e'
E7ACA:  STR.W           R8, [SP,#0xA0+var_A0]
E7ACE:  BL              sub_E7CE4
E7AD2:  ADD             R5, SP, #0xA0+var_58
E7AD4:  ADD             R2, SP, #0xA0+var_40
E7AD6:  MOV             R0, R4
E7AD8:  MOV             R1, R9
E7ADA:  MOV             R3, R5
E7ADC:  BL              sub_E7C40
E7AE0:  B               loc_E7826
E7AE2:  LDR.W           R9, [R6,#0x34]
E7AE6:  ADD             R0, SP, #0xA0+var_40
E7AE8:  MOV             R1, R5
E7AEA:  BL              sub_E7C78
E7AEE:  VLDR            D16, [R6,#0x34]
E7AF2:  LDR             R0, [R6,#0x3C]
E7AF4:  LDR             R1, =(aObjectSeparato - 0xE7AFC); "object separator" ...
E7AF6:  STR             R0, [SP,#0xA0+var_60]
E7AF8:  ADD             R1, PC; "object separator"
E7AFA:  VSTR            D16, [SP,#0xA0+var_68]
E7AFE:  ADD             R0, SP, #0xA0+var_84; int
E7B00:  BL              sub_DC6DC
E7B04:  ADD             R0, SP, #0xA0+var_78
E7B06:  ADD             R3, SP, #0xA0+var_84
E7B08:  MOV             R1, R6
E7B0A:  MOVS            R2, #0xC
E7B0C:  BL              sub_E7F28
E7B10:  MOVS            R0, #0
E7B12:  STR             R0, [SP,#0xA0+var_90]
E7B14:  STRB.W          R0, [SP,#0xA0+var_98]
E7B18:  ADD             R0, SP, #0xA0+var_58
E7B1A:  ADD             R2, SP, #0xA0+var_68
E7B1C:  ADD             R3, SP, #0xA0+var_78
E7B1E:  MOVS            R1, #0x65 ; 'e'
E7B20:  STR.W           R8, [SP,#0xA0+var_A0]
E7B24:  BL              sub_E7CE4
E7B28:  ADD             R5, SP, #0xA0+var_58
E7B2A:  ADD             R2, SP, #0xA0+var_40
E7B2C:  MOV             R0, R4
E7B2E:  MOV             R1, R9
E7B30:  MOV             R3, R5
E7B32:  BL              sub_E7C40
E7B36:  B               loc_E7826
