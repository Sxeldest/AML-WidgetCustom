; =========================================================
; Game Engine Function: _Z17AND_KeyboardEventbiib
; Address            : 0x2689DC - 0x268A72
; =========================================================

2689DC:  PUSH            {R4-R7,LR}
2689DE:  ADD             R7, SP, #0xC
2689E0:  PUSH.W          {R8}
2689E4:  SUB             SP, SP, #8
2689E6:  MOV             R5, R2
2689E8:  LDR             R2, =(lastGamepadType_ptr - 0x2689F2)
2689EA:  MOV             R4, R0
2689EC:  LDR             R0, =(NVtoKK_ptr - 0x2689F4)
2689EE:  ADD             R2, PC; lastGamepadType_ptr
2689F0:  ADD             R0, PC; NVtoKK_ptr
2689F2:  LDR             R2, [R2]; lastGamepadType
2689F4:  LDR             R0, [R0]; NVtoKK
2689F6:  LDR.W           R6, [R0,R1,LSL#2]
2689FA:  LDR             R0, [R2]
2689FC:  CMP             R0, #1
2689FE:  IT EQ
268A00:  CMPEQ           R3, #0
268A02:  BEQ             loc_268A6A
268A04:  CMP             R1, #0x43 ; 'C'
268A06:  IT EQ
268A08:  CMPEQ           R4, #0
268A0A:  BNE             loc_268A2E
268A0C:  MOVS            R0, #0
268A0E:  MOV             R8, SP
268A10:  STR             R0, [SP,#0x18+var_14]
268A12:  MOVS            R0, #0x29 ; ')'
268A14:  STR             R0, [SP,#0x18+var_18]
268A16:  MOVS            R0, #2
268A18:  MOV             R1, R8
268A1A:  BLX             j__Z14LIB_InputEvent11OSEventTypePv; LIB_InputEvent(OSEventType,void *)
268A1E:  MOVS            R0, #1
268A20:  MOV             R1, R8
268A22:  BLX             j__Z14LIB_InputEvent11OSEventTypePv; LIB_InputEvent(OSEventType,void *)
268A26:  MOVS            R0, #2
268A28:  MOV             R1, R8
268A2A:  BLX             j__Z14LIB_InputEvent11OSEventTypePv; LIB_InputEvent(OSEventType,void *)
268A2E:  CMP             R6, #0x64 ; 'd'
268A30:  BEQ             loc_268A6A
268A32:  ADDS            R0, R5, #1
268A34:  STR             R6, [SP,#0x18+var_18]
268A36:  CMP             R0, #1
268A38:  BLS             loc_268A40
268A3A:  LDR             R0, =(KKtoShiftedChar_ptr - 0x268A40)
268A3C:  ADD             R0, PC; KKtoShiftedChar_ptr
268A3E:  B               loc_268A4C
268A40:  CMP             R6, #0x1A
268A42:  BNE             loc_268A48
268A44:  MOVS            R0, #0x1A
268A46:  B               loc_268A50
268A48:  LDR             R0, =(KKtoChar_ptr - 0x268A4E)
268A4A:  ADD             R0, PC; KKtoChar_ptr
268A4C:  LDR             R0, [R0]
268A4E:  LDRB            R0, [R0,R6]
268A50:  LDR             R1, =(KKDown_ptr - 0x268A5E)
268A52:  CMP             R4, #0
268A54:  STR             R0, [SP,#0x18+var_14]
268A56:  MOV.W           R0, #2
268A5A:  ADD             R1, PC; KKDown_ptr
268A5C:  LDR             R1, [R1]; KKDown
268A5E:  STRB            R4, [R1,R6]
268A60:  IT NE
268A62:  MOVNE           R0, #1
268A64:  MOV             R1, SP
268A66:  BLX             j__Z14LIB_InputEvent11OSEventTypePv; LIB_InputEvent(OSEventType,void *)
268A6A:  ADD             SP, SP, #8
268A6C:  POP.W           {R8}
268A70:  POP             {R4-R7,PC}
