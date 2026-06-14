; =========================================================
; Game Engine Function: _ZN9CPedStats20FindIndexWithPedStatEPS_
; Address            : 0x4C3430 - 0x4C3452
; =========================================================

4C3430:  LDR             R1, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x4C3436)
4C3432:  ADD             R1, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
4C3434:  LDR             R1, [R1]; CPedStats::ms_apPedStats ...
4C3436:  LDR             R1, [R1]; CPedStats::ms_apPedStats
4C3438:  SUBS            R0, R0, R1
4C343A:  ADD.W           R1, R0, #0x34 ; '4'
4C343E:  MOV.W           R0, #0xFFFFFFFF
4C3442:  ADDS            R0, #1
4C3444:  SUBS            R1, #0x34 ; '4'
4C3446:  IT EQ
4C3448:  BXEQ            LR
4C344A:  CMP             R0, #0x2A ; '*'
4C344C:  BLT             loc_4C3442
4C344E:  MOVS            R0, #0
4C3450:  BX              LR
