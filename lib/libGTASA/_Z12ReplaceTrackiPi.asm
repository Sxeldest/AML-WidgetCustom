; =========================================================
; Game Engine Function: _Z12ReplaceTrackiPi
; Address            : 0x39F698 - 0x39F76E
; =========================================================

39F698:  SUB.W           R2, R0, #0x126
39F69C:  CMP             R2, #6
39F69E:  BHI             loc_39F6A4
39F6A0:  SUBS            R0, #0x3E ; '>'
39F6A2:  B               loc_39F70A
39F6A4:  SUBW            R2, R0, #0x201
39F6A8:  CMP             R2, #6
39F6AA:  BHI             loc_39F6B0
39F6AC:  ADDS            R0, #0x39 ; '9'
39F6AE:  B               loc_39F70A
39F6B0:  SUBW            R2, R0, #0x20F
39F6B4:  CMP             R2, #6
39F6B6:  BHI             loc_39F6BC
39F6B8:  ADDS            R0, #0x32 ; '2'
39F6BA:  B               loc_39F70A
39F6BC:  SUB.W           R2, R0, #0x350
39F6C0:  CMP             R2, #6
39F6C2:  BHI             loc_39F6C8
39F6C4:  ADDS            R0, #0x1D
39F6C6:  B               loc_39F70A
39F6C8:  SUBW            R2, R0, #0x373
39F6CC:  CMP             R2, #6
39F6CE:  BHI             loc_39F6D4
39F6D0:  ADDS            R0, #0x23 ; '#'
39F6D2:  B               loc_39F70A
39F6D4:  SUB.W           R2, R0, #0x3A4
39F6D8:  CMP             R2, #6
39F6DA:  BHI             loc_39F6E0
39F6DC:  SUBS            R0, #0x62 ; 'b'
39F6DE:  B               loc_39F70A
39F6E0:  SUBW            R2, R0, #0x45E
39F6E4:  CMP             R2, #6
39F6E6:  BHI             loc_39F6EC
39F6E8:  ADDS            R0, #0x1C
39F6EA:  B               loc_39F70A
39F6EC:  SUB.W           R2, R0, #0x480
39F6F0:  CMP             R2, #5
39F6F2:  BHI             loc_39F6F8
39F6F4:  ADDS            R0, #0x2B ; '+'
39F6F6:  B               loc_39F70A
39F6F8:  SUBW            R2, R0, #0x515
39F6FC:  CMP             R2, #6
39F6FE:  BLS             loc_39F708
39F700:  SUBW            R2, R0, #0x51C
39F704:  CMP             R2, #6
39F706:  BHI             loc_39F710
39F708:  ADDS            R0, #0x2A ; '*'
39F70A:  STR             R0, [R1]
39F70C:  MOVS            R0, #1
39F70E:  BX              LR
39F710:  SUBW            R2, R0, #0x614
39F714:  CMP             R2, #0xD
39F716:  BHI             loc_39F71C
39F718:  ADDS            R0, #0x31 ; '1'
39F71A:  B               loc_39F70A
39F71C:  SUBW            R2, R0, #0x6AA
39F720:  CMP             R2, #6
39F722:  BLS             loc_39F6E8
39F724:  SUBW            R2, R0, #0x6CD
39F728:  CMP             R2, #6
39F72A:  BHI             loc_39F730
39F72C:  ADDS            R0, #0x1B
39F72E:  B               loc_39F70A
39F730:  SUBW            R2, R0, #0x6DA
39F734:  CMP             R2, #0xD
39F736:  BHI             loc_39F73C
39F738:  ADDS            R0, #0x21 ; '!'
39F73A:  B               loc_39F70A
39F73C:  SUBW            R2, R0, #0x6F6
39F740:  CMP             R2, #4
39F742:  BHI             loc_39F748
39F744:  ADDS            R0, #0x20 ; ' '
39F746:  B               loc_39F70A
39F748:  SUBW            R2, R0, #0x711
39F74C:  CMP             R2, #4
39F74E:  BHI             loc_39F754
39F750:  SUBS            R0, #0x59 ; 'Y'
39F752:  B               loc_39F70A
39F754:  CMP             R0, #0xB1
39F756:  BEQ             loc_39F76A
39F758:  MOVW            R2, #0x29D
39F75C:  CMP             R0, R2
39F75E:  ITT NE
39F760:  MOVNE           R0, #0
39F762:  BXNE            LR
39F764:  MOVW            R0, #0x29E
39F768:  B               loc_39F70A
39F76A:  MOVS            R0, #0xB2
39F76C:  B               loc_39F70A
