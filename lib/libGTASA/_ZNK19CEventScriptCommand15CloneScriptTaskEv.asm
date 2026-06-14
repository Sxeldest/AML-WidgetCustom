; =========================================================
; Game Engine Function: _ZNK19CEventScriptCommand15CloneScriptTaskEv
; Address            : 0x376548 - 0x376558
; =========================================================

376548:  LDR             R0, [R0,#0x10]
37654A:  CMP             R0, #0
37654C:  ITT EQ
37654E:  MOVEQ           R0, #0
376550:  BXEQ            LR
376552:  LDR             R1, [R0]
376554:  LDR             R1, [R1,#8]
376556:  BX              R1
