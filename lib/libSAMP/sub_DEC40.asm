; =========================================================
; Game Engine Function: sub_DEC40
; Address            : 0xDEC40 - 0xDEDF8
; =========================================================

DEC40:  PUSH            {R4-R7,LR}
DEC42:  ADD             R7, SP, #0xC
DEC44:  PUSH.W          {R8-R11}
DEC48:  SUB.W           SP, SP, #0x21C
DEC4C:  LDRD.W          R12, R4, [R7,#arg_0]
DEC50:  MOV             R11, R0
DEC52:  LDRB            R0, [R4,#0xC]
DEC54:  MOV             R9, R3
DEC56:  MOV             R3, R2
DEC58:  MOV             R2, R1
DEC5A:  CBZ             R0, loc_DECC6
DEC5C:  LDR             R0, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xDEC6C); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
DEC5E:  MOV.W           R1, #0x1F4
DEC62:  MOV             R5, SP
DEC64:  ADD.W           R10, R5, #0x10
DEC68:  ADD             R0, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
DEC6A:  STR             R1, [SP,#0x238+var_22C]
DEC6C:  MOVS            R1, #0
DEC6E:  CMP.W           R12, #0
DEC72:  ADD.W           R0, R0, #8
DEC76:  STR.W           R10, [SP,#0x238+var_234]
DEC7A:  STR             R1, [SP,#0x238+var_230]
DEC7C:  STR             R0, [SP,#0x238+var_238]
DEC7E:  BEQ             loc_DED12
DEC80:  ADD             R0, SP, #0x238+var_30
DEC82:  SUB.W           LR, R3, R9
DEC86:  ADD             R0, R3
DEC88:  CMP.W           LR, #2
DEC8C:  ADD.W           R8, R0, #1
DEC90:  BLT             loc_DED20
DEC92:  MOVS            R0, #1
DEC94:  ADD.W           R4, R0, LR,LSR#1
DEC98:  LDR             R0, =(a00010203040506 - 0xDECA8); "000102030405060708091011121314151617181"... ...
DEC9A:  MOV             R6, #0x51EB851F
DECA2:  MOVS            R5, #0x64 ; 'd'
DECA4:  ADD             R0, PC; "000102030405060708091011121314151617181"...
DECA6:  MOV             R1, R8
DECA8:  UMULL.W         R3, R12, R2, R6
DECAC:  SUBS            R4, #1
DECAE:  CMP             R4, #1
DECB0:  MOV.W           R3, R12,LSR#5
DECB4:  MLS.W           R2, R3, R5, R2
DECB8:  LDRH.W          R2, [R0,R2,LSL#1]
DECBC:  STRH.W          R2, [R1,#-2]!
DECC0:  MOV             R2, R3
DECC2:  BHI             loc_DECA8
DECC4:  B               loc_DED24
DECC6:  CMP.W           R12, #0
DECCA:  BEQ             loc_DED96
DECCC:  MOV             R0, SP
DECCE:  SUB.W           LR, R3, R9
DECD2:  ADD             R0, R3
DECD4:  CMP.W           LR, #2
DECD8:  ADD.W           R8, R0, #1
DECDC:  BLT             loc_DEDA4
DECDE:  MOVS            R0, #1
DECE0:  ADD.W           R6, R0, LR,LSR#1
DECE4:  LDR             R0, =(a00010203040506 - 0xDECF4); "000102030405060708091011121314151617181"... ...
DECE6:  MOV             R10, #0x51EB851F
DECEE:  MOVS            R5, #0x64 ; 'd'
DECF0:  ADD             R0, PC; "000102030405060708091011121314151617181"...
DECF2:  MOV             R1, R8
DECF4:  UMULL.W         R3, R4, R2, R10
DECF8:  SUBS            R6, #1
DECFA:  CMP             R6, #1
DECFC:  MOV.W           R3, R4,LSR#5
DED00:  MLS.W           R2, R3, R5, R2
DED04:  LDRH.W          R2, [R0,R2,LSL#1]
DED08:  STRH.W          R2, [R1,#-2]!
DED0C:  MOV             R2, R3
DED0E:  BHI             loc_DECF4
DED10:  B               loc_DEDA8
DED12:  ADD             R0, SP, #0x238+var_24
DED14:  ADD             R1, SP, #0x238+var_30
DED16:  BL              sub_DCEB4
DED1A:  LDR.W           R8, [SP,#0x238+var_20]
DED1E:  B               loc_DED62
DED20:  MOV             R3, R2
DED22:  MOV             R1, R8
DED24:  LDR             R4, [R7,#arg_4]
DED26:  MOVS.W          R0, LR,LSL#31
DED2A:  BNE             loc_DED30
DED2C:  MOV             R2, R3
DED2E:  B               loc_DED4E
DED30:  MOV             R0, #0xCCCCCCCD
DED38:  UMULL.W         R0, R2, R3, R0
DED3C:  LSRS            R2, R2, #3
DED3E:  ADD.W           R0, R2, R2,LSL#2
DED42:  SUB.W           R0, R3, R0,LSL#1
DED46:  ORR.W           R0, R0, #0x30 ; '0'
DED4A:  STRB.W          R0, [R1,#-1]!
DED4E:  LDR             R0, [R7,#arg_0]
DED50:  MOV             R5, SP
DED52:  STRB.W          R0, [R1,#-1]!
DED56:  SUB.W           R1, R1, R9
DED5A:  ADD             R0, SP, #0x238+var_24
DED5C:  MOV             R3, R9
DED5E:  BL              sub_DCEB4
DED62:  ADD             R0, SP, #0x238+var_30
DED64:  MOV             R1, R8
DED66:  MOV             R2, R5
DED68:  BL              sub_DCF1C
DED6C:  LDR             R2, [SP,#0x238+var_234]
DED6E:  MOV             R0, R4
DED70:  MOV             R1, R11
DED72:  MOV             R3, R9
DED74:  BL              sub_DDA0C
DED78:  LDRD.W          R1, R2, [SP,#0x238+var_234]
DED7C:  ADD.W           R0, R1, R9
DED80:  ADD             R1, R2
DED82:  MOV             R2, R11
DED84:  BL              sub_DCF1C
DED88:  MOV             R4, R0
DED8A:  LDR             R0, [SP,#0x238+var_234]; void *
DED8C:  CMP             R0, R10
DED8E:  BEQ             loc_DEDEC
DED90:  BLX             j__ZdlPv; operator delete(void *)
DED94:  B               loc_DEDEC
DED96:  ADD             R0, SP, #0x238+var_30
DED98:  MOV             R1, SP
DED9A:  BL              sub_DCEB4
DED9E:  LDR.W           R8, [SP,#0x238+var_2C]
DEDA2:  B               loc_DEDE0
DEDA4:  MOV             R3, R2
DEDA6:  MOV             R1, R8
DEDA8:  MOVS.W          R0, LR,LSL#31
DEDAC:  BNE             loc_DEDB2
DEDAE:  MOV             R2, R3
DEDB0:  B               loc_DEDD0
DEDB2:  MOV             R0, #0xCCCCCCCD
DEDBA:  UMULL.W         R0, R2, R3, R0
DEDBE:  LSRS            R2, R2, #3
DEDC0:  ADD.W           R0, R2, R2,LSL#2
DEDC4:  SUB.W           R0, R3, R0,LSL#1
DEDC8:  ORR.W           R0, R0, #0x30 ; '0'
DEDCC:  STRB.W          R0, [R1,#-1]!
DEDD0:  STRB.W          R12, [R1,#-1]!
DEDD4:  ADD             R0, SP, #0x238+var_30
DEDD6:  SUB.W           R1, R1, R9
DEDDA:  MOV             R3, R9
DEDDC:  BL              sub_DCEB4
DEDE0:  MOV             R0, SP
DEDE2:  MOV             R1, R8
DEDE4:  MOV             R2, R11
DEDE6:  BL              sub_DCF1C
DEDEA:  MOV             R4, R0
DEDEC:  MOV             R0, R4
DEDEE:  ADD.W           SP, SP, #0x21C
DEDF2:  POP.W           {R8-R11}
DEDF6:  POP             {R4-R7,PC}
