; =========================================================
; Game Engine Function: _ZN10CStreaming13InitImageListEv
; Address            : 0x2CF610 - 0x2CF730
; =========================================================

2CF610:  PUSH            {R4-R7,LR}
2CF612:  ADD             R7, SP, #0xC
2CF614:  PUSH.W          {R11}
2CF618:  LDR             R1, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF622)
2CF61A:  MOVS            R6, #0
2CF61C:  LDR             R0, =(aTexdbGta3Img - 0x2CF624); "TEXDB\\GTA3.IMG"
2CF61E:  ADD             R1, PC; _ZN10CStreaming8ms_filesE_ptr
2CF620:  ADD             R0, PC; "TEXDB\\GTA3.IMG"
2CF622:  LDR             R5, [R1]; CStreaming::ms_files ...
2CF624:  ADDS            R1, R0, #7
2CF626:  VLDR            D17, [R0]
2CF62A:  VLD1.8          {D16}, [R1]
2CF62E:  ADDS            R1, R5, #7
2CF630:  STRB.W          R6, [R5,#(byte_792DA8 - 0x792D78)]
2CF634:  STR             R6, [R5,#(dword_792DA4 - 0x792D78)]
2CF636:  STR             R6, [R5,#(dword_792DD4 - 0x792D78)]
2CF638:  STR.W           R6, [R5,#(dword_792E04 - 0x792D78)]
2CF63C:  STRB.W          R6, [R5,#(byte_792DD8 - 0x792D78)]
2CF640:  STR.W           R6, [R5,#(dword_792E34 - 0x792D78)]
2CF644:  STRB.W          R6, [R5,#(byte_792E08 - 0x792D78)]
2CF648:  STR.W           R6, [R5,#(dword_792E64 - 0x792D78)]
2CF64C:  STRB.W          R6, [R5,#(byte_792E38 - 0x792D78)]
2CF650:  STR.W           R6, [R5,#(dword_792E94 - 0x792D78)]
2CF654:  STRB.W          R6, [R5,#(byte_792E68 - 0x792D78)]
2CF658:  STR.W           R6, [R5,#(dword_792EC4 - 0x792D78)]
2CF65C:  STRB.W          R6, [R5,#(byte_792E98 - 0x792D78)]
2CF660:  STR.W           R6, [R5,#(dword_792EF4 - 0x792D78)]
2CF664:  STRB.W          R6, [R5,#(byte_792EC8 - 0x792D78)]
2CF668:  VSTR            D17, [R5]
2CF66C:  VST1.8          {D16}, [R1]
2CF670:  MOVS            R1, #0; bool
2CF672:  BLX             j__Z12CdStreamOpenPKcb; CdStreamOpen(char const*,bool)
2CF676:  LDR             R1, =(dword_792F78 - 0x2CF682)
2CF678:  MOVS            R4, #1
2CF67A:  STR             R0, [R5,#(dword_792DA4 - 0x792D78)]
2CF67C:  LDRB            R0, [R5]; CStreaming::ms_files
2CF67E:  ADD             R1, PC; dword_792F78
2CF680:  STRB.W          R4, [R5,#(byte_792DA0 - 0x792D78)]
2CF684:  CMP             R0, #0
2CF686:  STR             R6, [R1]
2CF688:  BEQ             loc_2CF700
2CF68A:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF690)
2CF68C:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF68E:  LDR             R5, [R0]; CStreaming::ms_files ...
2CF690:  LDRB.W          R0, [R5,#(byte_792DA8 - 0x792D78)]!
2CF694:  CBZ             R0, loc_2CF6E6
2CF696:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF69C)
2CF698:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF69A:  LDR             R5, [R0]; CStreaming::ms_files ...
2CF69C:  LDRB.W          R0, [R5,#(byte_792DD8 - 0x792D78)]!
2CF6A0:  CBZ             R0, loc_2CF6EA
2CF6A2:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF6A8)
2CF6A4:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF6A6:  LDR             R5, [R0]; CStreaming::ms_files ...
2CF6A8:  LDRB.W          R0, [R5,#(byte_792E08 - 0x792D78)]!
2CF6AC:  CBZ             R0, loc_2CF6EE
2CF6AE:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF6B4)
2CF6B0:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF6B2:  LDR             R5, [R0]; CStreaming::ms_files ...
2CF6B4:  LDRB.W          R0, [R5,#(byte_792E38 - 0x792D78)]!
2CF6B8:  CBZ             R0, loc_2CF6F2
2CF6BA:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF6C0)
2CF6BC:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF6BE:  LDR             R5, [R0]; CStreaming::ms_files ...
2CF6C0:  LDRB.W          R0, [R5,#(byte_792E68 - 0x792D78)]!
2CF6C4:  CBZ             R0, loc_2CF6F6
2CF6C6:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF6CC)
2CF6C8:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF6CA:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF6CC:  LDRB.W          R1, [R0,#(byte_792E98 - 0x792D78)]
2CF6D0:  CBZ             R1, loc_2CF6FA
2CF6D2:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF6D8)
2CF6D4:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
2CF6D6:  LDR             R0, [R0]; CStreaming::ms_files ...
2CF6D8:  LDRB.W          R1, [R0,#(byte_792EC8 - 0x792D78)]
2CF6DC:  CBNZ            R1, loc_2CF72A
2CF6DE:  ADD.W           R5, R0, #0x150
2CF6E2:  MOVS            R6, #7
2CF6E4:  B               loc_2CF700
2CF6E6:  MOVS            R6, #1
2CF6E8:  B               loc_2CF700
2CF6EA:  MOVS            R6, #2
2CF6EC:  B               loc_2CF700
2CF6EE:  MOVS            R6, #3
2CF6F0:  B               loc_2CF700
2CF6F2:  MOVS            R6, #4
2CF6F4:  B               loc_2CF700
2CF6F6:  MOVS            R6, #5
2CF6F8:  B               loc_2CF700
2CF6FA:  ADD.W           R5, R0, #0x120
2CF6FE:  MOVS            R6, #6
2CF700:  LDR             R0, =(aTexdbGtaIntImg - 0x2CF708); "TEXDB\\GTA_INT.IMG"
2CF702:  MOVS            R1, #0x47 ; 'G'
2CF704:  ADD             R0, PC; "TEXDB\\GTA_INT.IMG"
2CF706:  VLD1.64         {D16-D17}, [R0]
2CF70A:  VST1.8          {D16-D17}, [R5]!
2CF70E:  STRH            R1, [R5]
2CF710:  MOVS            R1, #0; bool
2CF712:  BLX             j__Z12CdStreamOpenPKcb; CdStreamOpen(char const*,bool)
2CF716:  LDR             R1, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF720)
2CF718:  ADD.W           R2, R6, R6,LSL#1
2CF71C:  ADD             R1, PC; _ZN10CStreaming8ms_filesE_ptr
2CF71E:  LDR             R1, [R1]; CStreaming::ms_files ...
2CF720:  ADD.W           R1, R1, R2,LSL#4
2CF724:  STR             R0, [R1,#0x2C]
2CF726:  STRB.W          R4, [R1,#0x28]
2CF72A:  POP.W           {R11}
2CF72E:  POP             {R4-R7,PC}
