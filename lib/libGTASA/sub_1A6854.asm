; =========================================================
; Game Engine Function: sub_1A6854
; Address            : 0x1A6854 - 0x1A68A2
; =========================================================

1A6854:  PUSH            {R4,R6,R7,LR}
1A6856:  ADD             R7, SP, #8
1A6858:  SUB             SP, SP, #8
1A685A:  LDR             R0, =(unk_99E518 - 0x1A6866)
1A685C:  MOVS            R4, #0xFF
1A685E:  MOVS            R1, #0xFF; unsigned __int8
1A6860:  MOVS            R2, #0; unsigned __int8
1A6862:  ADD             R0, PC; unk_99E518 ; this
1A6864:  MOVS            R3, #0; unsigned __int8
1A6866:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6868:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A686C:  LDR             R0, =(unk_99E51C - 0x1A6878)
1A686E:  MOVS            R1, #0xFF; unsigned __int8
1A6870:  MOVS            R2, #0xFF; unsigned __int8
1A6872:  MOVS            R3, #0; unsigned __int8
1A6874:  ADD             R0, PC; unk_99E51C ; this
1A6876:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6878:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A687C:  LDR             R0, =(unk_99E520 - 0x1A6888)
1A687E:  MOVS            R1, #0x64 ; 'd'
1A6880:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A6882:  MOVS            R1, #0xFF; unsigned __int8
1A6884:  ADD             R0, PC; unk_99E520 ; this
1A6886:  MOVS            R2, #0; unsigned __int8
1A6888:  MOVS            R3, #0; unsigned __int8
1A688A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A688E:  LDR             R0, =(unk_99E524 - 0x1A689A)
1A6890:  MOVS            R1, #0xFF; unsigned __int8
1A6892:  MOVS            R2, #0; unsigned __int8
1A6894:  MOVS            R3, #0; unsigned __int8
1A6896:  ADD             R0, PC; unk_99E524 ; this
1A6898:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A689A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A689E:  ADD             SP, SP, #8
1A68A0:  POP             {R4,R6,R7,PC}
