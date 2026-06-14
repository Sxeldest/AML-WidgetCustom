; =========================================================
; Game Engine Function: sub_F851C
; Address            : 0xF851C - 0xF8542
; =========================================================

F851C:  LDR             R2, =(unk_245630 - 0xF8528)
F851E:  MOVS            R1, #0
F8520:  MOVW            R12, #0x714
F8524:  ADD             R2, PC; unk_245630
F8526:  ADD.W           R3, R2, R1,LSL#2
F852A:  LDR             R3, [R3,#4]
F852C:  CMP             R3, R0
F852E:  ITT EQ
F8530:  ADDEQ           R0, R1, #1
F8532:  BXEQ            LR
F8534:  ADDS            R1, #1
F8536:  CMP             R1, R12
F8538:  ITT EQ
F853A:  MOVEQ.W         R0, #0xFFFFFFFF
F853E:  BXEQ            LR
F8540:  B               loc_F8526
