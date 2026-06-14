; =========================================================
; Game Engine Function: _Z16RtCharsetGetDescP8RwRasterP13RtCharsetDesc
; Address            : 0x1ED0B0 - 0x1ED0F4
; =========================================================

1ED0B0:  PUSH            {R4,R6,R7,LR}
1ED0B2:  ADD             R7, SP, #8
1ED0B4:  SUB             SP, SP, #8
1ED0B6:  MOV             R4, R0
1ED0B8:  CMP             R4, #0
1ED0BA:  IT NE
1ED0BC:  CMPNE           R1, #0
1ED0BE:  BEQ             loc_1ED0D8
1ED0C0:  ADR             R0, dword_1ED100
1ED0C2:  MOVS            R2, #7
1ED0C4:  VLD1.64         {D16-D17}, [R0@128]
1ED0C8:  MOVS            R0, #0xE
1ED0CA:  STRD.W          R0, R2, [R1,#0x14]
1ED0CE:  MOVS            R0, #0x5B ; '['
1ED0D0:  VST1.32         {D16-D17}, [R1]!
1ED0D4:  STR             R0, [R1]
1ED0D6:  B               loc_1ED0EE
1ED0D8:  MOVS            R0, #0x16
1ED0DA:  MOVS            R4, #0
1ED0DC:  MOVT            R0, #0x8000; int
1ED0E0:  STR             R4, [SP,#0x10+var_10]
1ED0E2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1ED0E6:  STR             R0, [SP,#0x10+var_C]
1ED0E8:  MOV             R0, SP
1ED0EA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1ED0EE:  MOV             R0, R4
1ED0F0:  ADD             SP, SP, #8
1ED0F2:  POP             {R4,R6,R7,PC}
