; =========================================================
; Game Engine Function: _ZN11CHudColours6GetRGBEhh
; Address            : 0x43AB0C - 0x43AB2E
; =========================================================

43AB0C:  PUSH            {R7,LR}
43AB0E:  MOV             R7, SP
43AB10:  SUB             SP, SP, #8
43AB12:  LDRB.W          R12, [R1,R2,LSL#2]
43AB16:  ADD.W           R1, R1, R2,LSL#2
43AB1A:  LDRB.W          LR, [R1,#2]
43AB1E:  LDRB            R2, [R1,#1]; unsigned __int8
43AB20:  MOV             R1, R12; unsigned __int8
43AB22:  STR             R3, [SP,#0x10+var_10]; unsigned __int8
43AB24:  MOV             R3, LR; unsigned __int8
43AB26:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43AB2A:  ADD             SP, SP, #8
43AB2C:  POP             {R7,PC}
