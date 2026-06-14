; =========================================================
; Game Engine Function: sub_13AA14
; Address            : 0x13AA14 - 0x13AB5E
; =========================================================

13AA14:  PUSH            {R4-R7,LR}
13AA16:  ADD             R7, SP, #0xC
13AA18:  PUSH.W          {R8-R10}
13AA1C:  SUB             SP, SP, #0x28
13AA1E:  LDR             R0, [R0,#8]
13AA20:  CMP             R0, #0
13AA22:  BEQ.W           loc_13AB56
13AA26:  LDR             R0, [R0,#8]; lpsrc
13AA28:  CMP             R0, #0
13AA2A:  BEQ.W           loc_13AB56
13AA2E:  LDR             R1, =(off_234BA8 - 0x13AA38)
13AA30:  MOVS            R3, #0; s2d
13AA32:  LDR             R2, =(_ZTI6Dialog - 0x13AA3A); `typeinfo for'Dialog ...
13AA34:  ADD             R1, PC; off_234BA8
13AA36:  ADD             R2, PC; lpdtype
13AA38:  LDR             R1, [R1]; lpstype
13AA3A:  BLX             j___dynamic_cast
13AA3E:  CMP             R0, #0
13AA40:  BEQ.W           loc_13AB56
13AA44:  MOV             R4, R0
13AA46:  LDR             R0, =(off_23496C - 0x13AA4C)
13AA48:  ADD             R0, PC; off_23496C
13AA4A:  LDR.W           R9, [R0]; dword_23DEF4
13AA4E:  LDR.W           R0, [R9]
13AA52:  CMP             R0, #0
13AA54:  BEQ             loc_13AB50
13AA56:  LDR             R0, [R4,#0x6C]
13AA58:  CMP             R0, #0
13AA5A:  BEQ             loc_13AB50
13AA5C:  LDR             R1, [R4,#0x78]
13AA5E:  MOVS            R2, #0
13AA60:  STRD.W          R2, R2, [SP,#0x40+var_28]
13AA64:  CMP             R1, #5
13AA66:  STR             R2, [SP,#0x40+var_20]
13AA68:  BHI             loc_13AAC8
13AA6A:  MOVS            R2, #1
13AA6C:  LSL.W           R1, R2, R1
13AA70:  TST.W           R1, #0x34
13AA74:  BEQ             loc_13AAC8
13AA76:  BL              sub_139F80
13AA7A:  LDR.W           R3, [R4,#0x80]
13AA7E:  MOVW            R6, #0xAAAB
13AA82:  LDRD.W          R2, R1, [R4,#0x78]
13AA86:  MOVT            R6, #0xAAAA
13AA8A:  SUBS            R3, R3, R1
13AA8C:  CMP             R2, #5
13AA8E:  IT EQ
13AA90:  ADDEQ           R0, #1
13AA92:  ASRS            R3, R3, #2
13AA94:  MULS            R3, R6
13AA96:  CMP             R0, R3
13AA98:  BCS             loc_13AAD4
13AA9A:  ADD.W           R0, R0, R0,LSL#1
13AA9E:  LDRB.W          R3, [R1,R0,LSL#2]
13AAA2:  ADD.W           R0, R1, R0,LSL#2
13AAA6:  LDRD.W          R2, R1, [R0,#4]
13AAAA:  ANDS.W          R6, R3, #1
13AAAE:  ITT EQ
13AAB0:  ADDEQ           R1, R0, #1; int
13AAB2:  LSREQ           R2, R3, #1; n
13AAB4:  ADD             R0, SP, #0x40+var_38; int
13AAB6:  BL              sub_164DB4
13AABA:  VLDR            D16, [SP,#0x40+var_38]
13AABE:  LDR             R0, [SP,#0x40+var_30]
13AAC0:  STR             R0, [SP,#0x40+var_20]
13AAC2:  VSTR            D16, [SP,#0x40+var_28]
13AAC6:  B               loc_13AAD4
13AAC8:  BL              sub_139EE8
13AACC:  MOV             R1, R0
13AACE:  ADD             R0, SP, #0x40+var_28
13AAD0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
13AAD4:  LDRB.W          R0, [R4,#0x53]
13AAD8:  CBZ             R0, loc_13AB0C
13AADA:  LDRD.W          R5, R6, [SP,#0x40+var_28+4]
13AADE:  LDRB.W          R10, [SP,#0x40+var_28]
13AAE2:  LDRH.W          R8, [R4,#0x74]
13AAE6:  LDR             R0, [R4,#0x6C]
13AAE8:  BL              sub_139F80
13AAEC:  ANDS.W          R1, R10, #1
13AAF0:  UXTH            R0, R0
13AAF2:  MOV             R1, R8
13AAF4:  STR             R0, [SP,#0x40+var_40]
13AAF6:  ADD             R0, SP, #0x40+var_28
13AAF8:  IT EQ
13AAFA:  MOVEQ.W         R5, R10,LSR#1
13AAFE:  IT EQ
13AB00:  ADDEQ           R6, R0, #1
13AB02:  MOV             R0, R4
13AB04:  MOV             R2, R6
13AB06:  MOV             R3, R5
13AB08:  BL              sub_13A0DC
13AB0C:  LDRH.W          R8, [R4,#0x74]
13AB10:  LDR.W           R6, [R9]
13AB14:  LDR             R0, [R4,#0x6C]
13AB16:  BL              sub_139F80
13AB1A:  LDRB.W          R2, [SP,#0x40+var_28]
13AB1E:  LDR             R1, [SP,#0x40+var_28+4]
13AB20:  LDR             R3, [SP,#0x40+var_20]
13AB22:  ANDS.W          R5, R2, #1
13AB26:  IT EQ
13AB28:  LSREQ           R1, R2, #1
13AB2A:  ADD             R2, SP, #0x40+var_28
13AB2C:  CMP             R5, #0
13AB2E:  IT EQ
13AB30:  ADDEQ           R3, R2, #1
13AB32:  STRD.W          R3, R1, [SP,#0x40+var_40]
13AB36:  UXTH            R3, R0
13AB38:  MOV             R0, R6
13AB3A:  MOV             R1, R8
13AB3C:  MOVS            R2, #1
13AB3E:  BL              sub_144284
13AB42:  LDRB.W          R0, [SP,#0x40+var_28]
13AB46:  LSLS            R0, R0, #0x1F
13AB48:  ITT NE
13AB4A:  LDRNE           R0, [SP,#0x40+var_20]; void *
13AB4C:  BLXNE           j__ZdlPv; operator delete(void *)
13AB50:  MOV             R0, R4
13AB52:  BL              sub_13A584
13AB56:  ADD             SP, SP, #0x28 ; '('
13AB58:  POP.W           {R8-R10}
13AB5C:  POP             {R4-R7,PC}
