; =========================================================
; Game Engine Function: _ZN14CConversations21GetConversationStatusEP4CPed
; Address            : 0x30191C - 0x301A0E
; =========================================================

30191C:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301922)
30191E:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301920:  LDR             R1, [R1]; CConversations::m_aConversations ...
301922:  LDR             R1, [R1,#(dword_7A0F88 - 0x7A0F80)]
301924:  CMP             R1, R0
301926:  BEQ             loc_3019CE
301928:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30192E)
30192A:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30192C:  LDR             R1, [R1]; CConversations::m_aConversations ...
30192E:  LDR             R1, [R1,#(dword_7A0FA4 - 0x7A0F80)]
301930:  CMP             R1, R0
301932:  BEQ             loc_3019D2
301934:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30193A)
301936:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301938:  LDR             R1, [R1]; CConversations::m_aConversations ...
30193A:  LDR             R1, [R1,#(dword_7A0FC0 - 0x7A0F80)]
30193C:  CMP             R1, R0
30193E:  BEQ             loc_3019D6
301940:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301946)
301942:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301944:  LDR             R1, [R1]; CConversations::m_aConversations ...
301946:  LDR             R1, [R1,#(dword_7A0FDC - 0x7A0F80)]
301948:  CMP             R1, R0
30194A:  BEQ             loc_3019DA
30194C:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301952)
30194E:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301950:  LDR             R1, [R1]; CConversations::m_aConversations ...
301952:  LDR             R1, [R1,#(dword_7A0FF8 - 0x7A0F80)]
301954:  CMP             R1, R0
301956:  BEQ             loc_3019DE
301958:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30195E)
30195A:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30195C:  LDR             R1, [R1]; CConversations::m_aConversations ...
30195E:  LDR.W           R1, [R1,#(dword_7A1014 - 0x7A0F80)]
301962:  CMP             R1, R0
301964:  BEQ             loc_3019E2
301966:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30196C)
301968:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30196A:  LDR             R1, [R1]; CConversations::m_aConversations ...
30196C:  LDR.W           R1, [R1,#(dword_7A1030 - 0x7A0F80)]
301970:  CMP             R1, R0
301972:  BEQ             loc_3019E6
301974:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30197A)
301976:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301978:  LDR             R1, [R1]; CConversations::m_aConversations ...
30197A:  LDR.W           R1, [R1,#(dword_7A104C - 0x7A0F80)]
30197E:  CMP             R1, R0
301980:  BEQ             loc_3019EA
301982:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301988)
301984:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301986:  LDR             R1, [R1]; CConversations::m_aConversations ...
301988:  LDR.W           R1, [R1,#(dword_7A1068 - 0x7A0F80)]
30198C:  CMP             R1, R0
30198E:  BEQ             loc_3019EE
301990:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301996)
301992:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301994:  LDR             R1, [R1]; CConversations::m_aConversations ...
301996:  LDR.W           R1, [R1,#(dword_7A1084 - 0x7A0F80)]
30199A:  CMP             R1, R0
30199C:  BEQ             loc_3019F2
30199E:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3019A4)
3019A0:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
3019A2:  LDR             R1, [R1]; CConversations::m_aConversations ...
3019A4:  LDR.W           R1, [R1,#(dword_7A10A0 - 0x7A0F80)]
3019A8:  CMP             R1, R0
3019AA:  BEQ             loc_3019F6
3019AC:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3019B2)
3019AE:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
3019B0:  LDR             R1, [R1]; CConversations::m_aConversations ...
3019B2:  LDR.W           R1, [R1,#(dword_7A10BC - 0x7A0F80)]
3019B6:  CMP             R1, R0
3019B8:  BEQ             loc_3019FA
3019BA:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3019C0)
3019BC:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
3019BE:  LDR             R1, [R1]; CConversations::m_aConversations ...
3019C0:  LDR.W           R2, [R1,#(dword_7A10D8 - 0x7A0F80)]
3019C4:  MOVS            R1, #0xD
3019C6:  CMP             R2, R0
3019C8:  IT EQ
3019CA:  MOVEQ           R1, #0xC
3019CC:  B               loc_3019FC
3019CE:  MOVS            R1, #0
3019D0:  B               loc_3019FC
3019D2:  MOVS            R1, #1
3019D4:  B               loc_3019FC
3019D6:  MOVS            R1, #2
3019D8:  B               loc_3019FC
3019DA:  MOVS            R1, #3
3019DC:  B               loc_3019FC
3019DE:  MOVS            R1, #4
3019E0:  B               loc_3019FC
3019E2:  MOVS            R1, #5
3019E4:  B               loc_3019FC
3019E6:  MOVS            R1, #6
3019E8:  B               loc_3019FC
3019EA:  MOVS            R1, #7
3019EC:  B               loc_3019FC
3019EE:  MOVS            R1, #8
3019F0:  B               loc_3019FC
3019F2:  MOVS            R1, #9
3019F4:  B               loc_3019FC
3019F6:  MOVS            R1, #0xA
3019F8:  B               loc_3019FC
3019FA:  MOVS            R1, #0xB
3019FC:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301A06)
3019FE:  RSB.W           R1, R1, R1,LSL#3
301A02:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301A04:  LDR             R0, [R0]; CConversations::m_aConversations ...
301A06:  ADD.W           R0, R0, R1,LSL#2
301A0A:  LDR             R0, [R0,#0x14]; CConversations::m_bSettingUpConversation
301A0C:  BX              LR
