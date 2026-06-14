; =========================================================
; Game Engine Function: _ZN7CCamera35StartTransitionWhenNotFinishedInterEs
; Address            : 0x3DB0FC - 0x3DB104
; =========================================================

3DB0FC:  MOVS            R2, #1
3DB0FE:  STRB.W          R2, [R0,#0x4D]
3DB102:  B               _ZN7CCamera15StartTransitionEs; CCamera::StartTransition(short)
