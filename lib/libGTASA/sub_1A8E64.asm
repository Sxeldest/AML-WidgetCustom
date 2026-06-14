; =========================================================
; Game Engine Function: sub_1A8E64
; Address            : 0x1A8E64 - 0x1A8EB2
; =========================================================

1A8E64:  PUSH            {R4,R6,R7,LR}
1A8E66:  ADD             R7, SP, #8
1A8E68:  SUB             SP, SP, #8
1A8E6A:  LDR             R0, =(unk_A25AF8 - 0x1A8E76)
1A8E6C:  MOVS            R4, #0xFF
1A8E6E:  MOVS            R1, #0xFF; unsigned __int8
1A8E70:  MOVS            R2, #0; unsigned __int8
1A8E72:  ADD             R0, PC; unk_A25AF8 ; this
1A8E74:  MOVS            R3, #0; unsigned __int8
1A8E76:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A8E78:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A8E7C:  LDR             R0, =(unk_A25AFC - 0x1A8E88)
1A8E7E:  MOVS            R1, #0xFF; unsigned __int8
1A8E80:  MOVS            R2, #0xFF; unsigned __int8
1A8E82:  MOVS            R3, #0; unsigned __int8
1A8E84:  ADD             R0, PC; unk_A25AFC ; this
1A8E86:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A8E88:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A8E8C:  LDR             R0, =(unk_A25B00 - 0x1A8E98)
1A8E8E:  MOVS            R1, #0x64 ; 'd'
1A8E90:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A8E92:  MOVS            R1, #0xFF; unsigned __int8
1A8E94:  ADD             R0, PC; unk_A25B00 ; this
1A8E96:  MOVS            R2, #0; unsigned __int8
1A8E98:  MOVS            R3, #0; unsigned __int8
1A8E9A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A8E9E:  LDR             R0, =(unk_A25B04 - 0x1A8EAA)
1A8EA0:  MOVS            R1, #0xFF; unsigned __int8
1A8EA2:  MOVS            R2, #0; unsigned __int8
1A8EA4:  MOVS            R3, #0; unsigned __int8
1A8EA6:  ADD             R0, PC; unk_A25B04 ; this
1A8EA8:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A8EAA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A8EAE:  ADD             SP, SP, #8
1A8EB0:  POP             {R4,R6,R7,PC}
