; =========================================================
; Game Engine Function: sub_1E9D2C
; Address            : 0x1E9D2C - 0x1E9D92
; =========================================================

1E9D2C:  PUSH            {R4-R7,LR}
1E9D2E:  ADD             R7, SP, #0xC
1E9D30:  PUSH.W          {R8}
1E9D34:  SUB             SP, SP, #8
1E9D36:  MOV             R8, R0
1E9D38:  LDR             R0, [R7,#arg_4]
1E9D3A:  STR             R0, [SP,#0x18+var_18]
1E9D3C:  MOV             R0, R8
1E9D3E:  MOV             R5, R3
1E9D40:  MOV             R6, R2
1E9D42:  MOV             R4, R1
1E9D44:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIhhEEPhEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<uchar,uchar> &,uchar *>(uchar *,uchar *,uchar *,uchar *,std::__less<uchar,uchar> &)
1E9D48:  LDR             R2, [R7,#arg_0]
1E9D4A:  LDRB            R1, [R5]
1E9D4C:  LDRB            R3, [R2]
1E9D4E:  CMP             R3, R1
1E9D50:  BCS             loc_1E9D8A
1E9D52:  STRB            R3, [R5]
1E9D54:  STRB            R1, [R2]
1E9D56:  LDRB            R1, [R6]
1E9D58:  LDRB            R2, [R5]
1E9D5A:  CMP             R2, R1
1E9D5C:  BCS             loc_1E9D84
1E9D5E:  STRB            R2, [R6]
1E9D60:  STRB            R1, [R5]
1E9D62:  LDRB            R1, [R4]
1E9D64:  LDRB            R2, [R6]
1E9D66:  CMP             R2, R1
1E9D68:  BCS             loc_1E9D88
1E9D6A:  STRB            R2, [R4]
1E9D6C:  STRB            R1, [R6]
1E9D6E:  LDRB.W          R1, [R8]
1E9D72:  LDRB            R2, [R4]
1E9D74:  CMP             R2, R1
1E9D76:  ITEEE CS
1E9D78:  ADDCS           R0, #3
1E9D7A:  STRBCC.W        R2, [R8]
1E9D7E:  STRBCC          R1, [R4]
1E9D80:  ADDCC           R0, #4
1E9D82:  B               loc_1E9D8A
1E9D84:  ADDS            R0, #1
1E9D86:  B               loc_1E9D8A
1E9D88:  ADDS            R0, #2
1E9D8A:  ADD             SP, SP, #8
1E9D8C:  POP.W           {R8}
1E9D90:  POP             {R4-R7,PC}
