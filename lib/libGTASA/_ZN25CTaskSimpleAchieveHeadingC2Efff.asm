; =========================================================
; Game Engine Function: _ZN25CTaskSimpleAchieveHeadingC2Efff
; Address            : 0x51CFFC - 0x51D02C
; =========================================================

51CFFC:  PUSH            {R4-R7,LR}
51CFFE:  ADD             R7, SP, #0xC
51D000:  PUSH.W          {R11}
51D004:  MOV             R4, R3
51D006:  MOV             R5, R2
51D008:  MOV             R6, R1
51D00A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51D00E:  LDR             R1, =(_ZTV25CTaskSimpleAchieveHeading_ptr - 0x51D016)
51D010:  LDRB            R2, [R0,#0x14]
51D012:  ADD             R1, PC; _ZTV25CTaskSimpleAchieveHeading_ptr
51D014:  STRD.W          R6, R5, [R0,#8]
51D018:  STR             R4, [R0,#0x10]
51D01A:  AND.W           R2, R2, #0xFE
51D01E:  LDR             R1, [R1]; `vtable for'CTaskSimpleAchieveHeading ...
51D020:  STRB            R2, [R0,#0x14]
51D022:  ADDS            R1, #8
51D024:  STR             R1, [R0]
51D026:  POP.W           {R11}
51D02A:  POP             {R4-R7,PC}
