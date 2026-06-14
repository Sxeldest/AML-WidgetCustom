; =========================================================
; Game Engine Function: opus_multistream_packet_unpad
; Address            : 0x1B9A08 - 0x1B9B66
; =========================================================

1B9A08:  PUSH            {R4-R7,LR}
1B9A0A:  ADD             R7, SP, #0xC
1B9A0C:  PUSH.W          {R8-R11}
1B9A10:  SUB             SP, SP, #0x1B4
1B9A12:  MOV             R6, R0
1B9A14:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B9A1E)
1B9A16:  MOV             R8, R1
1B9A18:  MOV             R4, R2
1B9A1A:  ADD             R0, PC; __stack_chk_guard_ptr
1B9A1C:  CMP.W           R8, #1
1B9A20:  LDR             R0, [R0]; __stack_chk_guard
1B9A22:  LDR             R0, [R0]
1B9A24:  STR             R0, [SP,#0x1D0+var_20]
1B9A26:  BLT.W           loc_1B9B38
1B9A2A:  CMP             R4, #1
1B9A2C:  BLT.W           loc_1B9B3E
1B9A30:  MOVS            R5, #0
1B9A32:  MOVS            R1, #0
1B9A34:  MOV             R11, R6
1B9A36:  SUBS            R0, R4, #1
1B9A38:  STR             R0, [SP,#0x1D0+var_1C0]
1B9A3A:  LDR             R0, [SP,#0x1D0+var_1C0]
1B9A3C:  MOV.W           R9, #0
1B9A40:  CMP             R0, R1
1B9A42:  IT NE
1B9A44:  MOVNE.W         R9, #1
1B9A48:  CMP.W           R8, #1
1B9A4C:  BLT             loc_1B9B42
1B9A4E:  MOVS            R0, #0
1B9A50:  STR             R1, [SP,#0x1D0+var_1B8]
1B9A52:  STR             R0, [SP,#0x1D0+var_1A8]
1B9A54:  ADD             R1, SP, #0x1D0+var_80
1B9A56:  STR             R0, [SP,#0x1D0+var_1D0]
1B9A58:  ADD.W           R3, SP, #0x1D0+var_1AE
1B9A5C:  STRD.W          R1, R0, [SP,#0x1D0+var_1CC]
1B9A60:  ADD             R0, SP, #0x1D0+var_1B4
1B9A62:  STR             R0, [SP,#0x1D0+var_1C4]
1B9A64:  MOV             R0, R11
1B9A66:  MOV             R1, R8
1B9A68:  MOV             R2, R9
1B9A6A:  BLX             j_opus_packet_parse_impl
1B9A6E:  CMP             R0, #0
1B9A70:  BLT             loc_1B9B48
1B9A72:  LDR.W           R10, [SP,#0x1D0+var_1B4]
1B9A76:  STR.W           R8, [SP,#0x1D0+var_1BC]
1B9A7A:  CMP.W           R10, #1
1B9A7E:  BLT             loc_1B9B42
1B9A80:  LDR             R0, [SP,#0x1D0+var_1A8]
1B9A82:  CBZ             R0, loc_1B9A96
1B9A84:  LDRB.W          R0, [SP,#0x1D0+var_1AC]
1B9A88:  LDRB.W          R1, [R11]
1B9A8C:  EORS            R0, R1
1B9A8E:  UXTB            R0, R0
1B9A90:  CMP             R0, #3
1B9A92:  BLS             loc_1B9AAA
1B9A94:  B               loc_1B9B42
1B9A96:  LDRB.W          R0, [R11]
1B9A9A:  MOV.W           R1, #0x1F40
1B9A9E:  STRB.W          R0, [SP,#0x1D0+var_1AC]
1B9AA2:  MOV             R0, R11
1B9AA4:  BLX             j_opus_packet_get_samples_per_frame
1B9AA8:  STR             R0, [SP,#0x1D0+var_84]
1B9AAA:  MOV             R0, R11
1B9AAC:  MOV             R1, R10
1B9AAE:  BLX             j_opus_packet_get_nb_frames
1B9AB2:  MOV             R8, R0
1B9AB4:  CMP.W           R8, #1
1B9AB8:  BLT             loc_1B9B42
1B9ABA:  LDR             R0, [SP,#0x1D0+var_1A8]
1B9ABC:  LDR             R1, [SP,#0x1D0+var_84]
1B9ABE:  ADD.W           R2, R0, R8
1B9AC2:  MULS            R1, R2
1B9AC4:  CMP.W           R1, #0x3C0
1B9AC8:  BGT             loc_1B9B42
1B9ACA:  ADD             R1, SP, #0x1D0+var_1AC
1B9ACC:  ADD.W           R3, SP, #0x1D0+var_1AD
1B9AD0:  MOV             R2, R1
1B9AD2:  ADD.W           R1, R2, R0,LSL#1
1B9AD6:  ADD.W           R0, R2, R0,LSL#2
1B9ADA:  ADDS            R1, #0xC8
1B9ADC:  ADDS            R0, #8
1B9ADE:  MOV             R2, R9
1B9AE0:  STRD.W          R0, R1, [SP,#0x1D0+var_1D0]
1B9AE4:  MOVS            R0, #0
1B9AE6:  STRD.W          R0, R0, [SP,#0x1D0+var_1C8]
1B9AEA:  MOV             R0, R11
1B9AEC:  MOV             R1, R10
1B9AEE:  BLX             j_opus_packet_parse_impl
1B9AF2:  CMP             R0, #1
1B9AF4:  BLT             loc_1B9B00
1B9AF6:  LDR             R0, [SP,#0x1D0+var_1A8]
1B9AF8:  ADD.W           R2, R0, R8
1B9AFC:  STR             R2, [SP,#0x1D0+var_1A8]
1B9AFE:  B               loc_1B9B06
1B9B00:  CMP             R0, #0
1B9B02:  BLT             loc_1B9B48
1B9B04:  LDR             R2, [SP,#0x1D0+var_1A8]
1B9B06:  LDR.W           R8, [SP,#0x1D0+var_1BC]
1B9B0A:  MOVS            R0, #0
1B9B0C:  STRD.W          R8, R9, [SP,#0x1D0+var_1D0]
1B9B10:  MOVS            R1, #0
1B9B12:  STR             R0, [SP,#0x1D0+var_1C8]
1B9B14:  ADD             R0, SP, #0x1D0+var_1AC
1B9B16:  MOV             R3, R6
1B9B18:  BLX             j_opus_repacketizer_out_range_impl
1B9B1C:  CMP             R0, #0
1B9B1E:  BLT             loc_1B9B48
1B9B20:  LDR             R1, [SP,#0x1D0+var_1B4]
1B9B22:  ADD             R6, R0
1B9B24:  ADD             R5, R0
1B9B26:  SUB.W           R8, R8, R1
1B9B2A:  ADD             R11, R1
1B9B2C:  LDR             R1, [SP,#0x1D0+var_1B8]
1B9B2E:  ADDS            R1, #1
1B9B30:  CMP             R1, R4
1B9B32:  BLT.W           loc_1B9A3A
1B9B36:  B               loc_1B9B4A
1B9B38:  MOV.W           R5, #0xFFFFFFFF
1B9B3C:  B               loc_1B9B4A
1B9B3E:  MOVS            R5, #0
1B9B40:  B               loc_1B9B4A
1B9B42:  MOV             R5, #0xFFFFFFFC
1B9B46:  B               loc_1B9B4A
1B9B48:  MOV             R5, R0
1B9B4A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B9B52)
1B9B4C:  LDR             R1, [SP,#0x1D0+var_20]
1B9B4E:  ADD             R0, PC; __stack_chk_guard_ptr
1B9B50:  LDR             R0, [R0]; __stack_chk_guard
1B9B52:  LDR             R0, [R0]
1B9B54:  SUBS            R0, R0, R1
1B9B56:  ITTTT EQ
1B9B58:  MOVEQ           R0, R5
1B9B5A:  ADDEQ           SP, SP, #0x1B4
1B9B5C:  POPEQ.W         {R8-R11}
1B9B60:  POPEQ           {R4-R7,PC}
1B9B62:  BLX             __stack_chk_fail
