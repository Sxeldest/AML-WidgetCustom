; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity23CanWePlayScriptedSpeechEv
; Address            : 0x39B69C - 0x39B78E
; =========================================================

39B69C:  PUSH            {R7,LR}
39B69E:  MOV             R7, SP
39B6A0:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr - 0x39B6B0)
39B6A2:  MOV             R12, #0x66666667
39B6AA:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B6B2)
39B6AC:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr
39B6AE:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B6B0:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_NextSpeechSlot ...
39B6B2:  LDR             R3, [R3]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B6B4:  LDRSH.W         R2, [R0]; CAEPedSpeechAudioEntity::s_NextSpeechSlot
39B6B8:  SMMUL.W         R1, R2, R12
39B6BC:  ASRS            R0, R1, #1
39B6BE:  ADD.W           R0, R0, R1,LSR#31
39B6C2:  ADD.W           R0, R0, R0,LSL#2
39B6C6:  SUBS            R1, R2, R0
39B6C8:  RSB.W           R0, R1, R1,LSL#3
39B6CC:  LDRH.W          R0, [R3,R0,LSL#2]
39B6D0:  CMP             R0, #0
39B6D2:  BEQ             loc_39B76C
39B6D4:  ADDS            R0, R2, #1
39B6D6:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B6E0)
39B6D8:  SMMUL.W         R1, R0, R12
39B6DC:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B6DE:  LDR.W           LR, [R3]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B6E2:  ASRS            R3, R1, #1
39B6E4:  ADD.W           R1, R3, R1,LSR#31
39B6E8:  ADD.W           R1, R1, R1,LSL#2
39B6EC:  SUBS            R1, R0, R1
39B6EE:  RSB.W           R0, R1, R1,LSL#3
39B6F2:  LDRH.W          R0, [LR,R0,LSL#2]
39B6F6:  CBZ             R0, loc_39B76C
39B6F8:  ADDS            R0, R2, #2
39B6FA:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B704)
39B6FC:  SMMUL.W         R1, R0, R12
39B700:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B702:  LDR.W           LR, [R3]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B706:  ASRS            R3, R1, #1
39B708:  ADD.W           R1, R3, R1,LSR#31
39B70C:  ADD.W           R1, R1, R1,LSL#2
39B710:  SUBS            R1, R0, R1
39B712:  RSB.W           R0, R1, R1,LSL#3
39B716:  LDRH.W          R0, [LR,R0,LSL#2]
39B71A:  CBZ             R0, loc_39B76C
39B71C:  ADDS            R0, R2, #3
39B71E:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B728)
39B720:  SMMUL.W         R1, R0, R12
39B724:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B726:  LDR.W           LR, [R3]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B72A:  ASRS            R3, R1, #1
39B72C:  ADD.W           R1, R3, R1,LSR#31
39B730:  ADD.W           R1, R1, R1,LSL#2
39B734:  SUBS            R1, R0, R1
39B736:  RSB.W           R0, R1, R1,LSL#3
39B73A:  LDRH.W          R0, [LR,R0,LSL#2]
39B73E:  CBZ             R0, loc_39B76C
39B740:  ADDS            R0, R2, #4
39B742:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B74C)
39B744:  SMMUL.W         R1, R0, R12
39B748:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B74A:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B74C:  ASRS            R3, R1, #1
39B74E:  ADD.W           R1, R3, R1,LSR#31
39B752:  ADD.W           R1, R1, R1,LSL#2
39B756:  SUBS            R1, R0, R1
39B758:  RSB.W           R0, R1, R1,LSL#3
39B75C:  LDRH.W          R0, [R2,R0,LSL#2]
39B760:  CMP             R0, #0
39B762:  ITTT NE
39B764:  MOVWNE          R1, #0xFFFF
39B768:  SXTHNE          R0, R1
39B76A:  POPNE           {R7,PC}
39B76C:  ADDS            R0, R1, #1
39B76E:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr - 0x39B778)
39B770:  SMMUL.W         R2, R0, R12
39B774:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr
39B776:  LDR.W           R12, [R3]; CAEPedSpeechAudioEntity::s_NextSpeechSlot ...
39B77A:  LSRS            R3, R2, #1
39B77C:  ADD.W           R2, R3, R2,LSR#31
39B780:  ADD.W           R2, R2, R2,LSL#2
39B784:  SUBS            R0, R0, R2
39B786:  STRH.W          R0, [R12]; CAEPedSpeechAudioEntity::s_NextSpeechSlot
39B78A:  SXTH            R0, R1
39B78C:  POP             {R7,PC}
