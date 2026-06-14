; =========================================================
; Game Engine Function: _ZN11CPlayerInfo12ArrestPlayerEv
; Address            : 0x40BEFC - 0x40BF2E
; =========================================================

40BEFC:  LDRB.W          R1, [R0,#0xDC]
40BF00:  CMP             R1, #0
40BF02:  IT NE
40BF04:  BXNE            LR
40BF06:  PUSH            {R7,LR}
40BF08:  MOV             R7, SP
40BF0A:  MOVS            R1, #0
40BF0C:  STRB.W          R1, [R0,#0x154]
40BF10:  MOVS            R1, #2
40BF12:  STRB.W          R1, [R0,#0xDC]
40BF16:  BLX             j__ZN7CDarkel18ResetOnPlayerDeathEv; CDarkel::ResetOnPlayerDeath(void)
40BF1A:  MOVS            R0, #(dword_84+1); this
40BF1C:  MOV.W           R1, #0x3F800000; unsigned __int16
40BF20:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
40BF24:  MOVS            R0, #0; this
40BF26:  POP.W           {R7,LR}
40BF2A:  B.W             sub_199168
