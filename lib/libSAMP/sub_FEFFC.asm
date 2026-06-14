; =========================================================
; Game Engine Function: sub_FEFFC
; Address            : 0xFEFFC - 0xFF06A
; =========================================================

FEFFC:  PUSH            {R4-R7,LR}
FEFFE:  ADD             R7, SP, #0xC
FF000:  PUSH.W          {R11}
FF004:  MOV             R5, R0
FF006:  LDR             R0, =(byte_25B148 - 0xFF00E)
FF008:  MOV             R4, R1
FF00A:  ADD             R0, PC; byte_25B148
FF00C:  LDRB            R0, [R0]
FF00E:  DMB.W           ISH
FF012:  LDR             R6, =(off_25B144 - 0xFF018)
FF014:  ADD             R6, PC; off_25B144
FF016:  LSLS            R0, R0, #0x1F
FF018:  BEQ             loc_FF040
FF01A:  LDR             R1, [R6]
FF01C:  MOVS            R0, #0
FF01E:  BLX             R1
FF020:  CMP             R0, R4
FF022:  BEQ             loc_FF02C
FF024:  MOVS            R0, #0
FF026:  POP.W           {R11}
FF02A:  POP             {R4-R7,PC}
FF02C:  LDR             R0, =(off_25B140 - 0xFF034)
FF02E:  MOV             R1, R4
FF030:  ADD             R0, PC; off_25B140
FF032:  LDR             R2, [R0]
FF034:  MOV             R0, R5
FF036:  POP.W           {R11}
FF03A:  POP.W           {R4-R7,LR}
FF03E:  BX              R2
FF040:  LDR             R0, =(byte_25B148 - 0xFF046)
FF042:  ADD             R0, PC; byte_25B148 ; __guard *
FF044:  BLX             j___cxa_guard_acquire
FF048:  CMP             R0, #0
FF04A:  BEQ             loc_FF01A
FF04C:  LDR             R0, =(off_23494C - 0xFF05A)
FF04E:  MOV             R2, #0x40B289
FF056:  ADD             R0, PC; off_23494C
FF058:  LDR             R1, [R0]; dword_23DF24
FF05A:  LDR             R0, =(byte_25B148 - 0xFF062)
FF05C:  LDR             R1, [R1]
FF05E:  ADD             R0, PC; byte_25B148 ; __guard *
FF060:  ADD             R1, R2
FF062:  STR             R1, [R6]
FF064:  BLX             j___cxa_guard_release
FF068:  B               loc_FF01A
