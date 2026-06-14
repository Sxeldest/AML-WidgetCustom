; =========================================================
; Game Engine Function: _ZN24CInformFriendsEventQueue4InitEv
; Address            : 0x36FE84 - 0x36FEEA
; =========================================================

36FE84:  PUSH            {R4-R7,LR}
36FE86:  ADD             R7, SP, #0xC
36FE88:  PUSH.W          {R8-R11}
36FE8C:  SUB             SP, SP, #4
36FE8E:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FE9A)
36FE90:  MOV.W           R8, #0
36FE94:  MOVS            R6, #0
36FE96:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FE98:  LDR.W           R10, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FE9C:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FEA2)
36FE9E:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FEA0:  LDR.W           R11, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FEA4:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FEAA)
36FEA6:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FEA8:  LDR             R4, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FEAA:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FEB0)
36FEAC:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FEAE:  LDR             R5, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FEB0:  LDR.W           R0, [R10,R6]; this
36FEB4:  CBZ             R0, loc_36FEC0
36FEB6:  ADDS            R1, R5, R6; CEntity **
36FEB8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
36FEBC:  STR.W           R8, [R5,R6]
36FEC0:  ADD.W           R9, R11, R6
36FEC4:  LDR.W           R0, [R9,#4]
36FEC8:  CBZ             R0, loc_36FED4
36FECA:  LDR             R1, [R0]
36FECC:  LDR             R1, [R1,#4]
36FECE:  BLX             R1
36FED0:  STR.W           R8, [R9,#4]
36FED4:  ADDS            R0, R4, R6
36FED6:  ADDS            R6, #0xC
36FED8:  MOV.W           R1, #0xFFFFFFFF
36FEDC:  CMP             R6, #0x60 ; '`'
36FEDE:  STR             R1, [R0,#8]
36FEE0:  BNE             loc_36FEB0
36FEE2:  ADD             SP, SP, #4
36FEE4:  POP.W           {R8-R11}
36FEE8:  POP             {R4-R7,PC}
