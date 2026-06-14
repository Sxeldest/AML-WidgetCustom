; =========================================================
; Game Engine Function: _ZN13CEventHandlerC2EP4CPed
; Address            : 0x37B59C - 0x37B5BE
; =========================================================

37B59C:  STR             R1, [R0]
37B59E:  MOVS            R1, #0
37B5A0:  VMOV.I32        Q8, #0
37B5A4:  STR             R1, [R0,#0x30]
37B5A6:  ADD.W           R1, R0, #0xE
37B5AA:  VST1.16         {D16-D17}, [R1]
37B5AE:  ADD.W           R1, R0, #0x20 ; ' '
37B5B2:  VST1.32         {D16-D17}, [R1]
37B5B6:  ADDS            R1, R0, #4
37B5B8:  VST1.32         {D16-D17}, [R1]
37B5BC:  BX              LR
