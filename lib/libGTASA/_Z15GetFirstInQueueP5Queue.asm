; =========================================================
; Game Engine Function: _Z15GetFirstInQueueP5Queue
; Address            : 0x2C9C14 - 0x2C9C28
; =========================================================

2C9C14:  LDRD.W          R1, R2, [R0,#4]
2C9C18:  CMP             R1, R2
2C9C1A:  ITEE EQ
2C9C1C:  MOVEQ.W         R0, #0xFFFFFFFF
2C9C20:  LDRNE           R0, [R0]
2C9C22:  LDRNE.W         R0, [R0,R1,LSL#2]
2C9C26:  BX              LR
