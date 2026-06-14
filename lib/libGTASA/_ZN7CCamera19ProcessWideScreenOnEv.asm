; =========================================================
; Game Engine Function: _ZN7CCamera19ProcessWideScreenOnEv
; Address            : 0x3DE60C - 0x3DE652
; =========================================================

3DE60C:  LDRB.W          R1, [R0,#0x3A]
3DE610:  CBZ             R1, loc_3DE624
3DE612:  VLDR            S0, =0.0
3DE616:  MOVS            R1, #0
3DE618:  STRH            R1, [R0,#0x3A]
3DE61A:  VMOV.F32        S4, S0
3DE61E:  VMOV.F32        S2, S0
3DE622:  B               loc_3DE644
3DE624:  LDRB.W          R1, [R0,#0x57]
3DE628:  VMOV.F32        S2, #1.0
3DE62C:  VLDR            S4, =0.3
3DE630:  VMOV.F32        S0, #30.0
3DE634:  ADD.W           R1, R1, R1,LSL#5
3DE638:  ADD.W           R1, R0, R1,LSL#4
3DE63C:  VLDR            S6, [R1,#0x1FC]
3DE640:  VMUL.F32        S4, S6, S4
3DE644:  VSTR            S4, [R0,#0x130]
3DE648:  VSTR            S0, [R0,#0x140]
3DE64C:  VSTR            S2, [R0,#0x168]
3DE650:  BX              LR
