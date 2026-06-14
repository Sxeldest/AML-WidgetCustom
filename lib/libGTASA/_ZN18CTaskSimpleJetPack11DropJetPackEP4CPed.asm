; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack11DropJetPackEP4CPed
; Address            : 0x531D54 - 0x531DC4
; =========================================================

531D54:  PUSH            {R4-R7,LR}
531D56:  ADD             R7, SP, #0xC
531D58:  PUSH.W          {R8}
531D5C:  SUB             SP, SP, #0x20
531D5E:  MOV             R4, R0
531D60:  MOV             R8, R1
531D62:  LDRB            R0, [R4,#8]
531D64:  CBNZ            R0, loc_531DA6
531D66:  LDR.W           R0, [R8,#0x14]
531D6A:  ADD             R3, SP, #0x30+var_1C; float
531D6C:  ADD.W           R12, R3, #8
531D70:  ADDS            R5, R3, #4
531D72:  ADD.W           R2, R0, #0x30 ; '0'
531D76:  CMP             R0, #0
531D78:  IT EQ
531D7A:  ADDEQ.W         R2, R8, #4
531D7E:  LDM             R2, {R0-R2}; float
531D80:  STRD.W          R5, R12, [SP,#0x30+var_30]; float *
531D84:  BLX             j__ZN8CPickups29CreatePickupCoorsCloseToCoorsEfffPfS0_S0_; CPickups::CreatePickupCoorsCloseToCoors(float,float,float,float *,float *,float *)
531D88:  ADD             R2, SP, #0x30+var_1C
531D8A:  MOVS            R3, #0
531D8C:  MOV.W           R12, #1
531D90:  MOVS            R5, #5
531D92:  LDM             R2, {R0-R2}
531D94:  STRD.W          R5, R3, [SP,#0x30+var_30]
531D98:  STRD.W          R3, R12, [SP,#0x30+var_28]
531D9C:  STR             R3, [SP,#0x30+var_20]
531D9E:  MOV.W           R3, #0x172
531DA2:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
531DA6:  LDR             R0, [R4]
531DA8:  MOV             R1, R8
531DAA:  MOVS            R2, #1
531DAC:  MOVS            R3, #0
531DAE:  MOVS            R6, #0
531DB0:  LDR             R5, [R0,#0x1C]
531DB2:  MOV             R0, R4
531DB4:  BLX             R5
531DB6:  STRH.W          R6, [R4,#0xD]
531DBA:  STR             R6, [R4,#0x10]
531DBC:  ADD             SP, SP, #0x20 ; ' '
531DBE:  POP.W           {R8}
531DC2:  POP             {R4-R7,PC}
