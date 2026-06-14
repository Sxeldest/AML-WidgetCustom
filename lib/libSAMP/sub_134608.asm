; =========================================================
; Game Engine Function: sub_134608
; Address            : 0x134608 - 0x13461A
; =========================================================

134608:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_2 - 0x134612); type descriptor name
13460A:  LDR             R3, [R1,#4]
13460C:  MOVS            R1, #0
13460E:  ADD             R2, PC; type descriptor name
134610:  CMP             R3, R2
134612:  IT EQ
134614:  ADDEQ           R1, R0, #4
134616:  MOV             R0, R1
134618:  BX              LR
