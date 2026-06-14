; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes31FlushDecisionMakerEventResponseEii
; Address            : 0x4BE370 - 0x4BE3B4
; =========================================================

4BE370:  MOVW            R3, #0x99C
4BE374:  VMOV.I8         Q8, #0xFF
4BE378:  MLA.W           R1, R1, R3, R0
4BE37C:  ADD.W           R0, R0, R2,LSL#2
4BE380:  MOVW            R2, #0xC034
4BE384:  LDR             R0, [R0,R2]
4BE386:  ADR             R2, dword_4BE3C0
4BE388:  VLD1.64         {D18-D19}, [R2@128]
4BE38C:  RSB.W           R0, R0, R0,LSL#4
4BE390:  ADD.W           R0, R1, R0,LSL#2
4BE394:  MOVS            R1, #0
4BE396:  ADDS            R2, R0, #4
4BE398:  STRH            R1, [R0,#0x38]
4BE39A:  STR             R1, [R0,#0x24]
4BE39C:  STR             R1, [R0,#0x34]
4BE39E:  VST1.32         {D16-D17}, [R2]!
4BE3A2:  STR.W           R1, [R0,#0x3A]
4BE3A6:  STR             R1, [R0,#0x28]
4BE3A8:  STR             R1, [R0,#0x2C]
4BE3AA:  STR             R1, [R0,#0x30]
4BE3AC:  STRH            R1, [R0,#0x3E]
4BE3AE:  VST1.32         {D18-D19}, [R2]
4BE3B2:  BX              LR
