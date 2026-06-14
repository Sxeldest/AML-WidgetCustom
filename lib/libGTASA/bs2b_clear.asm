; =========================================================
; Game Engine Function: bs2b_clear
; Address            : 0x25FAAC - 0x25FAC8
; =========================================================

25FAAC:  VMOV.I32        Q8, #0
25FAB0:  ADD.W           R1, R0, #0x58 ; 'X'
25FAB4:  VST1.64         {D16-D17}, [R1]
25FAB8:  ADD.W           R1, R0, #0x48 ; 'H'
25FABC:  ADDS            R0, #0x38 ; '8'
25FABE:  VST1.64         {D16-D17}, [R1]
25FAC2:  VST1.64         {D16-D17}, [R0]
25FAC6:  BX              LR
