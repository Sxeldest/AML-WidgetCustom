; =========================================================
; Game Engine Function: sub_265054
; Address            : 0x265054 - 0x265096
; =========================================================

265054:  PUSH            {R4,R6,R7,LR}
265056:  ADD             R7, SP, #8
265058:  LDR             R0, =(TrapALError_ptr - 0x265060)
26505A:  MOV             R4, R1
26505C:  ADD             R0, PC; TrapALError_ptr
26505E:  LDR             R0, [R0]; TrapALError
265060:  LDRB            R0, [R0]
265062:  CMP             R0, #0
265064:  ITT NE
265066:  MOVNE           R0, #5; sig
265068:  BLXNE           raise
26506C:  LDREX.W         R0, [R4,#0x50]
265070:  CBNZ            R0, loc_26508C
265072:  ADD.W           R0, R4, #0x50 ; 'P'
265076:  MOVW            R1, #0xA002
26507A:  DMB.W           ISH
26507E:  STREX.W         R2, R1, [R0]
265082:  CBZ             R2, loc_265090
265084:  LDREX.W         R2, [R0]
265088:  CMP             R2, #0
26508A:  BEQ             loc_26507E
26508C:  CLREX.W
265090:  DMB.W           ISH
265094:  POP             {R4,R6,R7,PC}
