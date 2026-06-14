; =========================================================
; Game Engine Function: _ZN14CConversations21IsConversationGoingOnEv
; Address            : 0x301A48 - 0x301AB0
; =========================================================

301A48:  PUSH            {R4-R7,LR}
301A4A:  ADD             R7, SP, #0xC
301A4C:  PUSH.W          {R11}
301A50:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301A56)
301A52:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301A54:  LDR             R0, [R0]; CConversations::m_aConversations ...
301A56:  LDR             R1, [R0,#(dword_7A0F94 - 0x7A0F80)]
301A58:  LDR             R2, [R0,#(dword_7A0FB0 - 0x7A0F80)]
301A5A:  LDR             R3, [R0,#(dword_7A0FCC - 0x7A0F80)]
301A5C:  ORRS            R1, R2
301A5E:  LDR.W           R12, [R0,#(dword_7A0FE8 - 0x7A0F80)]
301A62:  ORRS            R1, R3
301A64:  LDR.W           R3, [R0,#(dword_7A1004 - 0x7A0F80)]
301A68:  ORR.W           R1, R1, R12
301A6C:  LDR.W           R4, [R0,#(dword_7A1020 - 0x7A0F80)]
301A70:  ORRS            R1, R3
301A72:  LDR.W           R3, [R0,#(dword_7A103C - 0x7A0F80)]
301A76:  ORRS            R1, R4
301A78:  LDR.W           LR, [R0,#(dword_7A10C8 - 0x7A0F80)]
301A7C:  ORRS            R1, R3
301A7E:  LDR.W           R6, [R0,#(dword_7A10E4 - 0x7A0F80)]
301A82:  LDR.W           R5, [R0,#(dword_7A10AC - 0x7A0F80)]
301A86:  LDR.W           R2, [R0,#(dword_7A1090 - 0x7A0F80)]
301A8A:  LDR.W           R4, [R0,#(dword_7A1074 - 0x7A0F80)]
301A8E:  LDR.W           R3, [R0,#(dword_7A1100 - 0x7A0F80)]
301A92:  LDR.W           R0, [R0,#(dword_7A1058 - 0x7A0F80)]
301A96:  ORRS            R0, R1
301A98:  ORRS            R0, R4
301A9A:  ORRS            R0, R2
301A9C:  ORRS            R0, R5
301A9E:  ORR.W           R0, R0, LR
301AA2:  ORRS            R0, R6
301AA4:  ORRS            R0, R3
301AA6:  IT NE
301AA8:  MOVNE           R0, #1
301AAA:  POP.W           {R11}
301AAE:  POP             {R4-R7,PC}
