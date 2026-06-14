; =========================================================
; Game Engine Function: mpg123_strerror
; Address            : 0x2338B8 - 0x23390A
; =========================================================

2338B8:  CMP             R0, #0
2338BA:  ITTE NE
2338BC:  MOVWNE          R1, #0xB468
2338C0:  LDRNE           R0, [R0,R1]
2338C2:  MOVEQ           R0, #0xA
2338C4:  CMP             R0, #0
2338C6:  BLT             loc_2338D6
2338C8:  CMP             R0, #0x2A ; '*'
2338CA:  BHI             loc_2338D6
2338CC:  LDR             R1, =(off_660A00 - 0x2338D2); "No error... (code 0)" ...
2338CE:  ADD             R1, PC; off_660A00
2338D0:  LDR.W           R0, [R1,R0,LSL#2]
2338D4:  BX              LR
2338D6:  ADD.W           R1, R0, #0xC
2338DA:  CMP             R1, #0xB; switch 12 cases
2338DC:  BHI             def_2338E2; jumptable 002338E2 default case, cases 3-10
2338DE:  LDR             R0, =(aAGenericMpg123 - 0x2338E4); "A generic mpg123 error."
2338E0:  ADD             R0, PC; "A generic mpg123 error."
2338E2:  TBB.W           [PC,R1]; switch jump
2338E6:  DCB 6; jump table for switch statement
2338E7:  DCB 9
2338E8:  DCB 0xC
2338E9:  DCB 0xF
2338EA:  DCB 0xF
2338EB:  DCB 0xF
2338EC:  DCB 0xF
2338ED:  DCB 0xF
2338EE:  DCB 0xF
2338EF:  DCB 0xF
2338F0:  DCB 0xF
2338F1:  DCB 0x11
2338F2:  LDR             R0, =(aMessageIAmDone - 0x2338F8); jumptable 002338E2 case 0
2338F4:  ADD             R0, PC; "Message: I am done with this track."
2338F6:  BX              LR
2338F8:  LDR             R0, =(aMessagePrepare - 0x2338FE); jumptable 002338E2 case 1
2338FA:  ADD             R0, PC; "Message: Prepare for a changed audio fo"...
2338FC:  BX              LR
2338FE:  LDR             R0, =(aMessageFeedMeM - 0x233904); jumptable 002338E2 case 2
233900:  ADD             R0, PC; "Message: Feed me more input data!"
233902:  BX              LR
233904:  LDR             R0, =(aIHaveNoIdeaAnU - 0x23390A); jumptable 002338E2 default case, cases 3-10
233906:  ADD             R0, PC; "I have no idea - an unknown error code!"
233908:  BX              LR; jumptable 002338E2 case 11
