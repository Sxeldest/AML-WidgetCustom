; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager19RestoreStuffFromMemEv
; Address            : 0x4A961C - 0x4A9AE2
; =========================================================

4A961C:  PUSH            {R4-R7,LR}
4A961E:  ADD             R7, SP, #0xC
4A9620:  PUSH.W          {R8-R11}
4A9624:  SUB             SP, SP, #4
4A9626:  MOV             R11, R0
4A9628:  LDR.W           R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4A9632)
4A962C:  MOVS            R1, #0
4A962E:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4A9630:  STR.W           R1, [R11,#0x10]
4A9634:  STR.W           R1, [R11,#4]
4A9638:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4A963A:  STR.W           R1, [R11,#0x1C]
4A963E:  STR.W           R1, [R11,#0x28]
4A9642:  STR.W           R1, [R11,#0x34]
4A9646:  STR.W           R1, [R11,#0x40]
4A964A:  STR.W           R1, [R11,#0x4C]
4A964E:  STR.W           R1, [R11,#0x58]
4A9652:  STR.W           R1, [R11,#0x64]
4A9656:  STR.W           R1, [R11,#0x70]
4A965A:  LDR.W           R10, [R0]; CPools::ms_pPedAttractorPool
4A965E:  LDR.W           R0, [R10,#8]
4A9662:  CMP             R0, #0
4A9664:  BEQ.W           loc_4A9ADA
4A9668:  MOVS            R1, #0xEC
4A966A:  SUBS            R4, R0, #1
4A966C:  MULS            R1, R0
4A966E:  SUB.W           R5, R1, #0xEC
4A9672:  LDR.W           R0, [R10,#4]
4A9676:  LDRSB           R0, [R0,R4]
4A9678:  CMP             R0, #0
4A967A:  BLT.W           def_4A9698; jumptable 004A9698 default case
4A967E:  LDR.W           R0, [R10]
4A9682:  ADDS.W          R9, R0, R5
4A9686:  BEQ.W           def_4A9698; jumptable 004A9698 default case
4A968A:  LDR             R0, [R0,R5]
4A968C:  LDR             R1, [R0]
4A968E:  MOV             R0, R9
4A9690:  BLX             R1
4A9692:  CMP             R0, #9; switch 10 cases
4A9694:  BHI.W           def_4A9698; jumptable 004A9698 default case
4A9698:  TBH.W           [PC,R0,LSL#1]; switch jump
4A969C:  DCW 0xA; jump table for switch statement
4A969E:  DCW 0x35
4A96A0:  DCW 0x60
4A96A2:  DCW 0x8B
4A96A4:  DCW 0xB6
4A96A6:  DCW 0xE1
4A96A8:  DCW 0x10C
4A96AA:  DCW 0x137
4A96AC:  DCW 0x162
4A96AE:  DCW 0x18D
4A96B0:  LDRD.W          R1, R8, [R11,#0xC]; jumptable 004A9698 case 0
4A96B4:  ADD.W           R0, R8, #1
4A96B8:  CMP             R1, R0
4A96BA:  BCS.W           loc_4A9A0A
4A96BE:  MOVW            R1, #0xAAAB
4A96C2:  LSLS            R0, R0, #2
4A96C4:  MOVT            R1, #0xAAAA
4A96C8:  UMULL.W         R0, R1, R0, R1
4A96CC:  MOVS            R0, #3
4A96CE:  ADD.W           R0, R0, R1,LSR#1
4A96D2:  STR             R0, [SP,#0x20+var_20]
4A96D4:  LSLS            R0, R0, #2; byte_count
4A96D6:  BLX             malloc
4A96DA:  LDR.W           R1, [R11,#0x14]; src
4A96DE:  MOV             R6, R0
4A96E0:  CMP             R1, #0
4A96E2:  BEQ             loc_4A96FA
4A96E4:  MOV.W           R2, R8,LSL#2; n
4A96E8:  MOV             R0, R6; dest
4A96EA:  MOV             R8, R1
4A96EC:  BLX             memmove_1
4A96F0:  MOV             R0, R8; p
4A96F2:  BLX             free
4A96F6:  LDR.W           R8, [R11,#0x10]
4A96FA:  STR.W           R6, [R11,#0x14]
4A96FE:  LDR             R0, [SP,#0x20+var_20]
4A9700:  STR.W           R0, [R11,#0xC]
4A9704:  B               loc_4A9A0E
4A9706:  LDRD.W          R1, R8, [R11]; jumptable 004A9698 case 1
4A970A:  ADD.W           R0, R8, #1
4A970E:  CMP             R1, R0
4A9710:  BCS.W           loc_4A9A1E
4A9714:  MOVW            R1, #0xAAAB
4A9718:  LSLS            R0, R0, #2
4A971A:  MOVT            R1, #0xAAAA
4A971E:  UMULL.W         R0, R1, R0, R1
4A9722:  MOVS            R0, #3
4A9724:  ADD.W           R0, R0, R1,LSR#1
4A9728:  STR             R0, [SP,#0x20+var_20]
4A972A:  LSLS            R0, R0, #2; byte_count
4A972C:  BLX             malloc
4A9730:  LDR.W           R1, [R11,#8]; src
4A9734:  MOV             R6, R0
4A9736:  CMP             R1, #0
4A9738:  BEQ             loc_4A9750
4A973A:  MOV.W           R2, R8,LSL#2; n
4A973E:  MOV             R0, R6; dest
4A9740:  MOV             R8, R1
4A9742:  BLX             memmove_1
4A9746:  MOV             R0, R8; p
4A9748:  BLX             free
4A974C:  LDR.W           R8, [R11,#4]
4A9750:  STR.W           R6, [R11,#8]
4A9754:  LDR             R0, [SP,#0x20+var_20]
4A9756:  STR.W           R0, [R11]
4A975A:  B               loc_4A9A22
4A975C:  LDRD.W          R1, R8, [R11,#0x18]; jumptable 004A9698 case 2
4A9760:  ADD.W           R0, R8, #1
4A9764:  CMP             R1, R0
4A9766:  BCS.W           loc_4A9A32
4A976A:  MOVW            R1, #0xAAAB
4A976E:  LSLS            R0, R0, #2
4A9770:  MOVT            R1, #0xAAAA
4A9774:  UMULL.W         R0, R1, R0, R1
4A9778:  MOVS            R0, #3
4A977A:  ADD.W           R0, R0, R1,LSR#1
4A977E:  STR             R0, [SP,#0x20+var_20]
4A9780:  LSLS            R0, R0, #2; byte_count
4A9782:  BLX             malloc
4A9786:  LDR.W           R1, [R11,#0x20]; src
4A978A:  MOV             R6, R0
4A978C:  CMP             R1, #0
4A978E:  BEQ             loc_4A97A6
4A9790:  MOV.W           R2, R8,LSL#2; n
4A9794:  MOV             R0, R6; dest
4A9796:  MOV             R8, R1
4A9798:  BLX             memmove_1
4A979C:  MOV             R0, R8; p
4A979E:  BLX             free
4A97A2:  LDR.W           R8, [R11,#0x1C]
4A97A6:  STR.W           R6, [R11,#0x20]
4A97AA:  LDR             R0, [SP,#0x20+var_20]
4A97AC:  STR.W           R0, [R11,#0x18]
4A97B0:  B               loc_4A9A36
4A97B2:  LDRD.W          R1, R8, [R11,#0x24]; jumptable 004A9698 case 3
4A97B6:  ADD.W           R0, R8, #1
4A97BA:  CMP             R1, R0
4A97BC:  BCS.W           loc_4A9A46
4A97C0:  MOVW            R1, #0xAAAB
4A97C4:  LSLS            R0, R0, #2
4A97C6:  MOVT            R1, #0xAAAA
4A97CA:  UMULL.W         R0, R1, R0, R1
4A97CE:  MOVS            R0, #3
4A97D0:  ADD.W           R0, R0, R1,LSR#1
4A97D4:  STR             R0, [SP,#0x20+var_20]
4A97D6:  LSLS            R0, R0, #2; byte_count
4A97D8:  BLX             malloc
4A97DC:  LDR.W           R1, [R11,#0x2C]; src
4A97E0:  MOV             R6, R0
4A97E2:  CMP             R1, #0
4A97E4:  BEQ             loc_4A97FC
4A97E6:  MOV.W           R2, R8,LSL#2; n
4A97EA:  MOV             R0, R6; dest
4A97EC:  MOV             R8, R1
4A97EE:  BLX             memmove_1
4A97F2:  MOV             R0, R8; p
4A97F4:  BLX             free
4A97F8:  LDR.W           R8, [R11,#0x28]
4A97FC:  STR.W           R6, [R11,#0x2C]
4A9800:  LDR             R0, [SP,#0x20+var_20]
4A9802:  STR.W           R0, [R11,#0x24]
4A9806:  B               loc_4A9A4A
4A9808:  LDRD.W          R1, R8, [R11,#0x30]; jumptable 004A9698 case 4
4A980C:  ADD.W           R0, R8, #1
4A9810:  CMP             R1, R0
4A9812:  BCS.W           loc_4A9A5A
4A9816:  MOVW            R1, #0xAAAB
4A981A:  LSLS            R0, R0, #2
4A981C:  MOVT            R1, #0xAAAA
4A9820:  UMULL.W         R0, R1, R0, R1
4A9824:  MOVS            R0, #3
4A9826:  ADD.W           R0, R0, R1,LSR#1
4A982A:  STR             R0, [SP,#0x20+var_20]
4A982C:  LSLS            R0, R0, #2; byte_count
4A982E:  BLX             malloc
4A9832:  LDR.W           R1, [R11,#0x38]; src
4A9836:  MOV             R6, R0
4A9838:  CMP             R1, #0
4A983A:  BEQ             loc_4A9852
4A983C:  MOV.W           R2, R8,LSL#2; n
4A9840:  MOV             R0, R6; dest
4A9842:  MOV             R8, R1
4A9844:  BLX             memmove_1
4A9848:  MOV             R0, R8; p
4A984A:  BLX             free
4A984E:  LDR.W           R8, [R11,#0x34]
4A9852:  STR.W           R6, [R11,#0x38]
4A9856:  LDR             R0, [SP,#0x20+var_20]
4A9858:  STR.W           R0, [R11,#0x30]
4A985C:  B               loc_4A9A5E
4A985E:  LDRD.W          R1, R8, [R11,#0x3C]; jumptable 004A9698 case 5
4A9862:  ADD.W           R0, R8, #1
4A9866:  CMP             R1, R0
4A9868:  BCS.W           loc_4A9A6E
4A986C:  MOVW            R1, #0xAAAB
4A9870:  LSLS            R0, R0, #2
4A9872:  MOVT            R1, #0xAAAA
4A9876:  UMULL.W         R0, R1, R0, R1
4A987A:  MOVS            R0, #3
4A987C:  ADD.W           R0, R0, R1,LSR#1
4A9880:  STR             R0, [SP,#0x20+var_20]
4A9882:  LSLS            R0, R0, #2; byte_count
4A9884:  BLX             malloc
4A9888:  LDR.W           R1, [R11,#0x44]; src
4A988C:  MOV             R6, R0
4A988E:  CMP             R1, #0
4A9890:  BEQ             loc_4A98A8
4A9892:  MOV.W           R2, R8,LSL#2; n
4A9896:  MOV             R0, R6; dest
4A9898:  MOV             R8, R1
4A989A:  BLX             memmove_1
4A989E:  MOV             R0, R8; p
4A98A0:  BLX             free
4A98A4:  LDR.W           R8, [R11,#0x40]
4A98A8:  STR.W           R6, [R11,#0x44]
4A98AC:  LDR             R0, [SP,#0x20+var_20]
4A98AE:  STR.W           R0, [R11,#0x3C]
4A98B2:  B               loc_4A9A72
4A98B4:  LDRD.W          R1, R8, [R11,#0x48]; jumptable 004A9698 case 6
4A98B8:  ADD.W           R0, R8, #1
4A98BC:  CMP             R1, R0
4A98BE:  BCS.W           loc_4A9A82
4A98C2:  MOVW            R1, #0xAAAB
4A98C6:  LSLS            R0, R0, #2
4A98C8:  MOVT            R1, #0xAAAA
4A98CC:  UMULL.W         R0, R1, R0, R1
4A98D0:  MOVS            R0, #3
4A98D2:  ADD.W           R0, R0, R1,LSR#1
4A98D6:  STR             R0, [SP,#0x20+var_20]
4A98D8:  LSLS            R0, R0, #2; byte_count
4A98DA:  BLX             malloc
4A98DE:  LDR.W           R1, [R11,#0x50]; src
4A98E2:  MOV             R6, R0
4A98E4:  CMP             R1, #0
4A98E6:  BEQ             loc_4A98FE
4A98E8:  MOV.W           R2, R8,LSL#2; n
4A98EC:  MOV             R0, R6; dest
4A98EE:  MOV             R8, R1
4A98F0:  BLX             memmove_1
4A98F4:  MOV             R0, R8; p
4A98F6:  BLX             free
4A98FA:  LDR.W           R8, [R11,#0x4C]
4A98FE:  STR.W           R6, [R11,#0x50]
4A9902:  LDR             R0, [SP,#0x20+var_20]
4A9904:  STR.W           R0, [R11,#0x48]
4A9908:  B               loc_4A9A86
4A990A:  LDRD.W          R1, R8, [R11,#0x54]; jumptable 004A9698 case 7
4A990E:  ADD.W           R0, R8, #1
4A9912:  CMP             R1, R0
4A9914:  BCS.W           loc_4A9A96
4A9918:  MOVW            R1, #0xAAAB
4A991C:  LSLS            R0, R0, #2
4A991E:  MOVT            R1, #0xAAAA
4A9922:  UMULL.W         R0, R1, R0, R1
4A9926:  MOVS            R0, #3
4A9928:  ADD.W           R0, R0, R1,LSR#1
4A992C:  STR             R0, [SP,#0x20+var_20]
4A992E:  LSLS            R0, R0, #2; byte_count
4A9930:  BLX             malloc
4A9934:  LDR.W           R1, [R11,#0x5C]; src
4A9938:  MOV             R6, R0
4A993A:  CMP             R1, #0
4A993C:  BEQ             loc_4A9954
4A993E:  MOV.W           R2, R8,LSL#2; n
4A9942:  MOV             R0, R6; dest
4A9944:  MOV             R8, R1
4A9946:  BLX             memmove_1
4A994A:  MOV             R0, R8; p
4A994C:  BLX             free
4A9950:  LDR.W           R8, [R11,#0x58]
4A9954:  STR.W           R6, [R11,#0x5C]
4A9958:  LDR             R0, [SP,#0x20+var_20]
4A995A:  STR.W           R0, [R11,#0x54]
4A995E:  B               loc_4A9A9A
4A9960:  LDRD.W          R1, R8, [R11,#0x60]; jumptable 004A9698 case 8
4A9964:  ADD.W           R0, R8, #1
4A9968:  CMP             R1, R0
4A996A:  BCS.W           loc_4A9AAA
4A996E:  MOVW            R1, #0xAAAB
4A9972:  LSLS            R0, R0, #2
4A9974:  MOVT            R1, #0xAAAA
4A9978:  UMULL.W         R0, R1, R0, R1
4A997C:  MOVS            R0, #3
4A997E:  ADD.W           R0, R0, R1,LSR#1
4A9982:  STR             R0, [SP,#0x20+var_20]
4A9984:  LSLS            R0, R0, #2; byte_count
4A9986:  BLX             malloc
4A998A:  LDR.W           R1, [R11,#0x68]; src
4A998E:  MOV             R6, R0
4A9990:  CMP             R1, #0
4A9992:  BEQ             loc_4A99AA
4A9994:  MOV.W           R2, R8,LSL#2; n
4A9998:  MOV             R0, R6; dest
4A999A:  MOV             R8, R1
4A999C:  BLX             memmove_1
4A99A0:  MOV             R0, R8; p
4A99A2:  BLX             free
4A99A6:  LDR.W           R8, [R11,#0x64]
4A99AA:  STR.W           R6, [R11,#0x68]
4A99AE:  LDR             R0, [SP,#0x20+var_20]
4A99B0:  STR.W           R0, [R11,#0x60]
4A99B4:  B               loc_4A9AAE
4A99B6:  LDRD.W          R1, R8, [R11,#0x6C]; jumptable 004A9698 case 9
4A99BA:  ADD.W           R0, R8, #1
4A99BE:  CMP             R1, R0
4A99C0:  BCS             loc_4A9ABE
4A99C2:  MOVW            R1, #0xAAAB
4A99C6:  LSLS            R0, R0, #2
4A99C8:  MOVT            R1, #0xAAAA
4A99CC:  UMULL.W         R0, R1, R0, R1
4A99D0:  MOVS            R0, #3
4A99D2:  ADD.W           R0, R0, R1,LSR#1
4A99D6:  STR             R0, [SP,#0x20+var_20]
4A99D8:  LSLS            R0, R0, #2; byte_count
4A99DA:  BLX             malloc
4A99DE:  LDR.W           R1, [R11,#0x74]; src
4A99E2:  MOV             R6, R0
4A99E4:  CMP             R1, #0
4A99E6:  BEQ             loc_4A99FE
4A99E8:  MOV.W           R2, R8,LSL#2; n
4A99EC:  MOV             R0, R6; dest
4A99EE:  MOV             R8, R1
4A99F0:  BLX             memmove_1
4A99F4:  MOV             R0, R8; p
4A99F6:  BLX             free
4A99FA:  LDR.W           R8, [R11,#0x70]
4A99FE:  STR.W           R6, [R11,#0x74]
4A9A02:  LDR             R0, [SP,#0x20+var_20]
4A9A04:  STR.W           R0, [R11,#0x6C]
4A9A08:  B               loc_4A9AC2
4A9A0A:  LDR.W           R6, [R11,#0x14]
4A9A0E:  STR.W           R9, [R6,R8,LSL#2]
4A9A12:  LDR.W           R0, [R11,#0x10]
4A9A16:  ADDS            R0, #1
4A9A18:  STR.W           R0, [R11,#0x10]
4A9A1C:  B               def_4A9698; jumptable 004A9698 default case
4A9A1E:  LDR.W           R6, [R11,#8]
4A9A22:  STR.W           R9, [R6,R8,LSL#2]
4A9A26:  LDR.W           R0, [R11,#4]
4A9A2A:  ADDS            R0, #1
4A9A2C:  STR.W           R0, [R11,#4]
4A9A30:  B               def_4A9698; jumptable 004A9698 default case
4A9A32:  LDR.W           R6, [R11,#0x20]
4A9A36:  STR.W           R9, [R6,R8,LSL#2]
4A9A3A:  LDR.W           R0, [R11,#0x1C]
4A9A3E:  ADDS            R0, #1
4A9A40:  STR.W           R0, [R11,#0x1C]
4A9A44:  B               def_4A9698; jumptable 004A9698 default case
4A9A46:  LDR.W           R6, [R11,#0x2C]
4A9A4A:  STR.W           R9, [R6,R8,LSL#2]
4A9A4E:  LDR.W           R0, [R11,#0x28]
4A9A52:  ADDS            R0, #1
4A9A54:  STR.W           R0, [R11,#0x28]
4A9A58:  B               def_4A9698; jumptable 004A9698 default case
4A9A5A:  LDR.W           R6, [R11,#0x38]
4A9A5E:  STR.W           R9, [R6,R8,LSL#2]
4A9A62:  LDR.W           R0, [R11,#0x34]
4A9A66:  ADDS            R0, #1
4A9A68:  STR.W           R0, [R11,#0x34]
4A9A6C:  B               def_4A9698; jumptable 004A9698 default case
4A9A6E:  LDR.W           R6, [R11,#0x44]
4A9A72:  STR.W           R9, [R6,R8,LSL#2]
4A9A76:  LDR.W           R0, [R11,#0x40]
4A9A7A:  ADDS            R0, #1
4A9A7C:  STR.W           R0, [R11,#0x40]
4A9A80:  B               def_4A9698; jumptable 004A9698 default case
4A9A82:  LDR.W           R6, [R11,#0x50]
4A9A86:  STR.W           R9, [R6,R8,LSL#2]
4A9A8A:  LDR.W           R0, [R11,#0x4C]
4A9A8E:  ADDS            R0, #1
4A9A90:  STR.W           R0, [R11,#0x4C]
4A9A94:  B               def_4A9698; jumptable 004A9698 default case
4A9A96:  LDR.W           R6, [R11,#0x5C]
4A9A9A:  STR.W           R9, [R6,R8,LSL#2]
4A9A9E:  LDR.W           R0, [R11,#0x58]
4A9AA2:  ADDS            R0, #1
4A9AA4:  STR.W           R0, [R11,#0x58]
4A9AA8:  B               def_4A9698; jumptable 004A9698 default case
4A9AAA:  LDR.W           R6, [R11,#0x68]
4A9AAE:  STR.W           R9, [R6,R8,LSL#2]
4A9AB2:  LDR.W           R0, [R11,#0x64]
4A9AB6:  ADDS            R0, #1
4A9AB8:  STR.W           R0, [R11,#0x64]
4A9ABC:  B               def_4A9698; jumptable 004A9698 default case
4A9ABE:  LDR.W           R6, [R11,#0x74]
4A9AC2:  STR.W           R9, [R6,R8,LSL#2]
4A9AC6:  LDR.W           R0, [R11,#0x70]
4A9ACA:  ADDS            R0, #1
4A9ACC:  STR.W           R0, [R11,#0x70]
4A9AD0:  SUBS            R4, #1; jumptable 004A9698 default case
4A9AD2:  SUBS            R5, #0xEC
4A9AD4:  ADDS            R0, R4, #1
4A9AD6:  BNE.W           loc_4A9672
4A9ADA:  ADD             SP, SP, #4
4A9ADC:  POP.W           {R8-R11}
4A9AE0:  POP             {R4-R7,PC}
