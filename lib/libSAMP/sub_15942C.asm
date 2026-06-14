; =========================================================
; Game Engine Function: sub_15942C
; Address            : 0x15942C - 0x15943E
; =========================================================

15942C:  LDR             R2, =(_ZTSZN4BASS22GetAllRecordingDevicesEvE3$_0 - 0x159436); type descriptor name
15942E:  LDR             R3, [R1,#4]
159430:  MOVS            R1, #0
159432:  ADD             R2, PC; type descriptor name
159434:  CMP             R3, R2
159436:  IT EQ
159438:  ADDEQ           R1, R0, #4
15943A:  MOV             R0, R1
15943C:  BX              LR
