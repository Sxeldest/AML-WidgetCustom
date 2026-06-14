; =========================================================
; Game Engine Function: _ZN9CMessages20AddMessageWithNumberEPKcPtjtiiiiiib
; Address            : 0x54C710 - 0x54C8B6
; =========================================================

54C710:  PUSH            {R4-R7,LR}
54C712:  ADD             R7, SP, #0xC
54C714:  PUSH.W          {R8-R11}
54C718:  SUB.W           SP, SP, #0x658; int
54C71C:  SUB             SP, SP, #4
54C71E:  ADD.W           LR, R7, #8
54C722:  STR             R0, [SP,#0x678+var_664]; unsigned __int16 *
54C724:  MOV             R6, R3
54C726:  MOV             R9, R2
54C728:  MOV             R5, R1
54C72A:  LDM.W           LR, {R1-R3,LR}; int
54C72E:  ADD             R0, SP, #0x678+var_65C
54C730:  LDRD.W          R4, R12, [R7,#arg_10]
54C734:  STRD.W          LR, R4, [SP,#0x678+var_678]; int
54C738:  STRD.W          R12, R0, [SP,#0x678+var_670]; int
54C73C:  MOV             R0, R5; this
54C73E:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
54C742:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C74A)
54C744:  STR             R5, [SP,#0x678+var_660]
54C746:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C748:  LDR.W           R8, [R0]; CMessages::BriefMessages ...
54C74C:  LDR.W           R0, [R8,#(dword_A00290 - 0xA00288)]!
54C750:  CBZ             R0, loc_54C7C0
54C752:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C758)
54C754:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C756:  LDR.W           R8, [R0]; CMessages::BriefMessages ...
54C75A:  LDR.W           R0, [R8,#(dword_A002C8 - 0xA00288)]!
54C75E:  CBZ             R0, loc_54C7CC
54C760:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C766)
54C762:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C764:  LDR.W           R8, [R0]; CMessages::BriefMessages ...
54C768:  LDR.W           R0, [R8,#(dword_A00300 - 0xA00288)]!
54C76C:  CBZ             R0, loc_54C7D8
54C76E:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C774)
54C770:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C772:  LDR.W           R8, [R0]; CMessages::BriefMessages ...
54C776:  LDR.W           R0, [R8,#(dword_A00338 - 0xA00288)]!
54C77A:  CBZ             R0, loc_54C7E4
54C77C:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C782)
54C77E:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C780:  LDR.W           R8, [R0]; CMessages::BriefMessages ...
54C784:  LDR.W           R0, [R8,#(dword_A00370 - 0xA00288)]!
54C788:  CBZ             R0, loc_54C7F0
54C78A:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C790)
54C78C:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C78E:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C790:  LDR.W           R1, [R0,#(dword_A003A8 - 0xA00288)]
54C794:  CBZ             R1, loc_54C7FC
54C796:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C79C)
54C798:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C79A:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C79C:  LDR.W           R1, [R0,#(dword_A003E0 - 0xA00288)]
54C7A0:  CBZ             R1, loc_54C80C
54C7A2:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C7A8)
54C7A4:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C7A6:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C7A8:  LDR.W           R1, [R0,#(dword_A00418 - 0xA00288)]
54C7AC:  CMP             R1, #0
54C7AE:  BNE             loc_54C8AA
54C7B0:  MOV             R5, R6
54C7B2:  MOV             R6, R9
54C7B4:  ADD.W           R8, R0, #0x190
54C7B8:  MOV.W           R9, #1
54C7BC:  MOVS            R0, #7
54C7BE:  B               loc_54C81A
54C7C0:  MOV             R5, R6
54C7C2:  MOV             R6, R9
54C7C4:  MOVS            R0, #0
54C7C6:  MOV.W           R9, #0
54C7CA:  B               loc_54C81A
54C7CC:  MOV             R5, R6
54C7CE:  MOV             R6, R9
54C7D0:  MOVS            R0, #1
54C7D2:  MOV.W           R9, #1
54C7D6:  B               loc_54C81A
54C7D8:  MOV             R5, R6
54C7DA:  MOV             R6, R9
54C7DC:  MOV.W           R9, #1
54C7E0:  MOVS            R0, #2
54C7E2:  B               loc_54C81A
54C7E4:  MOV             R5, R6
54C7E6:  MOV             R6, R9
54C7E8:  MOV.W           R9, #1
54C7EC:  MOVS            R0, #3
54C7EE:  B               loc_54C81A
54C7F0:  MOV             R5, R6
54C7F2:  MOV             R6, R9
54C7F4:  MOV.W           R9, #1
54C7F8:  MOVS            R0, #4
54C7FA:  B               loc_54C81A
54C7FC:  MOV             R5, R6
54C7FE:  MOV             R6, R9
54C800:  ADD.W           R8, R0, #0x120
54C804:  MOV.W           R9, #1
54C808:  MOVS            R0, #5
54C80A:  B               loc_54C81A
54C80C:  MOV             R5, R6
54C80E:  MOV             R6, R9
54C810:  ADD.W           R8, R0, #0x158
54C814:  MOV.W           R9, #1
54C818:  MOVS            R0, #6
54C81A:  LDR             R1, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C828)
54C81C:  RSB.W           R11, R0, R0,LSL#3
54C820:  LDR.W           R10, [R7,#arg_18]
54C824:  ADD             R1, PC; _ZN9CMessages13BriefMessagesE_ptr
54C826:  LDR             R1, [R1]; CMessages::BriefMessages ...
54C828:  ADD.W           R0, R1, R11,LSL#3; char *
54C82C:  LDR             R1, [SP,#0x678+var_664]; char *
54C82E:  CBZ             R1, loc_54C838
54C830:  MOVS            R2, #8; size_t
54C832:  BLX             strncpy
54C836:  B               loc_54C83C
54C838:  MOVS            R1, #0
54C83A:  STRB            R1, [R0]; CMessages::PreviousBriefs ...
54C83C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54C84A)
54C83E:  MOVS            R2, #0
54C840:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C84E)
54C842:  CMP.W           R9, #0
54C846:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54C848:  LDR             R3, [SP,#0x678+var_660]
54C84A:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C84C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
54C84E:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C850:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
54C852:  ADD.W           R0, R0, R11,LSL#3
54C856:  STRB            R2, [R0,#7]
54C858:  STR.W           R3, [R8]
54C85C:  STRH            R5, [R0,#0xC]
54C85E:  STRD.W          R6, R1, [R0,#0x10]; CMessages::PreviousBriefs ...
54C862:  LDR             R1, [R7,#arg_0]
54C864:  STR             R1, [R0,#0x18]; CMessages::PreviousBriefs ...
54C866:  LDR             R1, [R7,#arg_4]
54C868:  STR             R1, [R0,#0x1C]
54C86A:  LDR             R1, [R7,#arg_8]
54C86C:  STR             R1, [R0,#0x20]; CMessages::PreviousBriefs ...
54C86E:  LDR             R1, [R7,#arg_C]
54C870:  STRD.W          R1, R4, [R0,#0x24]
54C874:  LDR             R1, [R7,#arg_14]
54C876:  STRD.W          R1, R2, [R0,#0x2C]
54C87A:  STRB.W          R10, [R0,#0x34]
54C87E:  BNE             loc_54C8AA
54C880:  CMP.W           R10, #0
54C884:  BEQ             loc_54C8AA
54C886:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C88C)
54C888:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C88A:  LDR             R0, [R0]; this
54C88C:  ADD.W           R6, R0, #0x18
54C890:  LDR             R1, [R0,#(dword_A00290 - 0xA00288)]; char *
54C892:  LDM             R6, {R2,R3,R6}; int
54C894:  LDRD.W          R5, R4, [R0,#(dword_A002AC - 0xA00288)]
54C898:  LDRD.W          R12, LR, [R0,#(dword_A002B4 - 0xA00288)]
54C89C:  STRD.W          R6, R5, [SP,#0x678+var_678]; int
54C8A0:  ADD             R5, SP, #0x678+var_670
54C8A2:  STM.W           R5, {R4,R12,LR}
54C8A6:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
54C8AA:  ADD.W           SP, SP, #0x658
54C8AE:  ADD             SP, SP, #4
54C8B0:  POP.W           {R8-R11}
54C8B4:  POP             {R4-R7,PC}
