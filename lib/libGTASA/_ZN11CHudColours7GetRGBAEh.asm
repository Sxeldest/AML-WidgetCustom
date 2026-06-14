; =========================================================
; Game Engine Function: _ZN11CHudColours7GetRGBAEh
; Address            : 0x43AACC - 0x43AAEC
; =========================================================

43AACC:  PUSH            {R7,LR}
43AACE:  MOV             R7, SP
43AAD0:  SUB             SP, SP, #8
43AAD2:  LDRB.W          R12, [R1,R2,LSL#2]
43AAD6:  ADD.W           R1, R1, R2,LSL#2
43AADA:  LDRB            R2, [R1,#1]; unsigned __int8
43AADC:  LDRB            R3, [R1,#2]; unsigned __int8
43AADE:  LDRB            R1, [R1,#3]
43AAE0:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
43AAE2:  MOV             R1, R12; unsigned __int8
43AAE4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43AAE8:  ADD             SP, SP, #8
43AAEA:  POP             {R7,PC}
