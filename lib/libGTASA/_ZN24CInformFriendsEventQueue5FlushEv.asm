; =========================================================
; Game Engine Function: _ZN24CInformFriendsEventQueue5FlushEv
; Address            : 0x36FEFC - 0x36FF62
; =========================================================

36FEFC:  PUSH            {R4-R7,LR}
36FEFE:  ADD             R7, SP, #0xC
36FF00:  PUSH.W          {R8-R11}
36FF04:  SUB             SP, SP, #4
36FF06:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FF12)
36FF08:  MOV.W           R8, #0
36FF0C:  MOVS            R6, #0
36FF0E:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FF10:  LDR.W           R10, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FF14:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FF1A)
36FF16:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FF18:  LDR.W           R11, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FF1C:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FF22)
36FF1E:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FF20:  LDR             R4, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FF22:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x36FF28)
36FF24:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
36FF26:  LDR             R5, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
36FF28:  LDR.W           R0, [R10,R6]; this
36FF2C:  CBZ             R0, loc_36FF38
36FF2E:  ADDS            R1, R5, R6; CEntity **
36FF30:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
36FF34:  STR.W           R8, [R5,R6]
36FF38:  ADD.W           R9, R11, R6
36FF3C:  LDR.W           R0, [R9,#4]
36FF40:  CBZ             R0, loc_36FF4C
36FF42:  LDR             R1, [R0]
36FF44:  LDR             R1, [R1,#4]
36FF46:  BLX             R1
36FF48:  STR.W           R8, [R9,#4]
36FF4C:  ADDS            R0, R4, R6
36FF4E:  ADDS            R6, #0xC
36FF50:  MOV.W           R1, #0xFFFFFFFF
36FF54:  CMP             R6, #0x60 ; '`'
36FF56:  STR             R1, [R0,#8]
36FF58:  BNE             loc_36FF28
36FF5A:  ADD             SP, SP, #4
36FF5C:  POP.W           {R8-R11}
36FF60:  POP             {R4-R7,PC}
