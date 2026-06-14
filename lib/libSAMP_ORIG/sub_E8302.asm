; =========================================================
; Game Engine Function: sub_E8302
; Address            : 0xE8302 - 0xE8324
; =========================================================

E8302:  SUB.W           R1, R0, #0x30 ; '0'
E8306:  CMP             R1, #0xA
E8308:  ITT CS
E830A:  SUBCS.W         R1, R0, #0x61 ; 'a'
E830E:  CMPCS           R1, #6
E8310:  BCS             loc_E8316
E8312:  MOVS            R0, #1
E8314:  BX              LR
E8316:  SUB.W           R1, R0, #0x41 ; 'A'
E831A:  MOVS            R0, #0
E831C:  CMP             R1, #6
E831E:  IT CC
E8320:  MOVCC           R0, #1
E8322:  BX              LR
