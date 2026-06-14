; =========================================================
; Game Engine Function: _ZN9CGangWars25DoesPlayerControlThisZoneEP9CZoneInfo
; Address            : 0x30E304 - 0x30E31A
; =========================================================

30E304:  LDRB            R1, [R0,#1]
30E306:  CBZ             R1, loc_30E316
30E308:  LDRB            R2, [R0]
30E30A:  LDRB            R0, [R0,#2]
30E30C:  ADD             R0, R2
30E30E:  CMP             R0, R1
30E310:  ITT LS
30E312:  MOVLS           R0, #1
30E314:  BXLS            LR
30E316:  MOVS            R0, #0
30E318:  BX              LR
