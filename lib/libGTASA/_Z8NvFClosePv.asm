; =========================================================
; Game Engine Function: _Z8NvFClosePv
; Address            : 0x267238 - 0x26725A
; =========================================================

267238:  PUSH            {R4,R6,R7,LR}
26723A:  ADD             R7, SP, #8
26723C:  MOV             R4, R0
26723E:  LDRD.W          R1, R0, [R4]; asset
267242:  CMP             R1, #1
267244:  BNE             loc_26724C
267246:  BLX             fclose
26724A:  B               loc_267250
26724C:  BLX             AAsset_close
267250:  MOV             R0, R4; p
267252:  POP.W           {R4,R6,R7,LR}
267256:  B.W             j_free
