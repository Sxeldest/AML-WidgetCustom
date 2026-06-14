; =========================================================
; Game Engine Function: sub_21A3DC
; Address            : 0x21A3DC - 0x21A3FE
; =========================================================

21A3DC:  SUB.W           R1, R0, #0x30 ; '0'
21A3E0:  CMP             R1, #0xA
21A3E2:  ITT CS
21A3E4:  SUBCS.W         R1, R0, #0x61 ; 'a'
21A3E8:  CMPCS           R1, #6
21A3EA:  BCS             loc_21A3F0
21A3EC:  MOVS            R0, #1
21A3EE:  BX              LR
21A3F0:  SUB.W           R1, R0, #0x41 ; 'A'
21A3F4:  MOVS            R0, #0
21A3F6:  CMP             R1, #6
21A3F8:  IT CC
21A3FA:  MOVCC           R0, #1
21A3FC:  BX              LR
