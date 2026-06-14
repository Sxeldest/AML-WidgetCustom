; =========================================================
; Game Engine Function: _ZN24CInformFriendsEventQueue3AddEP4CPedP6CEvent
; Address            : 0x36FF74 - 0x370042
; =========================================================

36FF74:  PUSH            {R4-R7,LR}
36FF76:  ADD             R7, SP, #0xC
36FF78:  PUSH.W          {R8-R10}
36FF7C:  MOV             R9, R0
36FF7E:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FF8A)
36FF80:  MOV             R8, R1
36FF82:  MOV.W           R4, #0xFFFFFFFF
36FF86:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FF88:  MOV.W           R10, #0xFFFFFFFF
36FF8C:  LDR             R0, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FF8E:  ADDS            R5, R0, #4
36FF90:  LDR.W           R0, [R5,#-4]; CInformFriendsEventQueue::ms_informFriendsEvents
36FF94:  ADDS            R4, #1
36FF96:  CMP             R0, R9
36FF98:  BEQ             loc_36FFAE
36FF9A:  ADDS.W          R0, R10, #1
36FF9E:  BNE             loc_36FFC6
36FFA0:  LDR             R0, [R5]
36FFA2:  MOV.W           R10, #0xFFFFFFFF
36FFA6:  CMP             R0, #0
36FFA8:  IT EQ
36FFAA:  MOVEQ           R10, R4
36FFAC:  B               loc_36FFC6
36FFAE:  LDR.W           R0, [R8]
36FFB2:  LDR             R1, [R0,#8]
36FFB4:  MOV             R0, R8
36FFB6:  BLX             R1
36FFB8:  MOV             R6, R0
36FFBA:  LDR             R0, [R5]
36FFBC:  LDR             R1, [R0]
36FFBE:  LDR             R1, [R1,#8]
36FFC0:  BLX             R1
36FFC2:  CMP             R6, R0
36FFC4:  BEQ             loc_37003A
36FFC6:  ADDS            R5, #0xC
36FFC8:  CMP             R4, #7
36FFCA:  BLT             loc_36FF90
36FFCC:  ADDS.W          R0, R10, #1
36FFD0:  BEQ             loc_37003A
36FFD2:  BLX             rand
36FFD6:  UXTH            R0, R0
36FFD8:  VLDR            S2, =0.000015259
36FFDC:  VMOV            S0, R0
36FFE0:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FFF2)
36FFE2:  ADD.W           R4, R10, R10,LSL#1
36FFE6:  CMP.W           R9, #0
36FFEA:  VCVT.F32.S32    S0, S0
36FFEE:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FFF0:  LDR             R0, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FFF2:  STR.W           R9, [R0,R4,LSL#2]
36FFF6:  VMUL.F32        S0, S0, S2
36FFFA:  VLDR            S2, =500.0
36FFFE:  VMUL.F32        S0, S0, S2
370002:  VCVT.S32.F32    S0, S0
370006:  VMOV            R1, S0
37000A:  ADD.W           R5, R1, #0x12C
37000E:  ITTT NE
370010:  ADDNE.W         R1, R0, R4,LSL#2; CEntity **
370014:  MOVNE           R0, R9; this
370016:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37001A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x370022)
37001C:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x370024)
37001E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
370020:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
370022:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
370024:  LDR             R0, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
370026:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
370028:  ADD.W           R0, R0, R4,LSL#2
37002C:  ADD             R1, R5
37002E:  STRD.W          R8, R1, [R0,#4]
370032:  MOVS            R0, #1
370034:  POP.W           {R8-R10}
370038:  POP             {R4-R7,PC}
37003A:  MOVS            R0, #0
37003C:  POP.W           {R8-R10}
370040:  POP             {R4-R7,PC}
