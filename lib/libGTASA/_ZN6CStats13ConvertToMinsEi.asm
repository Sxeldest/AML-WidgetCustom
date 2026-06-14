; =========================================================
; Game Engine Function: _ZN6CStats13ConvertToMinsEi
; Address            : 0x419E8C - 0x419EB8
; =========================================================

419E8C:  CMP             R0, #0x3C ; '<'
419E8E:  ITT LT
419E90:  MOVLT           R0, #0
419E92:  BXLT            LR
419E94:  MVNS            R1, R0
419E96:  CMN.W           R1, #0x78 ; 'x'
419E9A:  IT LE
419E9C:  MOVLE           R1, #0xFFFFFF88
419EA0:  ADD             R0, R1
419EA2:  MOVW            R1, #0x8889
419EA6:  ADDS            R0, #0x3C ; '<'
419EA8:  MOVT            R1, #0x8888
419EAC:  UMULL.W         R0, R1, R0, R1
419EB0:  MOVS            R0, #1
419EB2:  ADD.W           R0, R0, R1,LSR#5
419EB6:  BX              LR
