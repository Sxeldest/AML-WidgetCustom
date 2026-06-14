; =========================================================
; Game Engine Function: _ZN10FxSystem_cC2Ev
; Address            : 0x36E058 - 0x36E088
; =========================================================

36E058:  PUSH            {R7,LR}
36E05A:  MOV             R7, SP
36E05C:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
36E060:  LDR             R1, =(_ZTV18CAEFireAudioEntity_ptr - 0x36E06C)
36E062:  MOVS            R3, #0
36E064:  LDRB.W          R2, [R0,#0x66]
36E068:  ADD             R1, PC; _ZTV18CAEFireAudioEntity_ptr
36E06A:  STR.W           R3, [R0,#0x104]
36E06E:  STR.W           R3, [R0,#0x90]
36E072:  AND.W           R2, R2, #0xDF
36E076:  LDR             R1, [R1]; `vtable for'CAEFireAudioEntity ...
36E078:  STR             R3, [R0,#0x78]
36E07A:  STR             R3, [R0,#8]
36E07C:  ADDS            R1, #8
36E07E:  STRB.W          R2, [R0,#0x66]
36E082:  STR.W           R1, [R0,#0x80]
36E086:  POP             {R7,PC}
