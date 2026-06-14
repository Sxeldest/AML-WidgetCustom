; =========================================================
; Game Engine Function: _Z24FindCutsceneAudioTrackIdPKc
; Address            : 0x4636C0 - 0x4636F2
; =========================================================

4636C0:  PUSH            {R4,R5,R7,LR}
4636C2:  ADD             R7, SP, #8
4636C4:  MOV             R4, R0
4636C6:  LDR             R0, =(off_667F90 - 0x4636CE); "BCESAR2" ...
4636C8:  LDR             R1, =(aBcesar2 - 0x4636D0); "BCESAR2"
4636CA:  ADD             R0, PC; off_667F90
4636CC:  ADD             R1, PC; "BCESAR2"
4636CE:  ADDS            R5, R0, #4
4636D0:  MOV             R0, R4; char *
4636D2:  BLX             strcasecmp
4636D6:  CBZ             R0, loc_4636EC
4636D8:  LDR             R1, [R5,#4]; "BCESAR4" ...
4636DA:  ADD.W           R0, R5, #8
4636DE:  CMP             R1, #0
4636E0:  MOV             R5, R0
4636E2:  BNE             loc_4636D0
4636E4:  MOVW            R0, #0xFFFF
4636E8:  SXTH            R0, R0
4636EA:  POP             {R4,R5,R7,PC}
4636EC:  LDR             R0, [R5]
4636EE:  SXTH            R0, R0
4636F0:  POP             {R4,R5,R7,PC}
