; =========================================================
; Game Engine Function: _ZN29CTaskComplexReactToGunAimedAt17CreateNextSubTaskEP4CPed
; Address            : 0x546E84 - 0x546F58
; =========================================================

546E84:  PUSH            {R4,R5,R7,LR}
546E86:  ADD             R7, SP, #8
546E88:  SUB             SP, SP, #0x10
546E8A:  MOV             R5, R0
546E8C:  MOV             R4, R1
546E8E:  LDR             R0, [R5,#8]
546E90:  LDR             R1, [R0]
546E92:  LDR             R1, [R1,#0x14]
546E94:  BLX             R1
546E96:  CMP.W           R0, #0x2C0
546E9A:  BLT             loc_546EDC
546E9C:  MOVW            R1, #0x38E
546EA0:  CMP             R0, R1
546EA2:  BGT             loc_546EF4
546EA4:  MOVW            R1, #0x386
546EA8:  CMP.W           R0, #0x2C0
546EAC:  BEQ             loc_546F4C
546EAE:  CMP             R0, R1
546EB0:  BNE             loc_546F3C
546EB2:  LDR.W           R0, [R4,#0x5A0]
546EB6:  LDRB.W          R1, [R0,#0x30]
546EBA:  MOVS            R0, #0
546EBC:  CMP.W           R0, R1,LSR#7
546EC0:  BNE             loc_546F42
546EC2:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
546EC6:  MOVS            R1, #0x72 ; 'r'; unsigned __int16
546EC8:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
546ECA:  MOV             R0, R4; this
546ECC:  MOVS            R2, #0; unsigned int
546ECE:  MOV.W           R3, #0x3F800000; float
546ED2:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
546ED6:  MOVW            R1, #0x19D
546EDA:  B               loc_546F4C
546EDC:  CMP             R0, #0xCA
546EDE:  BEQ             loc_546F08
546EE0:  CMP.W           R0, #0x19C
546EE4:  BEQ             loc_546F20
546EE6:  MOVW            R1, #0x19D
546EEA:  CMP             R0, R1
546EEC:  BNE             loc_546F3C
546EEE:  MOV.W           R1, #0x390
546EF2:  B               loc_546F4C
546EF4:  MOVW            R1, #0x38F
546EF8:  CMP             R0, R1
546EFA:  IT NE
546EFC:  CMPNE.W         R0, #0x390
546F00:  BNE             loc_546F3C
546F02:  MOVW            R1, #0x516
546F06:  B               loc_546F4C
546F08:  LDR.W           R0, [R4,#0x590]
546F0C:  CBZ             R0, loc_546F48
546F0E:  LDRB.W          R0, [R4,#0x485]
546F12:  MOV.W           R1, #0x2C0
546F16:  LSLS            R0, R0, #0x1F
546F18:  IT EQ
546F1A:  MOVWEQ          R1, #0x386
546F1E:  B               loc_546F4C
546F20:  MOVS            R0, #0
546F22:  MOVS            R1, #0x73 ; 's'; unsigned __int16
546F24:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
546F28:  MOVS            R2, #0; unsigned int
546F2A:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
546F2C:  MOV             R0, R4; this
546F2E:  MOV.W           R3, #0x3F800000; float
546F32:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
546F36:  MOVW            R1, #0x38F
546F3A:  B               loc_546F4C
546F3C:  MOVS            R0, #0
546F3E:  ADD             SP, SP, #0x10
546F40:  POP             {R4,R5,R7,PC}
546F42:  MOV.W           R1, #0x19C
546F46:  B               loc_546F4C
546F48:  MOVW            R1, #0x386; int
546F4C:  MOV             R0, R5; this
546F4E:  MOV             R2, R4; CPed *
546F50:  ADD             SP, SP, #0x10
546F52:  POP.W           {R4,R5,R7,LR}
546F56:  B               _ZN29CTaskComplexReactToGunAimedAt13CreateSubTaskEiP4CPed; CTaskComplexReactToGunAimedAt::CreateSubTask(int,CPed *)
