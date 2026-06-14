; =========================================================
; Game Engine Function: _ZNK12CEventDanger15GetSourceEntityEv
; Address            : 0x378000 - 0x378026
; =========================================================

378000:  LDR             R1, [R0,#0x10]
378002:  CMP             R1, #0
378004:  ITT EQ
378006:  MOVEQ           R0, #0
378008:  BXEQ            LR
37800A:  LDRB.W          R0, [R1,#0x3A]
37800E:  AND.W           R0, R0, #7
378012:  CMP             R0, #2
378014:  ITT NE
378016:  MOVNE           R0, R1
378018:  BXNE            LR
37801A:  LDR.W           R0, [R1,#0x464]
37801E:  CMP             R0, #0
378020:  IT EQ
378022:  MOVEQ           R0, R1
378024:  BX              LR
