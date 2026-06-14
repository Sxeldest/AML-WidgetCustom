; =========================================================
; Game Engine Function: alDisable
; Address            : 0x25CEE4 - 0x25CF4C
; =========================================================

25CEE4:  PUSH            {R4,R5,R7,LR}
25CEE6:  ADD             R7, SP, #8
25CEE8:  MOV             R5, R0
25CEEA:  BLX             j_GetContextRef
25CEEE:  MOV             R4, R0
25CEF0:  CMP             R4, #0
25CEF2:  IT EQ
25CEF4:  POPEQ           {R4,R5,R7,PC}
25CEF6:  CMP.W           R5, #0x200
25CEFA:  BNE             loc_25CF08
25CEFC:  MOVS            R0, #0
25CEFE:  STRB.W          R0, [R4,#0x5C]
25CF02:  MOVS            R0, #1
25CF04:  STR             R0, [R4,#0x54]
25CF06:  B               loc_25CF42
25CF08:  LDR             R0, =(TrapALError_ptr - 0x25CF0E)
25CF0A:  ADD             R0, PC; TrapALError_ptr
25CF0C:  LDR             R0, [R0]; TrapALError
25CF0E:  LDRB            R0, [R0]
25CF10:  CMP             R0, #0
25CF12:  ITT NE
25CF14:  MOVNE           R0, #5; sig
25CF16:  BLXNE           raise
25CF1A:  LDREX.W         R0, [R4,#0x50]
25CF1E:  CBNZ            R0, loc_25CF3A
25CF20:  ADD.W           R0, R4, #0x50 ; 'P'
25CF24:  MOVW            R1, #0xA002
25CF28:  DMB.W           ISH
25CF2C:  STREX.W         R2, R1, [R0]
25CF30:  CBZ             R2, loc_25CF3E
25CF32:  LDREX.W         R2, [R0]
25CF36:  CMP             R2, #0
25CF38:  BEQ             loc_25CF2C
25CF3A:  CLREX.W
25CF3E:  DMB.W           ISH
25CF42:  MOV             R0, R4
25CF44:  POP.W           {R4,R5,R7,LR}
25CF48:  B.W             ALCcontext_DecRef
