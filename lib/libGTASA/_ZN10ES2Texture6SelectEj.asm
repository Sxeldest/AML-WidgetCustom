; =========================================================
; Game Engine Function: _ZN10ES2Texture6SelectEj
; Address            : 0x1D165C - 0x1D171C
; =========================================================

1D165C:  PUSH            {R4,R6,R7,LR}
1D165E:  ADD             R7, SP, #8
1D1660:  LDR             R2, =(_ZN9RQTexture8selectedE_ptr - 0x1D166C)
1D1662:  MOV.W           R12, #0x18
1D1666:  LDR             R3, =(renderQueue_ptr - 0x1D166E)
1D1668:  ADD             R2, PC; _ZN9RQTexture8selectedE_ptr
1D166A:  ADD             R3, PC; renderQueue_ptr
1D166C:  LDR             R2, [R2]; RQTexture::selected ...
1D166E:  LDR             R3, [R3]; renderQueue
1D1670:  STR.W           R0, [R2,R1,LSL#2]
1D1674:  LDR             R2, [R3]
1D1676:  LDR.W           R4, [R2,#0x274]
1D167A:  STR.W           R12, [R2,#0x278]
1D167E:  STR.W           R12, [R4]
1D1682:  LDR.W           R4, [R2,#0x274]
1D1686:  ADDS            R4, #4
1D1688:  STR.W           R4, [R2,#0x274]
1D168C:  LDR             R2, [R3]
1D168E:  LDR.W           R4, [R2,#0x274]
1D1692:  STR             R0, [R4]
1D1694:  LDR.W           R0, [R2,#0x274]
1D1698:  ADDS            R0, #4
1D169A:  STR.W           R0, [R2,#0x274]
1D169E:  LDR             R0, [R3]
1D16A0:  LDR.W           R2, [R0,#0x274]
1D16A4:  STR             R1, [R2]
1D16A6:  LDR.W           R1, [R0,#0x274]
1D16AA:  ADDS            R1, #4
1D16AC:  STR.W           R1, [R0,#0x274]
1D16B0:  LDR             R4, [R3]
1D16B2:  LDRB.W          R0, [R4,#0x259]
1D16B6:  CMP             R0, #0
1D16B8:  ITT NE
1D16BA:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D16BE:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D16C2:  LDRD.W          R1, R2, [R4,#0x270]
1D16C6:  ADD.W           R0, R4, #0x270
1D16CA:  DMB.W           ISH
1D16CE:  SUBS            R1, R2, R1
1D16D0:  LDREX.W         R2, [R0]
1D16D4:  ADD             R2, R1
1D16D6:  STREX.W         R3, R2, [R0]
1D16DA:  CMP             R3, #0
1D16DC:  BNE             loc_1D16D0
1D16DE:  DMB.W           ISH
1D16E2:  LDRB.W          R0, [R4,#0x259]
1D16E6:  CMP             R0, #0
1D16E8:  ITT NE
1D16EA:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D16EE:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D16F2:  LDRB.W          R0, [R4,#0x258]
1D16F6:  CMP             R0, #0
1D16F8:  ITT EQ
1D16FA:  MOVEQ           R0, R4; this
1D16FC:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D1700:  LDR.W           R1, [R4,#0x270]
1D1704:  LDR.W           R0, [R4,#0x264]
1D1708:  ADD.W           R1, R1, #0x400
1D170C:  CMP             R1, R0
1D170E:  IT LS
1D1710:  POPLS           {R4,R6,R7,PC}
1D1712:  MOV             R0, R4; this
1D1714:  POP.W           {R4,R6,R7,LR}
1D1718:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
