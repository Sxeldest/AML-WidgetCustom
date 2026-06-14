; =========================================================
; Game Engine Function: mpg123_plain_strerror
; Address            : 0x233848 - 0x23388E
; =========================================================

233848:  CMP             R0, #0
23384A:  BLT             loc_23385A
23384C:  CMP             R0, #0x2A ; '*'
23384E:  BHI             loc_23385A
233850:  LDR             R1, =(off_660A00 - 0x233856); "No error... (code 0)" ...
233852:  ADD             R1, PC; off_660A00
233854:  LDR.W           R0, [R1,R0,LSL#2]
233858:  BX              LR
23385A:  ADD.W           R1, R0, #0xC
23385E:  CMP             R1, #0xB; switch 12 cases
233860:  BHI             def_233866; jumptable 00233866 default case, cases 3-10
233862:  LDR             R0, =(aAGenericMpg123 - 0x233868); "A generic mpg123 error."
233864:  ADD             R0, PC; "A generic mpg123 error."
233866:  TBB.W           [PC,R1]; switch jump
23386A:  DCB 6; jump table for switch statement
23386B:  DCB 9
23386C:  DCB 0xC
23386D:  DCB 0xF
23386E:  DCB 0xF
23386F:  DCB 0xF
233870:  DCB 0xF
233871:  DCB 0xF
233872:  DCB 0xF
233873:  DCB 0xF
233874:  DCB 0xF
233875:  DCB 0x11
233876:  LDR             R0, =(aMessageIAmDone - 0x23387C); jumptable 00233866 case 0
233878:  ADD             R0, PC; "Message: I am done with this track."
23387A:  BX              LR
23387C:  LDR             R0, =(aMessagePrepare - 0x233882); jumptable 00233866 case 1
23387E:  ADD             R0, PC; "Message: Prepare for a changed audio fo"...
233880:  BX              LR
233882:  LDR             R0, =(aMessageFeedMeM - 0x233888); jumptable 00233866 case 2
233884:  ADD             R0, PC; "Message: Feed me more input data!"
233886:  BX              LR
233888:  LDR             R0, =(aIHaveNoIdeaAnU - 0x23388E); jumptable 00233866 default case, cases 3-10
23388A:  ADD             R0, PC; "I have no idea - an unknown error code!"
23388C:  BX              LR; jumptable 00233866 case 11
