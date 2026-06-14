; =========================================================
; Game Engine Function: _ZN6CStats28FindMostFavoriteRadioStationEv
; Address            : 0x416480 - 0x41650E
; =========================================================

416480:  PUSH            {R4-R7,LR}
416482:  ADD             R7, SP, #0xC
416484:  PUSH.W          {R11}
416488:  LDR             R0, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x41648E)
41648A:  ADD             R0, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
41648C:  LDR             R2, [R0]; CStats::FavoriteRadioStationList ...
41648E:  MOVS            R0, #1
416490:  ADDS            R5, R2, #4
416492:  LDM             R5, {R1,R3-R5}
416494:  CMP             R1, #0
416496:  LDRD.W          LR, R12, [R2,#(dword_964E40 - 0x964E18)]
41649A:  LDR             R6, [R2,#(dword_964E2C - 0x964E18)]
41649C:  IT LE
41649E:  MOVLE           R1, #0
4164A0:  CMP             R3, R1
4164A2:  ITT GT
4164A4:  MOVGT           R0, #2
4164A6:  MOVGT           R1, R3
4164A8:  CMP             R4, R1
4164AA:  ITT GT
4164AC:  MOVGT           R0, #3
4164AE:  MOVGT           R1, R4
4164B0:  CMP             R5, R1
4164B2:  IT GT
4164B4:  MOVGT           R0, #4
4164B6:  LDR             R3, [R2,#(dword_964E30 - 0x964E18)]
4164B8:  IT GT
4164BA:  MOVGT           R1, R5
4164BC:  CMP             R6, R1
4164BE:  IT GT
4164C0:  MOVGT           R0, #5
4164C2:  LDR             R4, [R2,#(dword_964E34 - 0x964E18)]
4164C4:  IT GT
4164C6:  MOVGT           R1, R6
4164C8:  CMP             R3, R1
4164CA:  IT GT
4164CC:  MOVGT           R0, #6
4164CE:  LDR             R5, [R2,#(dword_964E3C - 0x964E18)]
4164D0:  IT GT
4164D2:  MOVGT           R1, R3
4164D4:  CMP             R4, R1
4164D6:  IT GT
4164D8:  MOVGT           R0, #7
4164DA:  LDR             R3, [R2,#(dword_964E48 - 0x964E18)]
4164DC:  LDR             R2, [R2,#(dword_964E38 - 0x964E18)]
4164DE:  IT GT
4164E0:  MOVGT           R1, R4
4164E2:  CMP             R2, R1
4164E4:  ITT GT
4164E6:  MOVGT           R0, #8
4164E8:  MOVGT           R1, R2
4164EA:  CMP             R5, R1
4164EC:  ITT GT
4164EE:  MOVGT           R0, #9
4164F0:  MOVGT           R1, R5
4164F2:  CMP             LR, R1
4164F4:  ITT GT
4164F6:  MOVGT           R0, #0xA
4164F8:  MOVGT           R1, LR
4164FA:  CMP             R12, R1
4164FC:  ITT GT
4164FE:  MOVGT           R0, #0xB
416500:  MOVGT           R1, R12
416502:  CMP             R3, R1
416504:  IT GT
416506:  MOVGT           R0, #0xC
416508:  POP.W           {R11}
41650C:  POP             {R4-R7,PC}
