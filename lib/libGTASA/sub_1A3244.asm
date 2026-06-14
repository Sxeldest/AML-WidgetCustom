; =========================================================
; Game Engine Function: sub_1A3244
; Address            : 0x1A3244 - 0x1A3292
; =========================================================

1A3244:  PUSH            {R4,R6,R7,LR}
1A3246:  ADD             R7, SP, #8
1A3248:  SUB             SP, SP, #8
1A324A:  LDR             R0, =(unk_796750 - 0x1A3256)
1A324C:  MOVS            R4, #0xFF
1A324E:  MOVS            R1, #0xFF; unsigned __int8
1A3250:  MOVS            R2, #0; unsigned __int8
1A3252:  ADD             R0, PC; unk_796750 ; this
1A3254:  MOVS            R3, #0; unsigned __int8
1A3256:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A3258:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A325C:  LDR             R0, =(unk_796754 - 0x1A3268)
1A325E:  MOVS            R1, #0xFF; unsigned __int8
1A3260:  MOVS            R2, #0xFF; unsigned __int8
1A3262:  MOVS            R3, #0; unsigned __int8
1A3264:  ADD             R0, PC; unk_796754 ; this
1A3266:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A3268:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A326C:  LDR             R0, =(unk_796758 - 0x1A3278)
1A326E:  MOVS            R1, #0x64 ; 'd'
1A3270:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A3272:  MOVS            R1, #0xFF; unsigned __int8
1A3274:  ADD             R0, PC; unk_796758 ; this
1A3276:  MOVS            R2, #0; unsigned __int8
1A3278:  MOVS            R3, #0; unsigned __int8
1A327A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A327E:  LDR             R0, =(unk_79675C - 0x1A328A)
1A3280:  MOVS            R1, #0xFF; unsigned __int8
1A3282:  MOVS            R2, #0; unsigned __int8
1A3284:  MOVS            R3, #0; unsigned __int8
1A3286:  ADD             R0, PC; unk_79675C ; this
1A3288:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A328A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A328E:  ADD             SP, SP, #8
1A3290:  POP             {R4,R6,R7,PC}
