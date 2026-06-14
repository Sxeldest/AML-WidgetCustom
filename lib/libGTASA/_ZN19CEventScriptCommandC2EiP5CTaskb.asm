; =========================================================
; Game Engine Function: _ZN19CEventScriptCommandC2EiP5CTaskb
; Address            : 0x376414 - 0x37643A
; =========================================================

376414:  PUSH            {R7,LR}
376416:  MOV             R7, SP
376418:  LDR.W           R12, =(_ZTV19CEventScriptCommand_ptr - 0x376428)
37641C:  MOV.W           LR, #0
376420:  STRB.W          LR, [R0,#8]
376424:  ADD             R12, PC; _ZTV19CEventScriptCommand_ptr
376426:  STR.W           LR, [R0,#4]
37642A:  STRD.W          R1, R2, [R0,#0xC]
37642E:  LDR.W           R1, [R12]; `vtable for'CEventScriptCommand ...
376432:  STRB            R3, [R0,#0x14]
376434:  ADDS            R1, #8
376436:  STR             R1, [R0]
376438:  POP             {R7,PC}
