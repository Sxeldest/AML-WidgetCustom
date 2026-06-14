; =========================================================
; Game Engine Function: _ZN16CStreamedScripts10InitialiseEv
; Address            : 0x33523C - 0x335266
; =========================================================

33523C:  MOVS            R1, #0
33523E:  MOVW            R12, #0xFFFF
335242:  MOVS            R3, #0
335244:  STR             R1, [R0,R3]
335246:  ADDS            R2, R0, R3
335248:  ADDS            R3, #0x20 ; ' '
33524A:  CMP.W           R3, #0xA40
33524E:  STRB            R1, [R2,#4]
335250:  STRH.W          R12, [R2,#6]
335254:  STRB            R1, [R2,#8]
335256:  STR             R1, [R2,#0x1C]
335258:  BNE             loc_335244
33525A:  MOVS            R1, #0
33525C:  STRH.W          R1, [R0,#0xA44]
335260:  STR.W           R1, [R0,#0xA40]
335264:  BX              LR
