; =========================================================
; Game Engine Function: sub_116AEC
; Address            : 0x116AEC - 0x116BAE
; =========================================================

116AEC:  PUSH            {R4-R7,LR}
116AEE:  ADD             R7, SP, #0xC
116AF0:  PUSH.W          {R8,R9,R11}
116AF4:  MOV             R4, R0
116AF6:  LDR             R0, [R1,#0x30]
116AF8:  LSLS            R2, R0, #0x1B
116AFA:  BMI             loc_116B0A
116AFC:  LSLS            R0, R0, #0x1C
116AFE:  BMI             loc_116B2E
116B00:  MOVS            R0, #0
116B02:  STRD.W          R0, R0, [R4]
116B06:  STR             R0, [R4,#8]
116B08:  B               loc_116BA8
116B0A:  LDR             R0, [R1,#0x18]
116B0C:  LDR             R6, [R1,#0x2C]
116B0E:  CMP             R6, R0
116B10:  ITT CC
116B12:  STRCC           R0, [R1,#0x2C]
116B14:  MOVCC           R6, R0
116B16:  LDR             R5, [R1,#0x14]
116B18:  SUB.W           R9, R6, R5
116B1C:  CMN.W           R9, #0x10
116B20:  BCS             loc_116B92
116B22:  CMP.W           R9, #0xA
116B26:  BHI             loc_116B4C
116B28:  MOV.W           R0, R9,LSL#1
116B2C:  B               loc_116B9C
116B2E:  LDR             R6, [R1,#8]
116B30:  LDR             R5, [R1,#0x10]
116B32:  SUB.W           R9, R5, R6
116B36:  CMN.W           R9, #0x10
116B3A:  BCS             loc_116B92
116B3C:  CMP.W           R9, #0xA
116B40:  BHI             loc_116B68
116B42:  MOV.W           R0, R9,LSL#1
116B46:  STRB.W          R0, [R4],#1
116B4A:  B               loc_116B8C
116B4C:  ADD.W           R0, R9, #0x10
116B50:  BIC.W           R8, R0, #0xF
116B54:  MOV             R0, R8; unsigned int
116B56:  BLX             j__Znwj; operator new(uint)
116B5A:  ADD.W           R1, R8, #1
116B5E:  STRD.W          R1, R9, [R4]
116B62:  STR             R0, [R4,#8]
116B64:  MOV             R4, R0
116B66:  B               loc_116BA0
116B68:  ADD.W           R0, R9, #0x10
116B6C:  BIC.W           R8, R0, #0xF
116B70:  MOV             R0, R8; unsigned int
116B72:  BLX             j__Znwj; operator new(uint)
116B76:  ADD.W           R1, R8, #1
116B7A:  STRD.W          R1, R9, [R4]
116B7E:  STR             R0, [R4,#8]
116B80:  MOV             R4, R0
116B82:  B               loc_116B8C
116B84:  LDRB.W          R0, [R6],#1
116B88:  STRB.W          R0, [R4],#1
116B8C:  CMP             R6, R5
116B8E:  BNE             loc_116B84
116B90:  B               loc_116BA4
116B92:  MOV             R0, R4
116B94:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
116B98:  LDRB.W          R0, [R5],#1
116B9C:  STRB.W          R0, [R4],#1
116BA0:  CMP             R5, R6
116BA2:  BNE             loc_116B98
116BA4:  MOVS            R0, #0
116BA6:  STRB            R0, [R4]
116BA8:  POP.W           {R8,R9,R11}
116BAC:  POP             {R4-R7,PC}
