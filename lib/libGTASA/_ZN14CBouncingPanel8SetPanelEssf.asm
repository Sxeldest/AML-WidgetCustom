; =========================================================
; Game Engine Function: _ZN14CBouncingPanel8SetPanelEssf
; Address            : 0x56F422 - 0x56F43A
; =========================================================

56F422:  STRH            R2, [R0,#2]
56F424:  VMOV.I32        Q8, #0
56F428:  STRH            R1, [R0]
56F42A:  MOVS            R1, #0
56F42C:  STR             R3, [R0,#4]
56F42E:  STRD.W          R1, R1, [R0,#0x18]
56F432:  ADDS            R0, #8
56F434:  VST1.32         {D16-D17}, [R0]
56F438:  BX              LR
