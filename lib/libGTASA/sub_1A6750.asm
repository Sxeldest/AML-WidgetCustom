; =========================================================
; Game Engine Function: sub_1A6750
; Address            : 0x1A6750 - 0x1A679E
; =========================================================

1A6750:  PUSH            {R4,R6,R7,LR}
1A6752:  ADD             R7, SP, #8
1A6754:  SUB             SP, SP, #8
1A6756:  LDR             R0, =(unk_99DCF0 - 0x1A6762)
1A6758:  MOVS            R4, #0xFF
1A675A:  MOVS            R1, #0xFF; unsigned __int8
1A675C:  MOVS            R2, #0; unsigned __int8
1A675E:  ADD             R0, PC; unk_99DCF0 ; this
1A6760:  MOVS            R3, #0; unsigned __int8
1A6762:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6764:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A6768:  LDR             R0, =(unk_99DCF4 - 0x1A6774)
1A676A:  MOVS            R1, #0xFF; unsigned __int8
1A676C:  MOVS            R2, #0xFF; unsigned __int8
1A676E:  MOVS            R3, #0; unsigned __int8
1A6770:  ADD             R0, PC; unk_99DCF4 ; this
1A6772:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6774:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A6778:  LDR             R0, =(unk_99DCF8 - 0x1A6784)
1A677A:  MOVS            R1, #0x64 ; 'd'
1A677C:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A677E:  MOVS            R1, #0xFF; unsigned __int8
1A6780:  ADD             R0, PC; unk_99DCF8 ; this
1A6782:  MOVS            R2, #0; unsigned __int8
1A6784:  MOVS            R3, #0; unsigned __int8
1A6786:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A678A:  LDR             R0, =(unk_99DCFC - 0x1A6796)
1A678C:  MOVS            R1, #0xFF; unsigned __int8
1A678E:  MOVS            R2, #0; unsigned __int8
1A6790:  MOVS            R3, #0; unsigned __int8
1A6792:  ADD             R0, PC; unk_99DCFC ; this
1A6794:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6796:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A679A:  ADD             SP, SP, #8
1A679C:  POP             {R4,R6,R7,PC}
