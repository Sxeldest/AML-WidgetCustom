; =========================================================
; Game Engine Function: sub_1A3904
; Address            : 0x1A3904 - 0x1A3952
; =========================================================

1A3904:  PUSH            {R4,R6,R7,LR}
1A3906:  ADD             R7, SP, #8
1A3908:  SUB             SP, SP, #8
1A390A:  LDR             R0, =(unk_81A9B0 - 0x1A3916)
1A390C:  MOVS            R4, #0xFF
1A390E:  MOVS            R1, #0xFF; unsigned __int8
1A3910:  MOVS            R2, #0; unsigned __int8
1A3912:  ADD             R0, PC; unk_81A9B0 ; this
1A3914:  MOVS            R3, #0; unsigned __int8
1A3916:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A3918:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A391C:  LDR             R0, =(unk_81A9B4 - 0x1A3928)
1A391E:  MOVS            R1, #0xFF; unsigned __int8
1A3920:  MOVS            R2, #0xFF; unsigned __int8
1A3922:  MOVS            R3, #0; unsigned __int8
1A3924:  ADD             R0, PC; unk_81A9B4 ; this
1A3926:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A3928:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A392C:  LDR             R0, =(unk_81A9B8 - 0x1A3938)
1A392E:  MOVS            R1, #0x64 ; 'd'
1A3930:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A3932:  MOVS            R1, #0xFF; unsigned __int8
1A3934:  ADD             R0, PC; unk_81A9B8 ; this
1A3936:  MOVS            R2, #0; unsigned __int8
1A3938:  MOVS            R3, #0; unsigned __int8
1A393A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A393E:  LDR             R0, =(unk_81A9BC - 0x1A394A)
1A3940:  MOVS            R1, #0xFF; unsigned __int8
1A3942:  MOVS            R2, #0; unsigned __int8
1A3944:  MOVS            R3, #0; unsigned __int8
1A3946:  ADD             R0, PC; unk_81A9BC ; this
1A3948:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A394A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A394E:  ADD             SP, SP, #8
1A3950:  POP             {R4,R6,R7,PC}
