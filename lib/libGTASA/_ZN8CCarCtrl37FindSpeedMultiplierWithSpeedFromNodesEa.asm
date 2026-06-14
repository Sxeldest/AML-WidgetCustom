; =========================================================
; Game Engine Function: _ZN8CCarCtrl37FindSpeedMultiplierWithSpeedFromNodesEa
; Address            : 0x2EB410 - 0x2EB422
; =========================================================

2EB410:  ADDS            R0, #1
2EB412:  CMP             R0, #3
2EB414:  ITEE HI
2EB416:  MOVHI.W         R0, #0x3F800000
2EB41A:  ADRLS           R1, dword_2EB424
2EB41C:  LDRLS.W         R0, [R1,R0,LSL#2]
2EB420:  BX              LR
