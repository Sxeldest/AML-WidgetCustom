; =========================================================
; Game Engine Function: sub_AF8D8
; Address            : 0xAF8D8 - 0xAF9B6
; =========================================================

AF8D8:  PUSH            {R4-R7,LR}
AF8DA:  ADD             R7, SP, #0xC
AF8DC:  PUSH.W          {R11}
AF8E0:  SUB             SP, SP, #0x50
AF8E2:  MOV             R4, R0
AF8E4:  LDR             R0, =(__stack_chk_guard_ptr - 0xAF8EE)
AF8E6:  VMOV            D16, R2, R3
AF8EA:  ADD             R0, PC; __stack_chk_guard_ptr
AF8EC:  LDR             R0, [R0]; __stack_chk_guard
AF8EE:  LDR             R0, [R0]
AF8F0:  STR             R0, [SP,#0x60+var_14]
AF8F2:  LDRB            R0, [R4]
AF8F4:  CMP             R0, #0
AF8F6:  BEQ             loc_AF998
AF8F8:  MOV             R5, R1
AF8FA:  B               loc_AF90A
AF8FC:  CMP             R0, #0x25 ; '%'
AF8FE:  IT EQ
AF900:  ADDEQ           R4, #1
AF902:  LDRB.W          R0, [R4,#1]!
AF906:  CMP             R0, #0
AF908:  BEQ             loc_AF998
AF90A:  CMP             R0, #0x25 ; '%'
AF90C:  BNE             loc_AF8FC
AF90E:  LDRB            R1, [R4,#1]
AF910:  CMP             R1, #0x25 ; '%'
AF912:  BEQ             loc_AF8FC
AF914:  ADD             R6, SP, #0x60+s
AF916:  MOVS            R1, #0x40 ; '@'
AF918:  MOV             R2, R4
AF91A:  VSTR            D16, [SP,#0x60+var_60]
AF91E:  MOV             R0, R6; s
AF920:  BL              sub_886C0
AF924:  SUBS            R0, R6, #1
AF926:  LDRB.W          R1, [R0,#1]!; nptr
AF92A:  CMP             R1, #0x20 ; ' '
AF92C:  BEQ             loc_AF926
AF92E:  BIC.W           R2, R5, #1
AF932:  CMP             R2, #8
AF934:  BNE             loc_AF940
AF936:  BLX             atof
AF93A:  VMOV            D16, R0, R1
AF93E:  B               loc_AF998
AF940:  SUB.W           R2, R1, #0x2D ; '-'
AF944:  VMOV.I32        D16, #0
AF948:  CLZ.W           R2, R2
AF94C:  LSRS            R2, R2, #5
AF94E:  LDRB            R3, [R0,R2]
AF950:  SUBS            R3, #0x2B ; '+'
AF952:  CLZ.W           R3, R3
AF956:  LSRS            R3, R3, #5
AF958:  ADD             R2, R3
AF95A:  LDRB            R3, [R0,R2]
AF95C:  SUB.W           R6, R3, #0x30 ; '0'
AF960:  CMP             R6, #9
AF962:  BHI             loc_AF98C
AF964:  VMOV.F64        D17, #10.0
AF968:  VMOV.I32        D18, #0
AF96C:  SUBS            R3, #0x30 ; '0'
AF96E:  VMOV            S0, R3
AF972:  ADDS            R3, R0, R2
AF974:  ADDS            R2, #1
AF976:  VCVT.F64.S32    D16, S0
AF97A:  LDRB            R3, [R3,#1]
AF97C:  SUB.W           R6, R3, #0x30 ; '0'
AF980:  CMP             R6, #0xA
AF982:  VMLA.F64        D16, D18, D17
AF986:  VMOV.F64        D18, D16
AF98A:  BCC             loc_AF96C
AF98C:  VNEG.F64        D17, D16
AF990:  CMP             R1, #0x2D ; '-'
AF992:  IT EQ
AF994:  VMOVEQ.F64      D16, D17
AF998:  LDR             R0, [SP,#0x60+var_14]
AF99A:  LDR             R1, =(__stack_chk_guard_ptr - 0xAF9A0)
AF99C:  ADD             R1, PC; __stack_chk_guard_ptr
AF99E:  LDR             R1, [R1]; __stack_chk_guard
AF9A0:  LDR             R1, [R1]
AF9A2:  CMP             R1, R0
AF9A4:  ITTTT EQ
AF9A6:  VMOVEQ          R0, R1, D16
AF9AA:  ADDEQ           SP, SP, #0x50 ; 'P'
AF9AC:  POPEQ.W         {R11}
AF9B0:  POPEQ           {R4-R7,PC}
AF9B2:  BLX             __stack_chk_fail
