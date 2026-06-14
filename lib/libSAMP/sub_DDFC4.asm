; =========================================================
; Game Engine Function: sub_DDFC4
; Address            : 0xDDFC4 - 0xDE076
; =========================================================

DDFC4:  PUSH            {R4,R5,R7,LR}
DDFC6:  ADD             R7, SP, #8
DDFC8:  SUB             SP, SP, #0x10
DDFCA:  MOV             R4, R0
DDFCC:  LDR             R0, [R0,#8]
DDFCE:  LDR             R2, [R4,#0xC]
DDFD0:  STRB.W          R1, [R7,#var_9]
DDFD4:  ADDS            R1, R0, #1
DDFD6:  CMP             R2, R1
DDFD8:  BCS             loc_DDFE6
DDFDA:  LDR             R0, [R4]
DDFDC:  LDR             R2, [R0]
DDFDE:  MOV             R0, R4
DDFE0:  BLX             R2
DDFE2:  LDR             R0, [R4,#8]
DDFE4:  ADDS            R1, R0, #1
DDFE6:  LDR             R2, [R4,#4]
DDFE8:  STR             R1, [R4,#8]
DDFEA:  MOVS            R1, #0x27 ; '''; unsigned int
DDFEC:  STRB            R1, [R2,R0]
DDFEE:  MOVS            R0, #1
DDFF0:  LDRB.W          R5, [R7,#var_9]
DDFF4:  CMP             R5, #0x20 ; ' '
DDFF6:  BCC             loc_DE00E
DDFF8:  CMP             R5, #0x22 ; '"'
DDFFA:  BEQ             loc_DE00E
DDFFC:  CMP             R5, #0x5C ; '\'
DDFFE:  IT NE
DE000:  CMPNE           R5, #0x7F
DE002:  BEQ             loc_DE00E
DE004:  MOV             R0, R5; this
DE006:  BLX             j__ZN3fmt2v86detail12is_printableEj; fmt::v8::detail::is_printable(uint)
DE00A:  EOR.W           R0, R0, #1
DE00E:  SUBS.W          R1, R5, #0x22 ; '"'
DE012:  IT NE
DE014:  MOVNE           R1, #1
DE016:  TST             R0, R1
DE018:  BNE             loc_DE03C
DE01A:  CMP             R5, #0x27 ; '''
DE01C:  BEQ             loc_DE03C
DE01E:  LDRD.W          R0, R2, [R4,#8]
DE022:  ADDS            R1, R0, #1
DE024:  CMP             R2, R1
DE026:  BCS             loc_DE034
DE028:  LDR             R0, [R4]
DE02A:  LDR             R2, [R0]
DE02C:  MOV             R0, R4
DE02E:  BLX             R2
DE030:  LDR             R0, [R4,#8]
DE032:  ADDS            R1, R0, #1
DE034:  LDR             R2, [R4,#4]
DE036:  STR             R1, [R4,#8]
DE038:  STRB            R5, [R2,R0]
DE03A:  B               loc_DE052
DE03C:  SUB.W           R0, R7, #-var_9
DE040:  STR             R5, [SP,#0x18+var_10]
DE042:  ADDS            R1, R0, #1
DE044:  STRD.W          R0, R1, [SP,#0x18+var_18]
DE048:  MOV             R1, SP
DE04A:  MOV             R0, R4; int
DE04C:  BL              sub_DE078
DE050:  MOV             R4, R0
DE052:  LDRD.W          R0, R2, [R4,#8]
DE056:  ADDS            R1, R0, #1
DE058:  CMP             R2, R1
DE05A:  BCS             loc_DE068
DE05C:  LDR             R0, [R4]
DE05E:  LDR             R2, [R0]
DE060:  MOV             R0, R4
DE062:  BLX             R2
DE064:  LDR             R0, [R4,#8]
DE066:  ADDS            R1, R0, #1
DE068:  LDR             R2, [R4,#4]
DE06A:  STR             R1, [R4,#8]
DE06C:  MOVS            R1, #0x27 ; '''
DE06E:  STRB            R1, [R2,R0]
DE070:  MOV             R0, R4
DE072:  ADD             SP, SP, #0x10
DE074:  POP             {R4,R5,R7,PC}
