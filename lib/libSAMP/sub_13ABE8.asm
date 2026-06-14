; =========================================================
; Game Engine Function: sub_13ABE8
; Address            : 0x13ABE8 - 0x13AD32
; =========================================================

13ABE8:  PUSH            {R4-R7,LR}
13ABEA:  ADD             R7, SP, #0xC
13ABEC:  PUSH.W          {R8-R10}
13ABF0:  SUB             SP, SP, #0x28
13ABF2:  LDR             R0, [R0,#8]
13ABF4:  CMP             R0, #0
13ABF6:  BEQ.W           loc_13AD2A
13ABFA:  LDR             R0, [R0,#8]; lpsrc
13ABFC:  CMP             R0, #0
13ABFE:  BEQ.W           loc_13AD2A
13AC02:  LDR             R1, =(off_234BA8 - 0x13AC0C)
13AC04:  MOVS            R3, #0; s2d
13AC06:  LDR             R2, =(_ZTI6Dialog - 0x13AC0E); `typeinfo for'Dialog ...
13AC08:  ADD             R1, PC; off_234BA8
13AC0A:  ADD             R2, PC; lpdtype
13AC0C:  LDR             R1, [R1]; lpstype
13AC0E:  BLX             j___dynamic_cast
13AC12:  CMP             R0, #0
13AC14:  BEQ.W           loc_13AD2A
13AC18:  MOV             R4, R0
13AC1A:  LDR             R0, =(off_23496C - 0x13AC20)
13AC1C:  ADD             R0, PC; off_23496C
13AC1E:  LDR.W           R9, [R0]; dword_23DEF4
13AC22:  LDR.W           R0, [R9]
13AC26:  CMP             R0, #0
13AC28:  BEQ             loc_13AD24
13AC2A:  LDR             R0, [R4,#0x6C]
13AC2C:  CMP             R0, #0
13AC2E:  BEQ             loc_13AD24
13AC30:  LDR             R1, [R4,#0x78]
13AC32:  MOVS            R2, #0
13AC34:  STRD.W          R2, R2, [SP,#0x40+var_28]
13AC38:  CMP             R1, #5
13AC3A:  STR             R2, [SP,#0x40+var_20]
13AC3C:  BHI             loc_13AC9C
13AC3E:  MOVS            R2, #1
13AC40:  LSL.W           R1, R2, R1
13AC44:  TST.W           R1, #0x34
13AC48:  BEQ             loc_13AC9C
13AC4A:  BL              sub_139F80
13AC4E:  LDR.W           R3, [R4,#0x80]
13AC52:  MOVW            R6, #0xAAAB
13AC56:  LDRD.W          R2, R1, [R4,#0x78]
13AC5A:  MOVT            R6, #0xAAAA
13AC5E:  SUBS            R3, R3, R1
13AC60:  CMP             R2, #5
13AC62:  IT EQ
13AC64:  ADDEQ           R0, #1
13AC66:  ASRS            R3, R3, #2
13AC68:  MULS            R3, R6
13AC6A:  CMP             R0, R3
13AC6C:  BCS             loc_13ACA8
13AC6E:  ADD.W           R0, R0, R0,LSL#1
13AC72:  LDRB.W          R3, [R1,R0,LSL#2]
13AC76:  ADD.W           R0, R1, R0,LSL#2
13AC7A:  LDRD.W          R2, R1, [R0,#4]
13AC7E:  ANDS.W          R6, R3, #1
13AC82:  ITT EQ
13AC84:  ADDEQ           R1, R0, #1; int
13AC86:  LSREQ           R2, R3, #1; n
13AC88:  ADD             R0, SP, #0x40+var_38; int
13AC8A:  BL              sub_164DB4
13AC8E:  VLDR            D16, [SP,#0x40+var_38]
13AC92:  LDR             R0, [SP,#0x40+var_30]
13AC94:  STR             R0, [SP,#0x40+var_20]
13AC96:  VSTR            D16, [SP,#0x40+var_28]
13AC9A:  B               loc_13ACA8
13AC9C:  BL              sub_139EE8
13ACA0:  MOV             R1, R0
13ACA2:  ADD             R0, SP, #0x40+var_28
13ACA4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
13ACA8:  LDRB.W          R0, [R4,#0x53]
13ACAC:  CBZ             R0, loc_13ACE0
13ACAE:  LDRD.W          R5, R6, [SP,#0x40+var_28+4]
13ACB2:  LDRB.W          R10, [SP,#0x40+var_28]
13ACB6:  LDRH.W          R8, [R4,#0x74]
13ACBA:  LDR             R0, [R4,#0x6C]
13ACBC:  BL              sub_139F80
13ACC0:  ANDS.W          R1, R10, #1
13ACC4:  UXTH            R0, R0
13ACC6:  MOV             R1, R8
13ACC8:  STR             R0, [SP,#0x40+var_40]
13ACCA:  ADD             R0, SP, #0x40+var_28
13ACCC:  IT EQ
13ACCE:  MOVEQ.W         R5, R10,LSR#1
13ACD2:  IT EQ
13ACD4:  ADDEQ           R6, R0, #1
13ACD6:  MOV             R0, R4
13ACD8:  MOV             R2, R6
13ACDA:  MOV             R3, R5
13ACDC:  BL              sub_13A0DC
13ACE0:  LDRH.W          R8, [R4,#0x74]
13ACE4:  LDR.W           R6, [R9]
13ACE8:  LDR             R0, [R4,#0x6C]
13ACEA:  BL              sub_139F80
13ACEE:  LDRB.W          R2, [SP,#0x40+var_28]
13ACF2:  LDR             R1, [SP,#0x40+var_28+4]
13ACF4:  LDR             R3, [SP,#0x40+var_20]
13ACF6:  ANDS.W          R5, R2, #1
13ACFA:  IT EQ
13ACFC:  LSREQ           R1, R2, #1
13ACFE:  ADD             R2, SP, #0x40+var_28
13AD00:  CMP             R5, #0
13AD02:  IT EQ
13AD04:  ADDEQ           R3, R2, #1
13AD06:  STRD.W          R3, R1, [SP,#0x40+var_40]
13AD0A:  UXTH            R3, R0
13AD0C:  MOV             R0, R6
13AD0E:  MOV             R1, R8
13AD10:  MOVS            R2, #0
13AD12:  BL              sub_144284
13AD16:  LDRB.W          R0, [SP,#0x40+var_28]
13AD1A:  LSLS            R0, R0, #0x1F
13AD1C:  ITT NE
13AD1E:  LDRNE           R0, [SP,#0x40+var_20]; void *
13AD20:  BLXNE           j__ZdlPv; operator delete(void *)
13AD24:  MOV             R0, R4
13AD26:  BL              sub_13A584
13AD2A:  ADD             SP, SP, #0x28 ; '('
13AD2C:  POP.W           {R8-R10}
13AD30:  POP             {R4-R7,PC}
