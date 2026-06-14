; =========================================================
; Game Engine Function: sub_16E404
; Address            : 0x16E404 - 0x16E482
; =========================================================

16E404:  PUSH            {R4,R5,R7,LR}
16E406:  ADD             R7, SP, #8
16E408:  LDR             R0, =(dword_381B58 - 0x16E418)
16E40A:  MOVW            R1, #0xFFFF
16E40E:  MOVS            R4, #0
16E410:  MOVT            R1, #0x7F7F
16E414:  ADD             R0, PC; dword_381B58
16E416:  VMOV.I32        Q8, #0
16E41A:  MOVS            R3, #0x14
16E41C:  LDR             R2, [R0]
16E41E:  MOVW            R0, #0x1D18
16E422:  ADDS            R5, R2, R0
16E424:  STRB            R4, [R2,R0]
16E426:  MOV.W           R0, #0xFFFFFFFF
16E42A:  STR             R0, [R5,#0x20]
16E42C:  STR             R0, [R5,#0x6C]
16E42E:  MOVW            R0, #0x1D28
16E432:  STRD.W          R4, R1, [R5,#0x5C]
16E436:  ADDS            R1, R2, R0
16E438:  VST1.32         {D16-D17}, [R1],R3
16E43C:  VST1.8          {D16-D17}, [R1]
16E440:  MOVW            R1, #0x1D4C
16E444:  ADD             R1, R2
16E446:  LDR             R0, [R5,#0x78]
16E448:  VST1.8          {D16-D17}, [R1]!
16E44C:  STRH.W          R4, [R5,#0x45]
16E450:  STRD.W          R4, R4, [R5,#0x64]
16E454:  STRB            R4, [R1]
16E456:  CBZ             R0, loc_16E47A
16E458:  LDR             R1, =(off_2390B0 - 0x16E460)
16E45A:  LDR             R3, =(dword_381B60 - 0x16E466)
16E45C:  ADD             R1, PC; off_2390B0
16E45E:  LDR.W           R12, [R2,#0x370]
16E462:  ADD             R3, PC; dword_381B60
16E464:  STRD.W          R4, R4, [R5,#0x70]
16E468:  LDR.W           LR, [R1]; j_opus_decoder_destroy_0
16E46C:  LDR             R1, [R3]
16E46E:  SUB.W           R3, R12, #1
16E472:  STR.W           R3, [R2,#0x370]
16E476:  BLX             LR; j_opus_decoder_destroy_0
16E478:  STR             R4, [R5,#0x78]
16E47A:  STR.W           R4, [R5,#0x80]
16E47E:  STR             R4, [R5,#0x7C]
16E480:  POP             {R4,R5,R7,PC}
