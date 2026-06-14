; =========================================================
; Game Engine Function: _ZN12SelectScreen13MenuSelection8GetColorEv
; Address            : 0x2A3976 - 0x2A398E
; =========================================================

2A3976:  PUSH            {R7,LR}
2A3978:  MOV             R7, SP
2A397A:  SUB             SP, SP, #8
2A397C:  MOVS            R1, #0xFF
2A397E:  MOVS            R2, #0xFF; unsigned __int8
2A3980:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
2A3982:  MOVS            R1, #0xFF; unsigned __int8
2A3984:  MOVS            R3, #0xFF; unsigned __int8
2A3986:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A398A:  ADD             SP, SP, #8
2A398C:  POP             {R7,PC}
