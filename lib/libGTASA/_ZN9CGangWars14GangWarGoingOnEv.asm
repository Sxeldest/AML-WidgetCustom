; =========================================================
; Game Engine Function: _ZN9CGangWars14GangWarGoingOnEv
; Address            : 0x30E2B8 - 0x30E2D0
; =========================================================

30E2B8:  LDR             R0, =(_ZN9CGangWars5StateE_ptr - 0x30E2C0)
30E2BA:  LDR             R1, =(_ZN9CGangWars6State2E_ptr - 0x30E2C2)
30E2BC:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30E2BE:  ADD             R1, PC; _ZN9CGangWars6State2E_ptr
30E2C0:  LDR             R0, [R0]; CGangWars::State ...
30E2C2:  LDR             R1, [R1]; CGangWars::State2 ...
30E2C4:  LDR             R0, [R0]; CGangWars::State
30E2C6:  LDR             R1, [R1]; CGangWars::State2
30E2C8:  ORRS            R0, R1
30E2CA:  IT NE
30E2CC:  MOVNE           R0, #1
30E2CE:  BX              LR
