; =========================================================
; Game Engine Function: _Z7NvQuatXPff
; Address            : 0x279420 - 0x27944E
; =========================================================

279420:  PUSH            {R4,R5,R7,LR}
279422:  ADD             R7, SP, #8
279424:  VMOV.F32        S0, #0.5
279428:  MOV             R4, R0
27942A:  VMOV            S2, R1
27942E:  MOVS            R0, #0
279430:  STRD.W          R0, R0, [R4,#4]
279434:  VMUL.F32        S0, S2, S0
279438:  VMOV            R5, S0
27943C:  MOV             R0, R5; x
27943E:  BLX             sinf
279442:  STR             R0, [R4]
279444:  MOV             R0, R5; x
279446:  BLX             cosf
27944A:  STR             R0, [R4,#0xC]
27944C:  POP             {R4,R5,R7,PC}
