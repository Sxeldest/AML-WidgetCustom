; =========================================================
; Game Engine Function: sub_859BC
; Address            : 0x859BC - 0x85AD4
; =========================================================

859BC:  PUSH            {R4-R7,LR}
859BE:  ADD             R7, SP, #0xC
859C0:  PUSH.W          {R8,R9,R11}
859C4:  SUB             SP, SP, #0x48
859C6:  MOV             R4, R0
859C8:  LDR             R0, =(__stack_chk_guard_ptr - 0x859CE)
859CA:  ADD             R0, PC; __stack_chk_guard_ptr
859CC:  LDR             R0, [R0]; __stack_chk_guard
859CE:  LDR             R0, [R0]
859D0:  STR             R0, [SP,#0x60+var_1C]
859D2:  MOV             R0, R4
859D4:  BL              sub_84A98
859D8:  LDR             R0, =(off_114AD8 - 0x859DE)
859DA:  ADD             R0, PC; off_114AD8
859DC:  LDR             R0, [R0]; dword_1A4434
859DE:  LDR             R0, [R0]
859E0:  CMP             R0, #0
859E2:  ITTT NE
859E4:  LDRNE.W         R0, [R0,#0x3B0]
859E8:  LDRNE           R0, [R0]
859EA:  CMPNE           R0, #0
859EC:  BNE             loc_85A08
859EE:  LDR             R0, [SP,#0x60+var_1C]
859F0:  LDR             R1, =(__stack_chk_guard_ptr - 0x859F6)
859F2:  ADD             R1, PC; __stack_chk_guard_ptr
859F4:  LDR             R1, [R1]; __stack_chk_guard
859F6:  LDR             R1, [R1]
859F8:  CMP             R1, R0
859FA:  ITTT EQ
859FC:  ADDEQ           SP, SP, #0x48 ; 'H'
859FE:  POPEQ.W         {R8,R9,R11}
85A02:  POPEQ           {R4-R7,PC}
85A04:  BLX             __stack_chk_fail
85A08:  LDRH.W          R1, [R4,#0x5C]
85A0C:  CMP.W           R1, #0x3EC
85A10:  BHI             loc_859EE
85A12:  ADDS            R2, R0, R1
85A14:  LDRB.W          R2, [R2,#0xFB4]
85A18:  CMP             R2, #0
85A1A:  ITTT NE
85A1C:  ADDNE.W         R0, R0, R1,LSL#2
85A20:  LDRNE           R0, [R0,#4]
85A22:  CMPNE           R0, #0
85A24:  BEQ             loc_859EE
85A26:  LDR             R0, [R0]
85A28:  CMP             R0, #0
85A2A:  ITT NE
85A2C:  LDRNE.W         R0, [R0,#0x128]
85A30:  CMPNE           R0, #0
85A32:  BEQ             loc_859EE
85A34:  LDR             R0, [R0,#4]
85A36:  MOVS            R1, #0
85A38:  STR             R1, [SP,#0x60+var_54]
85A3A:  STR             R1, [SP,#0x60+var_44]
85A3C:  CMP             R0, #0
85A3E:  STRD.W          R1, R1, [SP,#0x60+var_5C]
85A42:  STR             R1, [SP,#0x60+var_34]
85A44:  STRD.W          R1, R1, [SP,#0x60+var_4C]
85A48:  STR             R1, [SP,#0x60+var_24]
85A4A:  STRD.W          R1, R1, [SP,#0x60+var_3C]
85A4E:  STRD.W          R1, R1, [SP,#0x60+var_2C]
85A52:  ITT NE
85A54:  LDRNE           R0, [R0,#0x14]
85A56:  CMPNE           R0, #0
85A58:  BEQ             loc_85A92
85A5A:  LDR             R1, [R0]
85A5C:  STR             R1, [SP,#0x60+var_5C]
85A5E:  LDR             R1, [R0,#0x24]
85A60:  LDR.W           LR, [R0,#8]
85A64:  LDR.W           R9, [R0,#0x14]
85A68:  LDR             R3, [R0,#0x20]
85A6A:  LDR.W           R12, [R0,#4]
85A6E:  LDR.W           R8, [R0,#0x10]
85A72:  LDR             R2, [R0,#0x18]
85A74:  LDR             R6, [R0,#0x28]
85A76:  LDR             R5, [R0,#0x30]
85A78:  STRD.W          R3, R1, [SP,#0x60+var_3C]
85A7C:  LDR             R1, [R0,#0x34]
85A7E:  LDR             R0, [R0,#0x38]
85A80:  STR             R5, [SP,#0x60+var_2C]
85A82:  STR             R6, [SP,#0x60+var_34]
85A84:  STR             R2, [SP,#0x60+var_44]
85A86:  STRD.W          R8, R9, [SP,#0x60+var_4C]
85A8A:  STRD.W          R12, LR, [SP,#0x60+var_58]
85A8E:  STR             R1, [SP,#0x60+var_28]
85A90:  STR             R0, [SP,#0x60+var_24]
85A92:  MOV             R0, R4
85A94:  BL              sub_85328
85A98:  LDRD.W          R5, R6, [R0]
85A9C:  CMP             R5, R6
85A9E:  BEQ             loc_859EE
85AA0:  ADD             R0, SP, #0x60+var_5C
85AA2:  ADD.W           R8, R0, #0x30 ; '0'
85AA6:  LDR             R0, =(off_114D50 - 0x85AAC)
85AA8:  ADD             R0, PC; off_114D50
85AAA:  LDR.W           R9, [R0]; off_1ABF60
85AAE:  B               loc_85AB6
85AB0:  ADDS            R5, #4
85AB2:  CMP             R5, R6
85AB4:  BEQ             loc_859EE
85AB6:  LDR             R0, [R5]
85AB8:  BL              sub_7DB4C
85ABC:  CMP             R0, #0
85ABE:  BEQ             loc_85AB0
85AC0:  LDR             R0, [R5]
85AC2:  LDR.W           R4, [R9]
85AC6:  BL              sub_7DB44
85ACA:  MOV             R1, R8
85ACC:  MOVS            R2, #0
85ACE:  MOVS            R3, #0
85AD0:  BLX             R4
85AD2:  B               loc_85AB0
