; =========================================================
; Game Engine Function: sub_AD8D4
; Address            : 0xAD8D4 - 0xAE7AC
; =========================================================

AD8D4:  PUSH            {R4-R7,LR}
AD8D6:  ADD             R7, SP, #0xC
AD8D8:  PUSH.W          {R8-R11}
AD8DC:  SUB             SP, SP, #0x2C
AD8DE:  MOV             R4, R0
AD8E0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xAD8F0)
AD8E4:  ADD.W           R8, R4, #4
AD8E8:  ADD.W           R12, R4, #0x4B ; 'K'
AD8EC:  ADD             R0, PC; __stack_chk_guard_ptr
AD8EE:  ADD.W           R6, R4, #0x44 ; 'D'
AD8F2:  ADD.W           R11, R4, #0x40 ; '@'
AD8F6:  ADD.W           R10, R4, #0x3C ; '<'
AD8FA:  LDR             R0, [R0]; __stack_chk_guard
AD8FC:  LDR             R0, [R0]
AD8FE:  STR             R0, [SP,#0x48+var_20]
AD900:  LDRB.W          R0, [R4,#0x4C]
AD904:  SUB.W           R2, R1, #0x10000; switch 14 cases
AD908:  CMP             R2, #0xD
AD90A:  BHI             def_AD90C; jumptable 000AD90C default case
AD90C:  TBH.W           [PC,R2,LSL#1]; switch jump
AD910:  DCW 0x1AB; jump table for switch statement
AD912:  DCW 0x1BA
AD914:  DCW 0x23
AD916:  DCW 0x2B
AD918:  DCW 0x1C6
AD91A:  DCW 0x1F6
AD91C:  DCW 0x225
AD91E:  DCW 0x22D
AD920:  DCW 0x33
AD922:  DCW 0x6A
AD924:  DCW 0x239
AD926:  DCW 0x267
AD928:  DCW 0x29C
AD92A:  DCW 0x2B3
AD92C:  SUB.W           R2, R1, #0x30000; jumptable 000AD90C default case
AD930:  CMP             R2, #0xD
AD932:  BHI.W           def_AD936; jumptable 000AD936 default case, cases 196618,196619
AD936:  TBH.W           [PC,R2,LSL#1]; switch jump
AD93A:  DCW 0xBB; jump table for switch statement
AD93C:  DCW 0xC6
AD93E:  DCW 0xE
AD940:  DCW 0x16
AD942:  DCW 0xD9
AD944:  DCW 0x107
AD946:  DCW 0x131
AD948:  DCW 0x140
AD94A:  DCW 0x1E
AD94C:  DCW 0x55
AD94E:  DCW 0x2D6
AD950:  DCW 0x2D6
AD952:  DCW 0x153
AD954:  DCW 0x174
AD956:  AND.W           R5, R1, #0x20000; jumptable 000AD90C case 65538
AD95A:  CMP             R0, #0
AD95C:  BEQ.W           loc_ADA74
AD960:  ORR.W           R1, R5, #0x10000
AD964:  B               loc_AD904
AD966:  AND.W           R9, R1, #0x20000; jumptable 000AD90C case 65539
AD96A:  CMP             R0, #0
AD96C:  BEQ.W           loc_ADA90
AD970:  ORR.W           R1, R9, #0x10001
AD974:  B               loc_AD904
AD976:  LDR             R0, [R6]; jumptable 000AD90C case 65544
AD978:  LDR.W           R1, [R11]
AD97C:  CMP             R1, R0
AD97E:  BNE             loc_ADA64
AD980:  LDR.W           R6, [R10]
AD984:  LDR.W           R0, [R8]
AD988:  CMP             R6, R0
AD98A:  BGE.W           loc_AE73A
AD98E:  ADD.W           R0, R4, #0x54 ; 'T'; dest
AD992:  MOV             R1, R6
AD994:  MOVS            R2, #1
AD996:  MOVS            R3, #0
AD998:  MOV             R8, R12
AD99A:  BL              sub_AEFE0
AD99E:  LDR             R1, [R4,#0x14]
AD9A0:  CMP             R0, #0
AD9A2:  ITT NE
AD9A4:  LDRHNE.W        R2, [R1,R6,LSL#1]
AD9A8:  STRHNE          R2, [R0]
AD9AA:  ADD.W           R5, R1, R6,LSL#1
AD9AE:  ADDS            R1, R5, #2
AD9B0:  MOV             R0, R5
AD9B2:  BL              sub_889DE
AD9B6:  LDR             R3, [R4,#0x14]
AD9B8:  LDRD.W          R2, R1, [R4,#4]
AD9BC:  SUBS            R0, R1, R0
AD9BE:  ADD.W           R1, R3, R6,LSL#1
AD9C2:  STR             R0, [R4,#8]
AD9C4:  SUBS            R2, #1
AD9C6:  LDRH            R0, [R1,#2]
AD9C8:  STR             R2, [R4,#4]
AD9CA:  CMP             R0, #0
AD9CC:  BEQ.W           loc_AE546
AD9D0:  ADDS            R1, #4
AD9D2:  MOV             R12, R8
AD9D4:  STRH.W          R0, [R5],#2
AD9D8:  LDRH.W          R0, [R1],#2
AD9DC:  CMP             R0, #0
AD9DE:  BNE             loc_AD9D4
AD9E0:  B.W             loc_AE548
AD9E4:  LDR             R0, [R6]; jumptable 000AD90C case 65545
AD9E6:  LDR.W           R1, [R11]
AD9EA:  CMP             R1, R0
AD9EC:  BNE             loc_ADA64
AD9EE:  LDR.W           R5, [R10]
AD9F2:  LDR.W           R0, [R8]
AD9F6:  CMP             R5, R0
AD9F8:  ITT GT
AD9FA:  STRGT.W         R0, [R10]
AD9FE:  MOVGT           R5, R0
ADA00:  CMP             R5, #1
ADA02:  BLT.W           loc_AE73A
ADA06:  SUBS            R6, R5, #1
ADA08:  ADD.W           R0, R4, #0x54 ; 'T'; dest
ADA0C:  MOVS            R2, #1
ADA0E:  MOVS            R3, #0
ADA10:  MOV             R1, R6
ADA12:  MOV             R8, R12
ADA14:  BL              sub_AEFE0
ADA18:  LDR             R1, [R4,#0x14]
ADA1A:  CMP             R0, #0
ADA1C:  ITT NE
ADA1E:  LDRHNE.W        R2, [R1,R6,LSL#1]
ADA22:  STRHNE          R2, [R0]
ADA24:  ADD.W           R6, R1, R6,LSL#1
ADA28:  ADD.W           R1, R1, R5,LSL#1
ADA2C:  MOV             R0, R6
ADA2E:  BL              sub_889DE
ADA32:  LDR             R2, [R4,#0x14]
ADA34:  LDRD.W          R12, R3, [R4,#4]
ADA38:  SUBS            R0, R3, R0
ADA3A:  LDRH.W          R1, [R2,R5,LSL#1]
ADA3E:  SUB.W           R3, R12, #1
ADA42:  STRD.W          R3, R0, [R4,#4]
ADA46:  CMP             R1, #0
ADA48:  BEQ.W           loc_AE3F2
ADA4C:  ADD.W           R0, R2, R5,LSL#1
ADA50:  MOV             R12, R8
ADA52:  ADDS            R0, #2
ADA54:  STRH.W          R1, [R6],#2
ADA58:  LDRH.W          R1, [R0],#2
ADA5C:  CMP             R1, #0
ADA5E:  BNE             loc_ADA54
ADA60:  B.W             loc_AE3F4
ADA64:  MOV             R0, R4
ADA66:  MOV             R1, R10
ADA68:  MOV             R5, R12
ADA6A:  BL              sub_AEBCE
ADA6E:  MOV             R12, R5
ADA70:  B.W             loc_AE73A
ADA74:  LDR             R1, [R6]
ADA76:  CMP             R5, #0
ADA78:  LDR.W           R2, [R11]
ADA7C:  BNE.W           loc_ADEBE
ADA80:  CMP             R2, R1
ADA82:  BNE.W           loc_AE062
ADA86:  LDR.W           R2, [R10]
ADA8A:  LDR.W           R0, [R8]
ADA8E:  B               loc_AE0B0
ADA90:  LDR             R1, [R6]
ADA92:  CMP.W           R9, #0
ADA96:  LDR.W           R3, [R11]
ADA9A:  STR.W           R10, [SP,#0x48+var_3C]
ADA9E:  BNE.W           loc_ADED4
ADAA2:  CMP             R3, R1
ADAA4:  BNE.W           loc_AE07E
ADAA8:  LDR.W           R2, [R10]
ADAAC:  B.W             loc_AE308
ADAB0:  LDR             R0, [R6]; jumptable 000AD936 case 196608
ADAB2:  LDR.W           R1, [R11]
ADAB6:  LDR.W           R2, [R8]
ADABA:  CMP             R1, R0
ADABC:  BNE.W           loc_ADFD2
ADAC0:  LDR.W           R1, [R10]
ADAC4:  B               loc_ADFE8
ADAC6:  LDR             R0, [R6]; jumptable 000AD936 case 196609
ADAC8:  LDR.W           R2, [R11]
ADACC:  CMP             R2, R0
ADACE:  ITTT EQ
ADAD0:  LDREQ.W         R2, [R10]
ADAD4:  STREQ.W         R2, [R11]
ADAD8:  MOVEQ           R0, R2
ADADA:  LDR.W           R3, [R8]
ADADE:  ADDS            R1, R0, #1
ADAE0:  CMP             R2, R1
ADAE2:  STR             R1, [R6]
ADAE4:  BNE.W           loc_AE00A
ADAE8:  MOV             R1, R2
ADAEA:  B               loc_AE01A
ADAEC:  MOV             R5, R6; jumptable 000AD936 case 196612
ADAEE:  LDR             R2, [R6]
ADAF0:  LDR.W           R3, [R11]
ADAF4:  LDR.W           R6, [R8]
ADAF8:  CMP             R3, R2
ADAFA:  BEQ             loc_ADB16
ADAFC:  CMP             R3, R6
ADAFE:  ITT GT
ADB00:  STRGT.W         R6, [R11]
ADB04:  MOVGT           R3, R6
ADB06:  CMP             R2, R6
ADB08:  ITT GT
ADB0A:  STRGT           R6, [R5]
ADB0C:  MOVGT           R2, R6
ADB0E:  CMP             R3, R2
ADB10:  BNE             loc_ADB18
ADB12:  STR.W           R3, [R10]
ADB16:  MOV             R2, R3
ADB18:  LDR.W           R1, [R10]
ADB1C:  CMP             R1, R6
ADB1E:  ITT GT
ADB20:  STRGT.W         R6, [R10]
ADB24:  MOVGT           R1, R6
ADB26:  CMP             R3, R2
ADB28:  ITTE NE
ADB2A:  STRNE.W         R2, [R10]
ADB2E:  MOVNE           R1, R2
ADB30:  STREQ.W         R1, [R11]
ADB34:  CMP             R0, #0
ADB36:  BEQ.W           loc_AE1F6
ADB3A:  MOVS            R1, #0
ADB3C:  STR.W           R1, [R10]
ADB40:  MOVS            R0, #0
ADB42:  STR             R1, [R5]
ADB44:  B.W             loc_AE73C
ADB48:  MOV             R5, R6; jumptable 000AD936 case 196613
ADB4A:  LDR             R2, [R6]
ADB4C:  LDR.W           R6, [R11]
ADB50:  LDR.W           R3, [R8]
ADB54:  CMP             R6, R2
ADB56:  BEQ             loc_ADB72
ADB58:  CMP             R6, R3
ADB5A:  ITT GT
ADB5C:  STRGT.W         R3, [R11]
ADB60:  MOVGT           R6, R3
ADB62:  CMP             R2, R3
ADB64:  ITT GT
ADB66:  STRGT           R3, [R5]
ADB68:  MOVGT           R2, R3
ADB6A:  CMP             R6, R2
ADB6C:  BNE             loc_ADB74
ADB6E:  STR.W           R6, [R10]
ADB72:  MOV             R2, R6
ADB74:  LDR.W           R1, [R10]
ADB78:  CMP             R1, R3
ADB7A:  ITT GT
ADB7C:  STRGT.W         R3, [R10]
ADB80:  MOVGT           R1, R3
ADB82:  CMP             R6, R2
ADB84:  ITTE NE
ADB86:  STRNE.W         R2, [R10]
ADB8A:  MOVNE           R1, R2
ADB8C:  STREQ.W         R1, [R11]
ADB90:  CMP             R0, #0
ADB92:  BEQ.W           loc_AE21A
ADB96:  STR.W           R3, [R10]
ADB9A:  B               loc_AE278
ADB9C:  LDR             R0, [R6]; jumptable 000AD936 case 196614
ADB9E:  LDR.W           R1, [R11]
ADBA2:  CMP             R1, R0
ADBA4:  ITT EQ
ADBA6:  LDREQ.W         R0, [R10]
ADBAA:  STREQ.W         R0, [R11]
ADBAE:  MOVS            R0, #0
ADBB0:  STR.W           R0, [R10]
ADBB4:  STR             R0, [R6]
ADBB6:  B.W             loc_AE73C
ADBBA:  LDR             R0, [R6]; jumptable 000AD936 case 196615
ADBBC:  LDR.W           R1, [R11]
ADBC0:  CMP             R1, R0
ADBC2:  ITT EQ
ADBC4:  LDREQ.W         R0, [R10]
ADBC8:  STREQ.W         R0, [R11]
ADBCC:  MOVS            R0, #0
ADBCE:  STRB.W          R0, [R12]
ADBD2:  LDR.W           R0, [R8]
ADBD6:  STR             R0, [R6]
ADBD8:  STR.W           R0, [R10]
ADBDC:  B.W             loc_AE740
ADBE0:  MOV             R0, R6; jumptable 000AD936 case 196620
ADBE2:  LDR.W           R6, [R10]
ADBE6:  STR.W           R10, [SP,#0x48+var_3C]
ADBEA:  MOV             R10, R0
ADBEC:  LDR.W           R5, [R11]
ADBF0:  LDR             R0, [R0]
ADBF2:  CMP             R5, R0
ADBF4:  MOV             R0, R6
ADBF6:  ITTT EQ
ADBF8:  STREQ.W         R6, [R11]
ADBFC:  STREQ.W         R6, [R10]
ADC00:  MOVEQ           R5, R6
ADC02:  CMP             R6, #0
ADC04:  IT PL
ADC06:  MOVPL           R0, #0
ADC08:  SUB.W           R9, R0, #1
ADC0C:  CMP             R6, #1
ADC0E:  BLT.W           loc_ADF8E
ADC12:  SUBS            R6, #1
ADC14:  MOV             R0, R4
ADC16:  MOV             R1, R6
ADC18:  BL              sub_AF144
ADC1C:  CMP             R0, #0
ADC1E:  BEQ             loc_ADC0C
ADC20:  B               loc_ADF90
ADC22:  MOV             R0, R6; jumptable 000AD936 case 196621
ADC24:  STR.W           R10, [SP,#0x48+var_3C]
ADC28:  LDR.W           R6, [R10]
ADC2C:  MOV             R10, R0
ADC2E:  LDR.W           R9, [R11]
ADC32:  LDR             R0, [R0]
ADC34:  CMP             R9, R0
ADC36:  ITTT EQ
ADC38:  STREQ.W         R6, [R11]
ADC3C:  STREQ.W         R6, [R10]
ADC40:  MOVEQ           R9, R6
ADC42:  LDR.W           R5, [R8]
ADC46:  ADD.W           R8, R6, #1
ADC4A:  CMP             R5, R8
ADC4C:  IT GT
ADC4E:  MOVGT           R8, R5
ADC50:  ADDS            R6, #1
ADC52:  CMP             R6, R5
ADC54:  BGE.W           loc_ADFAA
ADC58:  MOV             R0, R4
ADC5A:  MOV             R1, R6
ADC5C:  BL              sub_AF144
ADC60:  CMP             R0, #0
ADC62:  BEQ             loc_ADC50
ADC64:  B               loc_ADFAC
ADC66:  LDR             R1, [R6]; jumptable 000AD90C case 65536
ADC68:  LDR.W           R0, [R11]
ADC6C:  CMP             R0, R1
ADC6E:  BNE.W           loc_ADEAA
ADC72:  LDR.W           R0, [R10]
ADC76:  CMP             R0, #1
ADC78:  ITT GE
ADC7A:  SUBGE           R0, #1
ADC7C:  STRGE.W         R0, [R10]
ADC80:  B.W             loc_AE73A
ADC84:  LDR             R2, [R6]; jumptable 000AD90C case 65537
ADC86:  LDR.W           R1, [R11]
ADC8A:  CMP             R1, R2
ADC8C:  BNE.W           loc_AE04A
ADC90:  LDR.W           R0, [R10]
ADC94:  LDR.W           R1, [R8]
ADC98:  ADDS            R0, #1
ADC9A:  B               loc_AE2BA
ADC9C:  MOV             R5, R6; jumptable 000AD90C case 65540
ADC9E:  LDR             R2, [R6]
ADCA0:  LDR.W           R1, [R11]
ADCA4:  LDR.W           R6, [R8]
ADCA8:  CMP             R1, R2
ADCAA:  BEQ             loc_ADCC6
ADCAC:  CMP             R1, R6
ADCAE:  ITT GT
ADCB0:  STRGT.W         R6, [R11]
ADCB4:  MOVGT           R1, R6
ADCB6:  CMP             R2, R6
ADCB8:  ITT GT
ADCBA:  STRGT           R6, [R5]
ADCBC:  MOVGT           R2, R6
ADCBE:  CMP             R1, R2
ADCC0:  BNE             loc_ADCC8
ADCC2:  STR.W           R1, [R10]
ADCC6:  MOV             R2, R1
ADCC8:  LDR.W           R3, [R10]
ADCCC:  CMP             R3, R6
ADCCE:  ITT GT
ADCD0:  STRGT.W         R6, [R10]
ADCD4:  MOVGT           R3, R6
ADCD6:  CMP             R1, R2
ADCD8:  BEQ             loc_ADCEC
ADCDA:  CMP             R2, R1
ADCDC:  ITT LT
ADCDE:  STRLT.W         R2, [R11]
ADCE2:  MOVLT           R1, R2
ADCE4:  MOV             R3, R1
ADCE6:  STR             R1, [R5]
ADCE8:  STR.W           R1, [R10]
ADCEC:  CMP             R0, #0
ADCEE:  BEQ.W           loc_AE234
ADCF2:  MOVS            R0, #0
ADCF4:  STR.W           R0, [R10]
ADCF8:  B.W             loc_AE73A
ADCFC:  MOV             R5, R6; jumptable 000AD90C case 65541
ADCFE:  LDR             R6, [R6]
ADD00:  LDR.W           R2, [R11]
ADD04:  LDR.W           R3, [R8]
ADD08:  CMP             R2, R6
ADD0A:  BEQ             loc_ADD26
ADD0C:  CMP             R2, R3
ADD0E:  ITT GT
ADD10:  STRGT.W         R3, [R11]
ADD14:  MOVGT           R2, R3
ADD16:  CMP             R6, R3
ADD18:  ITT GT
ADD1A:  STRGT           R3, [R5]
ADD1C:  MOVGT           R6, R3
ADD1E:  CMP             R2, R6
ADD20:  BNE             loc_ADD28
ADD22:  STR.W           R2, [R10]
ADD26:  MOV             R6, R2
ADD28:  LDR.W           R1, [R10]
ADD2C:  CMP             R1, R3
ADD2E:  ITT GT
ADD30:  STRGT.W         R3, [R10]
ADD34:  MOVGT           R1, R3
ADD36:  CMP             R2, R6
ADD38:  BEQ             loc_ADD4C
ADD3A:  CMP             R6, R2
ADD3C:  ITT LT
ADD3E:  STRLT.W         R6, [R11]
ADD42:  MOVLT           R2, R6
ADD44:  MOV             R1, R2
ADD46:  STR             R2, [R5]
ADD48:  STR.W           R2, [R10]
ADD4C:  CMP             R0, #0
ADD4E:  BEQ.W           loc_AE258
ADD52:  STR.W           R3, [R10]
ADD56:  B.W             loc_AE73A
ADD5A:  MOVS            R0, #0; jumptable 000AD90C case 65542
ADD5C:  STR.W           R0, [R11]
ADD60:  STR             R0, [R6]
ADD62:  STR.W           R0, [R10]
ADD66:  B.W             loc_AE73C
ADD6A:  MOVS            R0, #0; jumptable 000AD90C case 65543
ADD6C:  STR             R0, [R6]
ADD6E:  STR.W           R0, [R11]
ADD72:  STRB.W          R0, [R12]
ADD76:  LDR.W           R0, [R8]
ADD7A:  STR.W           R0, [R10]
ADD7E:  B.W             loc_AE740
ADD82:  LDRSH.W         R0, [R4,#0xE52]; jumptable 000AD90C case 65546
ADD86:  CMP             R0, #0
ADD88:  BEQ.W           loc_AE73A
ADD8C:  LDRSH.W         R3, [R4,#0xE54]
ADD90:  ADD.W           R1, R4, #0x54 ; 'T'
ADD94:  ADD.W           R0, R1, R0,LSL#4
ADD98:  SUBS            R2, R3, #1
ADD9A:  LDRD.W          R10, R5, [R0,#-8]
ADD9E:  LDRD.W          R9, R8, [R0,#-0x10]
ADDA2:  LSLS            R0, R2, #4
ADDA4:  CMP.W           R10, #0
ADDA8:  STR.W           R9, [R1,R0]
ADDAC:  ADD.W           R0, R1, R2,LSL#4
ADDB0:  MOV.W           R1, #0xFFFFFFFF
ADDB4:  STRD.W          R8, R1, [R0,#8]
ADDB8:  STR.W           R10, [R0,#4]!
ADDBC:  BEQ.W           loc_AE6F8
ADDC0:  LDR.W           R1, [R4,#0xE58]
ADDC4:  STR             R5, [SP,#0x48+var_3C]
ADDC6:  MOVW            R5, #0x3E6
ADDCA:  ADD.W           R6, R1, R10
ADDCE:  CMP             R6, R5
ADDD0:  BLE.W           loc_AE43E
ADDD4:  MOVS            R1, #0
ADDD6:  MOV             R11, R12
ADDD8:  STR             R1, [R0]
ADDDA:  B.W             loc_AE6AA
ADDDE:  LDRSH.W         R0, [R4,#0xE54]; jumptable 000AD90C case 65547
ADDE2:  CMP             R0, #0x63 ; 'c'
ADDE4:  BEQ.W           loc_AE73A
ADDE8:  LDRSH.W         R1, [R4,#0xE52]
ADDEC:  ADD.W           R2, R4, #0x54 ; 'T'
ADDF0:  LSLS            R3, R0, #4
ADDF2:  ADD.W           R0, R2, R0,LSL#4
ADDF6:  LDR.W           R10, [R2,R3]
ADDFA:  ADD.W           R3, R2, R1,LSL#4
ADDFE:  LDRD.W          R8, R11, [R0,#4]
ADE02:  CMP.W           R11, #0
ADE06:  LDR.W           R9, [R0,#0xC]
ADE0A:  MOV.W           R0, R1,LSL#4
ADE0E:  MOV             R1, R3
ADE10:  MOV             R6, R3
ADE12:  STR.W           R10, [R2,R0]
ADE16:  MOV.W           R0, #0xFFFFFFFF
ADE1A:  STR.W           R11, [R1,#4]!
ADE1E:  STR.W           R8, [R6,#8]!
ADE22:  STR.W           R0, [R3,#0xC]!
ADE26:  BEQ.W           loc_AE602
ADE2A:  LDR.W           LR, [R4,#0xE58]
ADE2E:  LDR.W           R0, [R4,#0xE5C]
ADE32:  ADD.W           R2, LR, R11
ADE36:  STR.W           R12, [SP,#0x48+var_3C]
ADE3A:  CMP             R2, R0
ADE3C:  BLE.W           loc_AE54E
ADE40:  MOVS            R0, #0
ADE42:  STR             R0, [R6]
ADE44:  STR             R0, [R1]
ADE46:  B               loc_AE5B4
ADE48:  LDR             R1, [R6]; jumptable 000AD90C case 65548
ADE4A:  LDR.W           R0, [R11]
ADE4E:  CMP             R0, R1
ADE50:  BNE             loc_ADEAA
ADE52:  LDR.W           R6, [R10]
ADE56:  CMP             R6, #0
ADE58:  MOV             R0, R6
ADE5A:  IT PL
ADE5C:  MOVPL           R0, #0
ADE5E:  SUBS            R5, R0, #1
ADE60:  CMP             R6, #1
ADE62:  BLT.W           loc_AE27E
ADE66:  SUBS            R6, #1
ADE68:  MOV             R0, R4
ADE6A:  MOV             R1, R6
ADE6C:  BL              sub_AF144
ADE70:  CMP             R0, #0
ADE72:  BEQ             loc_ADE60
ADE74:  B               loc_AE280
ADE76:  LDR             R1, [R6]; jumptable 000AD90C case 65549
ADE78:  LDR.W           R2, [R11]
ADE7C:  CMP             R2, R1
ADE7E:  BNE.W           loc_AE056
ADE82:  LDR.W           R6, [R10]
ADE86:  LDR.W           R5, [R8]
ADE8A:  ADD.W           R8, R6, #1
ADE8E:  CMP             R5, R8
ADE90:  IT GT
ADE92:  MOVGT           R8, R5
ADE94:  ADDS            R6, #1
ADE96:  CMP             R6, R5
ADE98:  BGE.W           loc_AE294
ADE9C:  MOV             R0, R4
ADE9E:  MOV             R1, R6
ADEA0:  BL              sub_AF144
ADEA4:  CMP             R0, #0
ADEA6:  BEQ             loc_ADE94
ADEA8:  B               loc_AE296
ADEAA:  CMP             R1, R0
ADEAC:  ITT LT
ADEAE:  STRLT.W         R1, [R11]
ADEB2:  MOVLT           R0, R1
ADEB4:  STR             R0, [R6]
ADEB6:  STR.W           R0, [R10]
ADEBA:  B.W             loc_AE73A
ADEBE:  CMP             R2, R1
ADEC0:  BNE.W           loc_AE08A
ADEC4:  LDR.W           R2, [R10]
ADEC8:  STR             R2, [R6]
ADECA:  STR.W           R2, [R11]
ADECE:  LDR.W           R0, [R8]
ADED2:  B               loc_AE0B0
ADED4:  CMP             R3, R1
ADED6:  BNE.W           loc_AE192
ADEDA:  LDR.W           R2, [R10]
ADEDE:  STR             R2, [R6]
ADEE0:  STR.W           R2, [R11]
ADEE4:  B               loc_AE308
ADEE6:  CMP.W           R1, #0x10000; jumptable 000AD936 default case, cases 196618,196619
ADEEA:  IT GE
ADEEC:  MOVGE           R1, #0
ADEEE:  CMP             R1, #1
ADEF0:  BLT.W           loc_AE740
ADEF4:  CMP             R1, #0xA
ADEF6:  STRH.W          R1, [SP,#0x48+var_38]
ADEFA:  BNE             loc_ADF02
ADEFC:  CMP             R0, #0
ADEFE:  BNE.W           loc_AE740
ADF02:  LDRB.W          R0, [R4,#0x48]
ADF06:  MOV             R9, R12
ADF08:  CMP             R0, #0
ADF0A:  BEQ.W           loc_AE404
ADF0E:  LDR             R0, [R6]
ADF10:  LDR.W           R1, [R11]
ADF14:  CMP             R1, R0
ADF16:  BNE.W           loc_AE404
ADF1A:  LDR.W           R6, [R10]
ADF1E:  LDR.W           R0, [R8]
ADF22:  CMP             R6, R0
ADF24:  BGE.W           loc_AE404
ADF28:  ADD.W           R0, R4, #0x54 ; 'T'; dest
ADF2C:  MOV             R1, R6
ADF2E:  MOVS            R2, #1
ADF30:  MOVS            R3, #1
ADF32:  BL              sub_AEFE0
ADF36:  CMP             R0, #0
ADF38:  ITTT NE
ADF3A:  LDRNE           R1, [R4,#0x14]
ADF3C:  LDRHNE.W        R1, [R1,R6,LSL#1]
ADF40:  STRHNE          R1, [R0]
ADF42:  LDR             R5, [R4,#0x3C]
ADF44:  LDR             R0, [R4,#0x14]
ADF46:  ADD.W           R6, R0, R5,LSL#1
ADF4A:  ADDS            R1, R6, #2
ADF4C:  MOV             R0, R6
ADF4E:  BL              sub_889DE
ADF52:  LDR             R3, [R4,#0x14]
ADF54:  LDRD.W          R2, R1, [R4,#4]
ADF58:  SUBS            R0, R1, R0
ADF5A:  ADD.W           R1, R3, R5,LSL#1
ADF5E:  STR             R0, [R4,#8]
ADF60:  SUBS            R2, #1
ADF62:  LDRH            R0, [R1,#2]
ADF64:  STR             R2, [R4,#4]
ADF66:  CBZ             R0, loc_ADF76
ADF68:  ADDS            R1, #4
ADF6A:  STRH.W          R0, [R6],#2
ADF6E:  LDRH.W          R0, [R1],#2
ADF72:  CMP             R0, #0
ADF74:  BNE             loc_ADF6A
ADF76:  LDR             R1, [R4,#0x3C]
ADF78:  MOVS            R0, #0
ADF7A:  ADD             R2, SP, #0x48+var_38
ADF7C:  STRH            R0, [R6]
ADF7E:  MOV             R0, R4
ADF80:  MOVS            R3, #1
ADF82:  BL              sub_AEADC
ADF86:  CMP             R0, #0
ADF88:  BNE.W           loc_AE42C
ADF8C:  B               loc_AE740
ADF8E:  MOV             R6, R9
ADF90:  LDR.W           R0, [R8]
ADF94:  BIC.W           R1, R6, R6,ASR#31
ADF98:  LDR             R2, [SP,#0x48+var_3C]
ADF9A:  CMP             R5, R1
ADF9C:  STR.W           R1, [R10]
ADFA0:  STR             R1, [R2]
ADFA2:  BNE             loc_AE022
ADFA4:  MOV             R1, R5
ADFA6:  LDR             R2, [SP,#0x48+var_3C]
ADFA8:  B               loc_AE042
ADFAA:  MOV             R6, R8
ADFAC:  CMP             R6, R5
ADFAE:  IT GT
ADFB0:  MOVGT           R6, R5
ADFB2:  LDR             R0, [SP,#0x48+var_3C]
ADFB4:  CMP             R9, R6
ADFB6:  STR.W           R6, [R10]
ADFBA:  STR             R6, [R0]
ADFBC:  BEQ.W           loc_AE740
ADFC0:  CMP             R9, R5
ADFC2:  ITT GT
ADFC4:  STRGT.W         R5, [R11]
ADFC8:  MOVGT           R9, R5
ADFCA:  CMP             R9, R6
ADFCC:  IT EQ
ADFCE:  STREQ           R6, [R0]
ADFD0:  B               loc_AE740
ADFD2:  CMP             R1, R2
ADFD4:  ITT GT
ADFD6:  STRGT.W         R2, [R11]
ADFDA:  MOVGT           R1, R2
ADFDC:  CMP             R0, R2
ADFDE:  ITT GT
ADFE0:  STRGT           R2, [R6]
ADFE2:  MOVGT           R0, R2
ADFE4:  CMP             R1, R0
ADFE6:  BNE             loc_ADFF6
ADFE8:  CMP             R1, R2
ADFEA:  IT GT
ADFEC:  MOVGT           R1, R2
ADFEE:  MOV             R0, R1
ADFF0:  STR.W           R1, [R11]
ADFF4:  STR             R1, [R6]
ADFF6:  MOVS            R1, #0
ADFF8:  CMP             R0, #1
ADFFA:  ITT GE
ADFFC:  SUBGE           R0, #1
ADFFE:  STRGE           R0, [R6]
AE000:  STRB.W          R1, [R12]
AE004:  STR.W           R0, [R10]
AE008:  B               loc_AE740
AE00A:  CMP             R2, R3
AE00C:  IT GT
AE00E:  STRGT.W         R3, [R11]
AE012:  CMP             R0, R3
AE014:  ITT GE
AE016:  STRGE           R3, [R6]
AE018:  MOVGE           R1, R3
AE01A:  MOVS            R0, #0
AE01C:  STR.W           R1, [R10]
AE020:  B               loc_AE73C
AE022:  CMP             R5, R0
AE024:  MOV             R2, R1
AE026:  ITT GT
AE028:  STRGT.W         R0, [R11]
AE02C:  MOVGT           R5, R0
AE02E:  CMP             R1, R0
AE030:  ITT GT
AE032:  STRGT.W         R0, [R10]
AE036:  MOVGT           R2, R0
AE038:  CMP             R5, R2
AE03A:  LDR             R2, [SP,#0x48+var_3C]
AE03C:  ITT EQ
AE03E:  STREQ           R5, [R2]
AE040:  MOVEQ           R1, R5
AE042:  CMP             R1, R0
AE044:  IT GT
AE046:  STRGT           R0, [R2]
AE048:  B               loc_AE740
AE04A:  CMP             R2, R1
AE04C:  BGE.W           loc_AE2A2
AE050:  MOV             R0, R1
AE052:  STR             R1, [R6]
AE054:  B               loc_AE2A6
AE056:  CMP             R1, R2
AE058:  BGE.W           loc_AE2C8
AE05C:  MOV             R0, R2
AE05E:  STR             R2, [R6]
AE060:  B               loc_AE2CC
AE062:  CMP             R1, R2
AE064:  ITT LT
AE066:  STRLT.W         R1, [R11]
AE06A:  MOVLT           R2, R1
AE06C:  MOVS            R0, #0
AE06E:  STR             R2, [R6]
AE070:  STRB.W          R0, [R12]
AE074:  STR.W           R2, [R10]
AE078:  LDR.W           R0, [R8]
AE07C:  B               loc_AE0B0
AE07E:  CMP             R1, R3
AE080:  BGE.W           loc_AE2E6
AE084:  MOV             R2, R3
AE086:  STR             R3, [R6]
AE088:  B               loc_AE2EA
AE08A:  LDR.W           R0, [R8]
AE08E:  MOV             R3, R1
AE090:  STR.W           R1, [R10]
AE094:  CMP             R2, R0
AE096:  ITT GT
AE098:  STRGT.W         R0, [R11]
AE09C:  MOVGT           R2, R0
AE09E:  CMP             R1, R0
AE0A0:  ITT GT
AE0A2:  STRGT           R0, [R6]
AE0A4:  MOVGT           R3, R0
AE0A6:  CMP             R2, R3
AE0A8:  ITE EQ
AE0AA:  STREQ.W         R2, [R10]
AE0AE:  MOVNE           R2, R1
AE0B0:  STR             R6, [SP,#0x48+var_40]
AE0B2:  ADD             R6, SP, #0x48+var_38
AE0B4:  CMP             R2, R0
AE0B6:  ITT GT
AE0B8:  STRGT.W         R0, [R10]
AE0BC:  MOVGT           R2, R0
AE0BE:  MOV             R0, R6
AE0C0:  MOV             R1, R4
AE0C2:  MOVS            R3, #0
AE0C4:  BL              sub_AED88
AE0C8:  LDR             R1, [SP,#0x48+var_2C]
AE0CA:  LDR             R0, [SP,#0x48+var_24]
AE0CC:  CMP             R0, R1
AE0CE:  BEQ.W           loc_AE740
AE0D2:  LDR             R1, =(off_114D5C - 0xAE0E0)
AE0D4:  MOVW            R3, #0x18C4
AE0D8:  LDR.W           R9, [R4,#0x14]
AE0DC:  ADD             R1, PC; off_114D5C
AE0DE:  LDR             R2, [R4,#4]
AE0E0:  ADD.W           LR, R9, R0,LSL#1
AE0E4:  LDR             R1, [R1]; dword_1ACF68
AE0E6:  LDR             R1, [R1]
AE0E8:  LDR.W           R12, [R1,R3]
AE0EC:  ADD             R1, R3
AE0EE:  VLDR            S0, [R1,#4]
AE0F2:  LDRB.W          R1, [R4,#0x4B]
AE0F6:  ADD.W           R8, R12, #0xC
AE0FA:  VLDR            S2, [R12,#0x10]
AE0FE:  CMP             R1, #0
AE100:  STR             R0, [R4,#0x3C]
AE102:  VDIV.F32        S2, S0, S2
AE106:  IT NE
AE108:  ADDNE.W         R6, R4, #0x50 ; 'P'
AE10C:  MOV             R1, LR
AE10E:  VLDR            S0, [R6]
AE112:  ADD.W           R6, R9, R2,LSL#1
AE116:  STR             R2, [SP,#0x48+var_44]
AE118:  CMP             R1, R6
AE11A:  BCS             loc_AE124
AE11C:  LDRH.W          R3, [R1],#2
AE120:  CMP             R3, #0xA
AE122:  BNE             loc_AE118
AE124:  SUB.W           R6, R1, LR
AE128:  CMP             R6, #1
AE12A:  BLT             loc_AE182
AE12C:  VMOV.F32        S6, #-1.0
AE130:  VLDR            S4, =0.0
AE134:  MOVS            R1, #1
AE136:  LSRS            R3, R6, #1
AE138:  CMP             R3, #1
AE13A:  IT GT
AE13C:  LSRGT           R1, R6, #1
AE13E:  LDRH.W          R6, [R9,R0,LSL#1]
AE142:  CMP             R6, #0xA
AE144:  BEQ             loc_AE182
AE146:  LDR.W           R3, [R12]
AE14A:  LDR.W           R2, [R12,#8]
AE14E:  CMP             R3, R6
AE150:  MOV             R3, R8
AE152:  IT GT
AE154:  ADDGT.W         R3, R2, R6,LSL#2
AE158:  VLDR            S8, [R3]
AE15C:  VMUL.F32        S8, S2, S8
AE160:  VCMP.F32        S8, S6
AE164:  VMRS            APSR_nzcv, FPSCR
AE168:  BEQ             loc_AE182
AE16A:  VADD.F32        S4, S4, S8
AE16E:  VCMP.F32        S4, S0
AE172:  VMRS            APSR_nzcv, FPSCR
AE176:  BGT             loc_AE182
AE178:  ADDS            R0, #1
AE17A:  SUBS            R1, #1
AE17C:  STR.W           R0, [R10]
AE180:  BNE             loc_AE13E
AE182:  LDR             R3, [SP,#0x48+var_40]
AE184:  LDR.W           R6, [R11]
AE188:  LDR             R2, [R3]
AE18A:  CMP             R6, R2
AE18C:  BNE             loc_AE1BC
AE18E:  LDR             R1, [SP,#0x48+var_44]
AE190:  B               loc_AE1DA
AE192:  LDR.W           R0, [R8]
AE196:  MOV             R2, R1
AE198:  STR.W           R1, [R10]
AE19C:  CMP             R3, R0
AE19E:  ITT GT
AE1A0:  STRGT.W         R0, [R11]
AE1A4:  MOVGT           R3, R0
AE1A6:  CMP             R1, R0
AE1A8:  ITT GT
AE1AA:  STRGT           R0, [R6]
AE1AC:  MOVGT           R2, R0
AE1AE:  CMP             R3, R2
AE1B0:  ITTE EQ
AE1B2:  STREQ.W         R3, [R10]
AE1B6:  MOVEQ           R2, R3
AE1B8:  MOVNE           R2, R1
AE1BA:  B               loc_AE30C
AE1BC:  LDR             R1, [SP,#0x48+var_44]
AE1BE:  CMP             R6, R1
AE1C0:  ITT GT
AE1C2:  STRGT.W         R1, [R11]
AE1C6:  MOVGT           R6, R1
AE1C8:  CMP             R2, R1
AE1CA:  ITT GT
AE1CC:  STRGT           R1, [R3]
AE1CE:  MOVGT           R2, R1
AE1D0:  CMP             R6, R2
AE1D2:  ITT EQ
AE1D4:  STREQ.W         R6, [R10]
AE1D8:  MOVEQ           R0, R6
AE1DA:  CMP             R0, R1
AE1DC:  ITT GT
AE1DE:  STRGT.W         R1, [R10]
AE1E2:  MOVGT           R0, R1
AE1E4:  MOVS            R1, #1
AE1E6:  VSTR            S0, [R4,#0x50]
AE1EA:  STRB.W          R1, [R4,#0x4B]
AE1EE:  CMP             R5, #0
AE1F0:  IT NE
AE1F2:  STRNE           R0, [R3]
AE1F4:  B               loc_AE740
AE1F6:  CMP             R1, #1
AE1F8:  BLT.W           loc_ADB40
AE1FC:  LDR             R0, [R4,#0x14]
AE1FE:  SUBS            R0, #2
AE200:  LDRH.W          R2, [R0,R1,LSL#1]
AE204:  CMP             R2, #0xA
AE206:  BEQ.W           loc_ADB40
AE20A:  SUBS            R1, #1
AE20C:  STR.W           R1, [R10]
AE210:  ADDS            R2, R1, #1
AE212:  CMP             R2, #1
AE214:  BHI             loc_AE200
AE216:  MOVS            R1, #0
AE218:  B               loc_ADB40
AE21A:  CMP             R1, R3
AE21C:  BGE             loc_AE276
AE21E:  LDR             R0, [R4,#0x14]
AE220:  LDRH.W          R2, [R0,R1,LSL#1]
AE224:  CMP             R2, #0xA
AE226:  BEQ             loc_AE276
AE228:  ADDS            R1, #1
AE22A:  STR.W           R1, [R10]
AE22E:  CMP             R3, R1
AE230:  BNE             loc_AE220
AE232:  B               loc_AE278
AE234:  CMP             R3, #1
AE236:  BLT.W           loc_AE73A
AE23A:  LDR             R0, [R4,#0x14]
AE23C:  SUBS            R1, R3, #1
AE23E:  LDRH.W          R2, [R0,R1,LSL#1]
AE242:  CMP             R2, #0xA
AE244:  BEQ.W           loc_AE73A
AE248:  SUBS            R2, R1, #1
AE24A:  STR.W           R1, [R10]
AE24E:  ADDS            R1, #1
AE250:  CMP             R1, #1
AE252:  MOV             R1, R2
AE254:  BHI             loc_AE23E
AE256:  B               loc_AE73A
AE258:  CMP             R1, R3
AE25A:  BGE.W           loc_AE73A
AE25E:  LDR             R0, [R4,#0x14]
AE260:  LDRH.W          R2, [R0,R1,LSL#1]
AE264:  CMP             R2, #0xA
AE266:  BEQ.W           loc_AE73A
AE26A:  ADDS            R1, #1
AE26C:  STR.W           R1, [R10]
AE270:  CMP             R3, R1
AE272:  BNE             loc_AE260
AE274:  B               loc_AE73A
AE276:  MOV             R3, R1
AE278:  MOVS            R0, #0
AE27A:  STR             R3, [R5]
AE27C:  B               loc_AE73C
AE27E:  MOV             R6, R5
AE280:  LDR.W           R0, [R8]
AE284:  BIC.W           R1, R6, R6,ASR#31
AE288:  CMP             R1, R0
AE28A:  IT GT
AE28C:  MOVGT           R1, R0
AE28E:  STR.W           R1, [R10]
AE292:  B               loc_AE740
AE294:  MOV             R6, R8
AE296:  CMP             R6, R5
AE298:  IT GT
AE29A:  MOVGT           R6, R5
AE29C:  STR.W           R6, [R10]
AE2A0:  B               loc_AE740
AE2A2:  MOV             R0, R2
AE2A4:  MOV             R2, R1
AE2A6:  LDR.W           R1, [R8]
AE2AA:  CMP             R2, R0
AE2AC:  BEQ             loc_AE2B6
AE2AE:  CMP             R0, R1
AE2B0:  ITT GT
AE2B2:  STRGT           R1, [R6]
AE2B4:  MOVGT           R0, R1
AE2B6:  STR.W           R0, [R11]
AE2BA:  STR.W           R0, [R10]
AE2BE:  CMP             R0, R1
AE2C0:  IT GT
AE2C2:  STRGT.W         R1, [R10]
AE2C6:  B               loc_AE73A
AE2C8:  MOV             R0, R1
AE2CA:  MOV             R1, R2
AE2CC:  CMP             R1, R0
AE2CE:  BEQ             loc_AE2DC
AE2D0:  LDR.W           R1, [R8]
AE2D4:  CMP             R0, R1
AE2D6:  ITT GT
AE2D8:  STRGT           R1, [R6]
AE2DA:  MOVGT           R0, R1
AE2DC:  STR.W           R0, [R11]
AE2E0:  STR.W           R0, [R10]
AE2E4:  B               loc_AE73A
AE2E6:  MOV             R2, R1
AE2E8:  MOV             R1, R3
AE2EA:  CMP             R1, R2
AE2EC:  BEQ             loc_AE2FA
AE2EE:  LDR.W           R0, [R8]
AE2F2:  CMP             R2, R0
AE2F4:  ITT GT
AE2F6:  STRGT           R0, [R6]
AE2F8:  MOVGT           R2, R0
AE2FA:  MOVS            R0, #0
AE2FC:  STR.W           R2, [R11]
AE300:  STRB.W          R0, [R12]
AE304:  STR.W           R2, [R10]
AE308:  LDR.W           R0, [R8]
AE30C:  MOV             R10, R6
AE30E:  ADD             R6, SP, #0x48+var_38
AE310:  CMP             R2, R0
AE312:  ITTT GT
AE314:  LDRGT           R1, [SP,#0x48+var_3C]
AE316:  STRGT           R0, [R1]
AE318:  MOVGT           R2, R0
AE31A:  MOV             R0, R6
AE31C:  MOV             R1, R4
AE31E:  MOVS            R3, #0
AE320:  BL              sub_AED88
AE324:  LDR             R0, [SP,#0x48+var_28]
AE326:  CMP             R0, #0
AE328:  BEQ.W           loc_AE740
AE32C:  LDR             R1, =(off_114D5C - 0xAE33A)
AE32E:  MOVW            R3, #0x18C4
AE332:  LDR.W           R12, [R4,#0x14]
AE336:  ADD             R1, PC; off_114D5C
AE338:  LDRB.W          R5, [R4,#0x4B]
AE33C:  LDR             R1, [R1]; dword_1ACF68
AE33E:  CMP             R5, #0
AE340:  LDR             R1, [R1]
AE342:  LDR             R2, [R1,R3]
AE344:  ADD             R1, R3
AE346:  LDR             R3, [R4,#4]
AE348:  VLDR            S0, [R1,#4]
AE34C:  LDR             R1, [SP,#0x48+var_2C]
AE34E:  ADD.W           R8, R2, #0xC
AE352:  VLDR            S2, [R2,#0x10]
AE356:  ADD             R0, R1
AE358:  STR             R0, [R4,#0x3C]
AE35A:  VDIV.F32        S2, S0, S2
AE35E:  IT NE
AE360:  ADDNE.W         R6, R4, #0x50 ; 'P'
AE364:  ADD.W           LR, R12, R0,LSL#1
AE368:  ADD.W           R1, R12, R3,LSL#1
AE36C:  MOV             R5, LR
AE36E:  VLDR            S0, [R6]
AE372:  STR             R3, [SP,#0x48+var_40]
AE374:  CMP             R5, R1
AE376:  BCS             loc_AE380
AE378:  LDRH.W          R6, [R5],#2
AE37C:  CMP             R6, #0xA
AE37E:  BNE             loc_AE374
AE380:  SUB.W           R1, R5, LR
AE384:  CMP             R1, #1
AE386:  BLT             loc_AE3EA
AE388:  VMOV.F32        S6, #-1.0
AE38C:  MOVS            R5, #1
AE38E:  LSRS            R6, R1, #1
AE390:  CMP             R6, #1
AE392:  IT GT
AE394:  LSRGT           R5, R1, #1
AE396:  LDR.W           LR, [SP,#0x48+var_40]
AE39A:  VLDR            S4, =0.0
AE39E:  MOV             R6, R10
AE3A0:  LDRH.W          R1, [R12,R0,LSL#1]
AE3A4:  CMP             R1, #0xA
AE3A6:  BEQ.W           loc_AE4FC
AE3AA:  LDR             R6, [R2]
AE3AC:  LDR             R3, [R2,#8]
AE3AE:  CMP             R6, R1
AE3B0:  MOV             R6, R8
AE3B2:  IT GT
AE3B4:  ADDGT.W         R6, R3, R1,LSL#2
AE3B8:  VLDR            S8, [R6]
AE3BC:  VMUL.F32        S8, S2, S8
AE3C0:  VCMP.F32        S8, S6
AE3C4:  VMRS            APSR_nzcv, FPSCR
AE3C8:  BEQ.W           loc_AE4FA
AE3CC:  VADD.F32        S4, S4, S8
AE3D0:  MOV             R6, R10
AE3D2:  VCMP.F32        S4, S0
AE3D6:  VMRS            APSR_nzcv, FPSCR
AE3DA:  BGT.W           loc_AE4FC
AE3DE:  LDR             R1, [SP,#0x48+var_3C]
AE3E0:  ADDS            R0, #1
AE3E2:  SUBS            R5, #1
AE3E4:  STR             R0, [R1]
AE3E6:  BNE             loc_AE3A0
AE3E8:  B               loc_AE4FC
AE3EA:  MOV             R6, R10
AE3EC:  LDR.W           LR, [SP,#0x48+var_40]
AE3F0:  B               loc_AE4FC
AE3F2:  MOV             R12, R8
AE3F4:  LDR.W           R1, [R10]
AE3F8:  MOVS            R0, #0
AE3FA:  STRH            R0, [R6]
AE3FC:  SUBS            R0, R1, #1
AE3FE:  STR.W           R0, [R10]
AE402:  B               loc_AE73A
AE404:  MOV             R0, R4
AE406:  MOV             R1, R10
AE408:  BL              sub_AEBCE
AE40C:  LDR             R1, [R4,#0x3C]
AE40E:  ADD             R2, SP, #0x48+var_38
AE410:  MOV             R0, R4
AE412:  MOVS            R3, #1
AE414:  BL              sub_AEADC
AE418:  CMP             R0, #0
AE41A:  BEQ.W           loc_AE740
AE41E:  LDR             R1, [R4,#0x3C]
AE420:  ADD.W           R0, R4, #0x54 ; 'T'; dest
AE424:  MOVS            R2, #0
AE426:  MOVS            R3, #1
AE428:  BL              sub_AEFE0
AE42C:  LDR.W           R1, [R10]
AE430:  MOVS            R0, #0
AE432:  STRB.W          R0, [R9]
AE436:  ADDS            R0, R1, #1
AE438:  STR.W           R0, [R10]
AE43C:  B               loc_AE740
AE43E:  LDR.W           R0, [R4,#0xE5C]
AE442:  CMP             R6, R0
AE444:  BLE.W           loc_AE644
AE448:  UXTH            R2, R3
AE44A:  MOV.W           R11, #0x620
AE44E:  ADD.W           R3, R4, #0x60 ; '`'
AE452:  STR             R3, [SP,#0x48+var_40]
AE454:  B               loc_AE498
AE456:  ALIGN 4
AE458:  DCD off_114D5C - 0xAE0E0
AE45C:  DCFS 0.0
AE460:  DCD off_114D5C - 0xAE33A
AE464:  DCD __stack_chk_guard_ptr - 0xAD8F0
AE468:  ADD.W           R1, R4, R3,LSL#4
AE46C:  SUB.W           R2, R11, R3,LSL#4; n
AE470:  ADD.W           R0, R1, #0x64 ; 'd'; dest
AE474:  ADDS            R1, #0x54 ; 'T'; src
AE476:  BLX             j_memmove
AE47A:  LDRH.W          R2, [R4,#0xE54]
AE47E:  MOV             R12, R5
AE480:  LDR.W           R1, [R4,#0xE58]
AE484:  LDR.W           R0, [R4,#0xE5C]
AE488:  ADDS            R2, #1
AE48A:  STRH.W          R2, [R4,#0xE54]
AE48E:  ADD.W           R3, R1, R10
AE492:  CMP             R3, R0
AE494:  BLE.W           loc_AE640
AE498:  UXTH            R3, R2
AE49A:  CMP             R3, #0x63 ; 'c'
AE49C:  BEQ.W           loc_AE73A
AE4A0:  SXTH            R3, R2
AE4A2:  CMP             R3, #0x62 ; 'b'
AE4A4:  BGT             loc_AE48E
AE4A6:  LDR.W           R1, [R4,#0x680]
AE4AA:  MOV             R5, R12
AE4AC:  CMP.W           R1, #0xFFFFFFFF
AE4B0:  BLE             loc_AE468
AE4B2:  LDR.W           R6, [R4,#0x678]
AE4B6:  ADDW            R3, R4, #0x684
AE4BA:  ADD.W           R1, R3, R0,LSL#1; src
AE4BE:  ADDS            R2, R6, R0
AE4C0:  STR.W           R2, [R4,#0xE5C]
AE4C4:  ADD.W           R0, R3, R2,LSL#1; dest
AE4C8:  MOVW            R3, #0x7CE
AE4CC:  SUB.W           R2, R3, R2,LSL#1; n
AE4D0:  BLX             j_memmove
AE4D4:  LDRSH.W         R3, [R4,#0xE54]
AE4D8:  CMP             R3, #0x61 ; 'a'
AE4DA:  BGT             loc_AE468
AE4DC:  LDR             R0, [SP,#0x48+var_40]
AE4DE:  SUB.W           R1, R3, #0x62 ; 'b'
AE4E2:  ADD.W           R0, R0, R3,LSL#4
AE4E6:  LDR             R2, [R0]
AE4E8:  CMP             R2, #0
AE4EA:  ITT PL
AE4EC:  ADDPL           R2, R6
AE4EE:  STRPL           R2, [R0]
AE4F0:  ADDS            R1, #1
AE4F2:  ADD.W           R0, R0, #0x10
AE4F6:  BCC             loc_AE4E6
AE4F8:  B               loc_AE468
AE4FA:  MOV             R6, R10
AE4FC:  LDR             R3, [R6]
AE4FE:  LDR.W           R2, [R11]
AE502:  CMP             R2, R3
AE504:  BNE             loc_AE50A
AE506:  LDR             R1, [SP,#0x48+var_3C]
AE508:  B               loc_AE528
AE50A:  LDR             R1, [SP,#0x48+var_3C]
AE50C:  CMP             R2, LR
AE50E:  ITT GT
AE510:  STRGT.W         LR, [R11]
AE514:  MOVGT           R2, LR
AE516:  CMP             R3, LR
AE518:  ITT GT
AE51A:  STRGT.W         LR, [R6]
AE51E:  MOVGT           R3, LR
AE520:  CMP             R2, R3
AE522:  ITT EQ
AE524:  STREQ           R2, [R1]
AE526:  MOVEQ           R0, R2
AE528:  CMP             R0, LR
AE52A:  ITT GT
AE52C:  STRGT.W         LR, [R1]
AE530:  MOVGT           R0, LR
AE532:  MOVS            R1, #1
AE534:  VSTR            S0, [R4,#0x50]
AE538:  STRB.W          R1, [R4,#0x4B]
AE53C:  CMP.W           R9, #0
AE540:  IT NE
AE542:  STRNE           R0, [R6]
AE544:  B               loc_AE740
AE546:  MOV             R12, R8
AE548:  MOVS            R0, #0
AE54A:  STRH            R0, [R5]
AE54C:  B               loc_AE73A
AE54E:  CMP.W           R11, #1
AE552:  STR.W           R2, [R4,#0xE58]
AE556:  STR.W           LR, [R3]
AE55A:  BLT             loc_AE5B4
AE55C:  LDR             R1, [R4,#0x14]
AE55E:  CMP.W           R11, #8
AE562:  BCC             loc_AE58C
AE564:  ADD.W           R0, R11, R10
AE568:  ADD.W           R6, R4, LR,LSL#1
AE56C:  ADD.W           R3, R1, R10,LSL#1
AE570:  ADDW            R6, R6, #0x684
AE574:  ADD.W           R0, R1, R0,LSL#1
AE578:  CMP             R6, R0
AE57A:  BCS.W           loc_AE76C
AE57E:  ADD.W           R0, R4, R2,LSL#1
AE582:  ADDW            R0, R0, #0x684
AE586:  CMP             R0, R3
AE588:  BLS.W           loc_AE76C
AE58C:  MOV.W           R12, #0
AE590:  ADD.W           R0, R12, R10
AE594:  SUB.W           R3, R11, R12
AE598:  ADD.W           R1, R1, R0,LSL#1
AE59C:  ADD.W           R0, R12, LR
AE5A0:  ADD.W           R0, R4, R0,LSL#1
AE5A4:  ADDW            R0, R0, #0x684
AE5A8:  LDRH.W          R2, [R1],#2
AE5AC:  SUBS            R3, #1
AE5AE:  STRH.W          R2, [R0],#2
AE5B2:  BNE             loc_AE5A8
AE5B4:  LDR             R0, [R4,#0x14]
AE5B6:  ADD.W           R6, R0, R10,LSL#1
AE5BA:  ADD.W           R1, R6, R11,LSL#1
AE5BE:  MOV             R0, R6
AE5C0:  BL              sub_889DE
AE5C4:  LDR             R2, [R4,#0x14]
AE5C6:  LDRD.W          R3, R5, [R4,#4]
AE5CA:  SUBS            R0, R5, R0
AE5CC:  ADD.W           R1, R2, R10,LSL#1
AE5D0:  SUB.W           R3, R3, R11
AE5D4:  LDRH.W          R1, [R1,R11,LSL#1]
AE5D8:  STRD.W          R3, R0, [R4,#4]
AE5DC:  CBZ             R1, loc_AE5FA
AE5DE:  ADD.W           R0, R11, R10
AE5E2:  LDR.W           R12, [SP,#0x48+var_3C]
AE5E6:  ADD.W           R0, R2, R0,LSL#1
AE5EA:  ADDS            R0, #2
AE5EC:  STRH.W          R1, [R6],#2
AE5F0:  LDRH.W          R1, [R0],#2
AE5F4:  CMP             R1, #0
AE5F6:  BNE             loc_AE5EC
AE5F8:  B               loc_AE5FE
AE5FA:  LDR.W           R12, [SP,#0x48+var_3C]
AE5FE:  MOVS            R0, #0
AE600:  STRH            R0, [R6]
AE602:  CMP.W           R8, #0
AE606:  BEQ             loc_AE628
AE608:  ADD.W           R0, R4, R9,LSL#1
AE60C:  MOV             R1, R10
AE60E:  ADDW            R2, R0, #0x684
AE612:  MOV             R0, R4
AE614:  MOV             R3, R8
AE616:  MOV             R5, R12
AE618:  BL              sub_AEADC
AE61C:  LDR.W           R0, [R4,#0xE5C]
AE620:  MOV             R12, R5
AE622:  ADD             R0, R8
AE624:  STR.W           R0, [R4,#0xE5C]
AE628:  LDRH.W          R0, [R4,#0xE52]
AE62C:  ADD.W           R1, R8, R10
AE630:  STR             R1, [R4,#0x3C]
AE632:  LDRH.W          R1, [R4,#0xE54]
AE636:  ADDS            R0, #1
AE638:  STRH.W          R0, [R4,#0xE52]
AE63C:  ADDS            R0, R1, #1
AE63E:  B               loc_AE736
AE640:  SXTH            R1, R2
AE642:  SUBS            R2, R1, #1
AE644:  MOV             R11, R12
AE646:  ADD.W           R2, R4, R2,LSL#4
AE64A:  CMP.W           R10, #1
AE64E:  SUB.W           R1, R0, R10
AE652:  STR.W           R1, [R4,#0xE5C]
AE656:  STR             R1, [R2,#0x60]
AE658:  BLT             loc_AE6AA
AE65A:  LDR.W           R12, [R4,#0x14]
AE65E:  CMP.W           R10, #8
AE662:  BCC             loc_AE68A
AE664:  MOVW            R1, #0x684
AE668:  ADD.W           R3, R10, R9
AE66C:  ADD.W           R1, R1, R0,LSL#1
AE670:  ADD.W           R2, R12, R9,LSL#1
AE674:  SUB.W           R6, R1, R10,LSL#1
AE678:  ADD.W           R3, R12, R3,LSL#1
AE67C:  ADD             R6, R4
AE67E:  CMP             R6, R3
AE680:  BCS.W           loc_AE786
AE684:  ADD             R1, R4
AE686:  CMP             R1, R2
AE688:  BLS             loc_AE786
AE68A:  MOVS            R1, #0
AE68C:  SUB.W           R2, R1, R10
AE690:  ADD             R1, R9
AE692:  ADD.W           R0, R4, R0,LSL#1
AE696:  ADD.W           R1, R12, R1,LSL#1
AE69A:  ADDW            R0, R0, #0x684
AE69E:  LDRH.W          R3, [R1],#2
AE6A2:  STRH.W          R3, [R0,R2,LSL#1]
AE6A6:  ADDS            R2, #1
AE6A8:  BCC             loc_AE69E
AE6AA:  LDR             R0, [R4,#0x14]
AE6AC:  ADD.W           R6, R0, R9,LSL#1
AE6B0:  ADD.W           R1, R6, R10,LSL#1
AE6B4:  MOV             R0, R6
AE6B6:  BL              sub_889DE
AE6BA:  LDR             R2, [R4,#0x14]
AE6BC:  LDRD.W          R3, R5, [R4,#4]
AE6C0:  SUBS            R0, R5, R0
AE6C2:  ADD.W           R1, R2, R9,LSL#1
AE6C6:  SUB.W           R3, R3, R10
AE6CA:  LDRH.W          R1, [R1,R10,LSL#1]
AE6CE:  STRD.W          R3, R0, [R4,#4]
AE6D2:  CBZ             R1, loc_AE6F0
AE6D4:  ADD.W           R0, R10, R9
AE6D8:  LDR             R5, [SP,#0x48+var_3C]
AE6DA:  MOV             R12, R11
AE6DC:  ADD.W           R0, R2, R0,LSL#1
AE6E0:  ADDS            R0, #2
AE6E2:  STRH.W          R1, [R6],#2
AE6E6:  LDRH.W          R1, [R0],#2
AE6EA:  CMP             R1, #0
AE6EC:  BNE             loc_AE6E2
AE6EE:  B               loc_AE6F4
AE6F0:  MOV             R12, R11
AE6F2:  LDR             R5, [SP,#0x48+var_3C]
AE6F4:  MOVS            R0, #0
AE6F6:  STRH            R0, [R6]
AE6F8:  CMP.W           R8, #0
AE6FC:  BEQ             loc_AE720
AE6FE:  ADD.W           R0, R4, R5,LSL#1
AE702:  MOV             R1, R9
AE704:  ADDW            R2, R0, #0x684
AE708:  MOV             R0, R4
AE70A:  MOV             R3, R8
AE70C:  MOV             R5, R12
AE70E:  BL              sub_AEADC
AE712:  LDR.W           R0, [R4,#0xE58]
AE716:  MOV             R12, R5
AE718:  SUB.W           R0, R0, R8
AE71C:  STR.W           R0, [R4,#0xE58]
AE720:  LDRH.W          R0, [R4,#0xE52]
AE724:  ADD.W           R1, R8, R9
AE728:  STR             R1, [R4,#0x3C]
AE72A:  LDRH.W          R1, [R4,#0xE54]
AE72E:  SUBS            R0, #1
AE730:  STRH.W          R0, [R4,#0xE52]
AE734:  SUBS            R0, R1, #1
AE736:  STRH.W          R0, [R4,#0xE54]
AE73A:  MOVS            R0, #0
AE73C:  STRB.W          R0, [R12]
AE740:  MOV             R0, #0xBE99999A
AE748:  STR.W           R0, [R4,#0xE60]
AE74C:  MOVS            R0, #1
AE74E:  STRB.W          R0, [R4,#0xE64]
AE752:  LDR             R0, [SP,#0x48+var_20]
AE754:  LDR             R1, =(__stack_chk_guard_ptr - 0xAE75A)
AE756:  ADD             R1, PC; __stack_chk_guard_ptr
AE758:  LDR             R1, [R1]; __stack_chk_guard
AE75A:  LDR             R1, [R1]
AE75C:  CMP             R1, R0
AE75E:  ITTT EQ
AE760:  ADDEQ           SP, SP, #0x2C ; ','
AE762:  POPEQ.W         {R8-R11}
AE766:  POPEQ           {R4-R7,PC}
AE768:  BLX             __stack_chk_fail
AE76C:  BIC.W           R12, R11, #7
AE770:  MOV             R2, R12
AE772:  VLD1.16         {D16-D17}, [R3]!
AE776:  SUBS            R2, #8
AE778:  VST1.16         {D16-D17}, [R6]!
AE77C:  BNE             loc_AE772
AE77E:  CMP             R11, R12
AE780:  BEQ.W           loc_AE5B4
AE784:  B               loc_AE590
AE786:  LSLS            R1, R0, #1
AE788:  SUB.W           R1, R1, R10,LSL#1
AE78C:  ADD             R1, R4
AE78E:  ADDW            R6, R1, #0x684
AE792:  BIC.W           R1, R10, #7
AE796:  MOV             R3, R1
AE798:  VLD1.16         {D16-D17}, [R2]!
AE79C:  SUBS            R3, #8
AE79E:  VST1.16         {D16-D17}, [R6]!
AE7A2:  BNE             loc_AE798
AE7A4:  CMP             R10, R1
AE7A6:  BEQ.W           loc_AE6AA
AE7AA:  B               loc_AE68C
